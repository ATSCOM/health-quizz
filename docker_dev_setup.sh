#!/bin/bash

#######################################
# Health Quizz - Script de Setup para Desarrollo con Docker
# Este script configura el entorno de desarrollo local
# No requiere PHP, Composer ni Laravel instalados localmente
#######################################

set -e

# Colores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Funciones de utilidad
print_header() {
    echo -e "\n${BLUE}========================================${NC}"
    echo -e "${BLUE}$1${NC}"
    echo -e "${BLUE}========================================${NC}\n"
}

print_success() {
    echo -e "${GREEN}✓ $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠ $1${NC}"
}

print_error() {
    echo -e "${RED}✗ $1${NC}"
}

# Generar contraseña aleatoria
generate_password() {
    openssl rand -base64 16 | tr -dc 'a-zA-Z0-9' | head -c 16
}

# Verificar que Docker esté instalado y corriendo
check_docker() {
    print_header "Verificando Docker"
    
    if ! command -v docker &> /dev/null; then
        print_error "Docker no está instalado. Por favor instálalo primero."
        exit 1
    fi
    
    if ! docker info &> /dev/null; then
        print_error "Docker no está corriendo. Por favor inícialo primero."
        exit 1
    fi
    
    if ! command -v docker-compose &> /dev/null && ! docker compose version &> /dev/null; then
        print_error "Docker Compose no está instalado. Por favor instálalo primero."
        exit 1
    fi
    
    print_success "Docker está instalado y corriendo"
}

# Configurar archivo .env
setup_env() {
    print_header "Configurando archivo .env"
    
    if [ -f .env ]; then
        print_success "El archivo .env ya existe, manteniéndolo sin cambios"
        
        # Verificar que tenga DB_PASSWORD
        if ! grep -q "DB_PASSWORD" .env; then
            DB_PASSWORD=$(generate_password)
            echo "" >> .env
            echo "# Docker MySQL Root Password" >> .env
            echo "DB_PASSWORD=${DB_PASSWORD}" >> .env
            print_warning "Se agregó DB_PASSWORD al .env existente"
        fi
        return
    fi
    
    # Buscar archivo de ejemplo (puede ser .env.example o env.example)
    if [ -f .env.example ]; then
        cp .env.example .env
    elif [ -f env.example ]; then
        cp env.example .env
    else
        # Crear .env básico si no existe ejemplo
        print_warning "No se encontró archivo de ejemplo, creando .env básico"
        cat > .env << 'ENVEOF'
APP_NAME=HealthQuizz
APP_ENV=local
APP_KEY=
APP_DEBUG=true
APP_URL=http://localhost:8005

LOG_CHANNEL=stack
LOG_LEVEL=debug

DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=health_quizz
DB_USERNAME=health_user
DB_PASSWORD=

BROADCAST_DRIVER=log
CACHE_DRIVER=file
FILESYSTEM_DRIVER=local
QUEUE_CONNECTION=sync
SESSION_DRIVER=file
SESSION_LIFETIME=120
ENVEOF
    fi
    
    # Generar contraseñas aleatorias
    DB_PASSWORD=$(generate_password)
    
    # Actualizar valores en .env
    if [[ "$OSTYPE" == "darwin"* ]]; then
        # macOS
        sed -i '' "s/DB_PASSWORD=.*/DB_PASSWORD=${DB_PASSWORD}/" .env
        sed -i '' "s/DB_HOST=.*/DB_HOST=mysql/" .env
        sed -i '' "s/DB_DATABASE=.*/DB_DATABASE=health_quizz/" .env
        sed -i '' "s/DB_USERNAME=.*/DB_USERNAME=health_user/" .env
    else
        # Linux
        sed -i "s/DB_PASSWORD=.*/DB_PASSWORD=${DB_PASSWORD}/" .env
        sed -i "s/DB_HOST=.*/DB_HOST=mysql/" .env
        sed -i "s/DB_DATABASE=.*/DB_DATABASE=health_quizz/" .env
        sed -i "s/DB_USERNAME=.*/DB_USERNAME=health_user/" .env
    fi
    
    # Agregar DB_PASSWORD al .env si no existe
    if ! grep -q "DB_PASSWORD" .env; then
        echo "" >> .env
        echo "# Docker MySQL Root Password" >> .env
        echo "DB_PASSWORD=${DB_PASSWORD}" >> .env
    else
        if [[ "$OSTYPE" == "darwin"* ]]; then
            sed -i '' "s/DB_PASSWORD=.*/DB_PASSWORD=${DB_PASSWORD}/" .env
        else
            sed -i "s/DB_PASSWORD=.*/DB_PASSWORD=${DB_PASSWORD}/" .env
        fi
    fi
    
    print_success "Archivo .env configurado"
    echo -e "${YELLOW}Credenciales de base de datos generadas:${NC}"
    echo -e "  DB_PASSWORD: ${DB_PASSWORD}"
}

# Configurar config/personal.php
setup_personal_config() {
    print_header "Configurando config/personal.php"
    
    if [ -f config/personal.php ]; then
        print_warning "config/personal.php ya existe"
    fi
    
    # Crear config/personal.php con valores del .env
    cat > config/personal.php << 'EOF'
<?php
## INFO DB - Ahora usando variables de entorno de Laravel
$DB_USER = env('DB_USERNAME', 'health_user');
$DB_PASSWORD = env('DB_PASSWORD', '');
$DB_NAME = env('DB_DATABASE', 'health_quizz');

## INFO URI - Para Docker
$HOST = env('DB_HOST', 'mysql');
EOF
    
    print_success "config/personal.php configurado"
}

# Limpiar contenedores anteriores
cleanup_docker() {
    print_header "Limpiando contenedores anteriores"
    
    if docker compose version &> /dev/null; then
        docker compose down --remove-orphans 2>/dev/null || true
    else
        docker-compose down --remove-orphans 2>/dev/null || true
    fi
    
    # Eliminar imágenes anteriores del proyecto si existen
    docker rmi health-quizz-app 2>/dev/null || true
    docker rmi health-quizz_app 2>/dev/null || true
    
    print_success "Limpieza completada"
}

# Construir imagen Docker
build_docker() {
    print_header "Construyendo imagen Docker"
    
    # Usar docker compose (nuevo) o docker-compose (legacy)
    if docker compose version &> /dev/null; then
        docker compose build
    else
        docker-compose build
    fi
    
    print_success "Imagen Docker construida"
}

# Iniciar contenedores
start_containers() {
    print_header "Iniciando contenedores"
    
    if docker compose version &> /dev/null; then
        docker compose up -d
    else
        docker-compose up -d
    fi
    
    print_success "Contenedores iniciados"
    
    # Esperar a que MySQL esté listo
    echo -e "${YELLOW}Esperando a que MySQL esté listo...${NC}"
    sleep 5
    
    local max_attempts=30
    local attempt=1
    
    while [ $attempt -le $max_attempts ]; do
        if docker compose exec -T mysql mysqladmin ping -h localhost -u $(grep DB_USERNAME .env | cut -d '=' -f2) -p"$(grep DB_PASSWORD .env | cut -d '=' -f2)" &> /dev/null 2>&1; then
            print_success "MySQL está listo"
            break
        fi
        echo -e "${YELLOW}Intento $attempt de $max_attempts - Esperando MySQL...${NC}"
        sleep 2
        attempt=$((attempt + 1))
    done
    
    if [ $attempt -gt $max_attempts ]; then
        print_error "MySQL no respondió a tiempo"
        exit 1
    fi
}

# Instalar dependencias de Composer (desde el contenedor)
install_dependencies() {
    print_header "Instalando dependencias de Composer (desde Docker)"
    
    # Verificar si existe vendor
    if [ -d "vendor" ]; then
        print_warning "La carpeta vendor ya existe"
        read -p "¿Deseas reinstalar las dependencias? (y/N): " reinstall
        if [[ ! "$reinstall" =~ ^[Yy]$ ]]; then
            print_warning "Manteniendo dependencias existentes"
            return
        fi
        rm -rf vendor
    fi
    
    # Eliminar composer.lock para permitir actualizar dependencias a versiones compatibles
    if [ -f "composer.lock" ]; then
        print_warning "Eliminando composer.lock para regenerar con versiones compatibles..."
        rm -f composer.lock
    fi
    
    echo -e "${YELLOW}Ejecutando composer install desde el contenedor...${NC}"
    echo -e "${YELLOW}Esto puede tardar unos minutos...${NC}"
    
    if docker compose version &> /dev/null; then
        docker compose exec -T app composer install --no-interaction --prefer-dist --optimize-autoloader
    else
        docker-compose exec -T app composer install --no-interaction --prefer-dist --optimize-autoloader
    fi
    
    print_success "Dependencias instaladas"
}

# Generar key de Laravel (desde el contenedor)
generate_key() {
    print_header "Generando APP_KEY de Laravel"
    
    if docker compose version &> /dev/null; then
        docker compose exec -T app php artisan key:generate
    else
        docker-compose exec -T app php artisan key:generate
    fi
    
    print_success "APP_KEY generada"
}

# Ejecutar migraciones (desde el contenedor)
run_migrations() {
    print_header "Ejecutando migraciones"
    
    if docker compose version &> /dev/null; then
        docker compose exec -T app php artisan migrate --force
    else
        docker-compose exec -T app php artisan migrate --force
    fi
    
    print_success "Migraciones ejecutadas"
}

# Ejecutar seeders (desde el contenedor)
run_seeders() {
    print_header "Ejecutando seeders"
    
    if docker compose version &> /dev/null; then
        docker compose exec -T app php artisan db:seed --force
    else
        docker-compose exec -T app php artisan db:seed --force
    fi
    
    print_success "Seeders ejecutados"
}

# Limpiar cache (desde el contenedor)
clear_cache() {
    print_header "Limpiando cache de Laravel"
    
    if docker compose version &> /dev/null; then
        docker compose exec -T app php artisan config:clear
        docker compose exec -T app php artisan cache:clear
        docker compose exec -T app php artisan view:clear
    else
        docker-compose exec -T app php artisan config:clear
        docker-compose exec -T app php artisan cache:clear
        docker-compose exec -T app php artisan view:clear
    fi
    
    print_success "Cache limpiada"
}

# Iniciar servidor de desarrollo
start_dev_server() {
    print_header "Iniciando servidor de desarrollo"
    
    echo -e "${YELLOW}Iniciando php artisan serve en segundo plano...${NC}"
    
    if docker compose version &> /dev/null; then
        # Detener cualquier servidor anterior y reiniciar el contenedor con el servidor
        docker compose exec -T -d app php artisan serve --host=0.0.0.0 --port=8000
    else
        docker-compose exec -T -d app php artisan serve --host=0.0.0.0 --port=8000
    fi
    
    # Esperar un momento para que el servidor inicie
    sleep 3
    
    print_success "Servidor de desarrollo iniciado"
}

# Mostrar información final
show_info() {
    print_header "¡Setup completado!"
    
    echo -e "${GREEN}Tu entorno de desarrollo está listo.${NC}\n"
    echo -e "${BLUE}URLs disponibles:${NC}"
    echo -e "  • Aplicación Laravel: ${GREEN}http://localhost:8005${NC}"
    echo -e "  • phpMyAdmin:         ${GREEN}http://localhost:8006${NC}"
    echo -e "  • MySQL (externo):    ${GREEN}localhost:33061${NC}"
    echo ""
    echo -e "${BLUE}Comandos útiles:${NC}"
    echo -e "  • Ver logs:           ${YELLOW}docker compose logs -f app${NC}"
    echo -e "  • Detener:            ${YELLOW}docker compose down${NC}"
    echo -e "  • Reiniciar:          ${YELLOW}docker compose restart${NC}"
    echo -e "  • Artisan:            ${YELLOW}docker compose exec app php artisan [comando]${NC}"
    echo -e "  • Composer:           ${YELLOW}docker compose exec app composer [comando]${NC}"
    echo -e "  • Iniciar servidor:   ${YELLOW}docker compose exec -d app php artisan serve --host=0.0.0.0 --port=8000${NC}"
    echo ""
    echo -e "${YELLOW}Nota: Los archivos se sincronizan automáticamente (hot reload).${NC}"
    echo -e "${YELLOW}Solo guarda tus cambios y recarga el navegador.${NC}"
}

# Función principal
main() {
    print_header "Health Quizz - Setup de Desarrollo"
    
    echo -e "Este script configurará tu entorno de desarrollo Docker."
    echo -e "${YELLOW}No requiere PHP, Composer ni Laravel instalados localmente.${NC}\n"
    
    check_docker
    setup_env
    setup_personal_config
    cleanup_docker
    build_docker
    start_containers
    install_dependencies
    generate_key
    run_migrations
    run_seeders
    clear_cache
    start_dev_server
    show_info
}

# Ejecutar script
main "$@"
