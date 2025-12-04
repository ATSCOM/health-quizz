# Uceva Health Quizz 🏥

<p align="left"><img src="https://www.uceva.edu.co/wp-content/uploads/2021/05/imagotipo-uceva.png" width="400"></p>

## Descripción 📋

Sistema de cuestionarios médicos desarrollado para el área de salud de la Universidad de Uceva. Permite a los administradores crear cuestionarios con preguntas y respuestas organizados por categorías (Fisiología, Anatomía, etc.) para que los estudiantes puedan practicar y evaluar sus conocimientos.

**Tecnologías utilizadas:**
- Laravel 8 (PHP 8.2)
- MySQL 8.0
- AdminLTE (Panel de administración)
- Docker & Docker Compose

## Requisitos Previos 🔧

Solo necesitas tener instalado:

- [Docker](https://docs.docker.com/get-docker/) (v20.10+)
- [Docker Compose](https://docs.docker.com/compose/install/) (v2.0+)

> ⚠️ **No necesitas instalar PHP, Composer ni MySQL localmente.** Todo se ejecuta dentro de contenedores Docker.

## Instalación 🚀

### 1. Clonar el repositorio

```bash
git clone https://github.com/ATSCOM/health-quizz.git
cd health-quizz
```

### 2. Ejecutar el script de configuración

```bash
chmod +x docker_dev_setup.sh
./docker_dev_setup.sh
```

El script automáticamente:
- ✅ Verifica que Docker esté instalado
- ✅ Crea el archivo `.env` con credenciales aleatorias
- ✅ Configura `config/personal.php` con las credenciales de la DB
- ✅ Construye la imagen Docker
- ✅ Inicia los contenedores (App, MySQL, phpMyAdmin)
- ✅ Instala las dependencias de Composer
- ✅ Genera la APP_KEY de Laravel
- ✅ Ejecuta las migraciones de base de datos
- ✅ Carga los datos iniciales (seeders)
- ✅ Limpia la caché

### 3. ¡Listo! 🎉

Una vez completado el script, la aplicación estará disponible en:

| Servicio | URL | Descripción |
|----------|-----|-------------|
| **Aplicación** | http://localhost:8005 | Panel principal |
| **phpMyAdmin** | http://localhost:8006 | Gestión de base de datos |
| **MySQL** | `localhost:33061` | Conexión externa a la DB |

## Comandos Útiles 🛠️

### Gestión de contenedores

```bash
# Ver estado de los contenedores
docker compose ps

# Ver logs en tiempo real
docker compose logs -f app

# Detener todos los contenedores
docker compose down

# Reiniciar contenedores
docker compose restart
```

### Comandos de Laravel (desde Docker)

```bash
# Ejecutar comandos artisan
docker compose exec app php artisan [comando]

# Ejemplos:
docker compose exec app php artisan migrate        # Ejecutar migraciones
docker compose exec app php artisan db:seed        # Ejecutar seeders
docker compose exec app php artisan cache:clear    # Limpiar caché
docker compose exec app php artisan config:clear   # Limpiar config cache
docker compose exec app php artisan tinker         # Consola interactiva
```

### Comandos de Composer (desde Docker)

```bash
# Instalar dependencias
docker compose exec app composer install

# Actualizar dependencias
docker compose exec app composer update

# Agregar un paquete
docker compose exec app composer require [paquete]
```

### Iniciar servidor de desarrollo manualmente

```bash
docker compose exec -d app php artisan serve --host=0.0.0.0 --port=8000
```

## Estructura del Proyecto 📁

```
health-quizz/
├── app/
│   ├── Helpers/           # Helpers personalizados
│   ├── Http/Controllers/  # Controladores
│   ├── Models/            # Modelos Eloquent
│   └── Providers/         # Service Providers
├── config/
│   ├── adminlte.php       # Configuración del panel AdminLTE
│   └── personal.php       # Credenciales de BD (legacy)
├── database/
│   ├── migrations/        # Migraciones de BD
│   └── seeders/
│       └── Document.sql   # Datos iniciales
├── docker/
│   ├── php/local.ini      # Configuración PHP
│   ├── mysql/my.cnf       # Configuración MySQL
│   └── entrypoint.sh      # Script de entrada del contenedor
├── resources/views/       # Vistas Blade
├── routes/web.php         # Rutas de la aplicación
├── docker-compose.yml     # Orquestación de servicios
├── Dockerfile             # Imagen Docker de la app
└── docker_dev_setup.sh    # Script de configuración
```

## Base de Datos 🗄️

### Tablas principales

| Tabla | Descripción |
|-------|-------------|
| `categories` | Categorías de cuestionarios (Fisiología, Anatomía) |
| `quizzes` | Cuestionarios agrupados por categoría |
| `questions` | Preguntas de cada cuestionario |
| `answers` | Respuestas posibles para cada pregunta |
| `users` | Usuarios del sistema |

### Datos iniciales

El sistema incluye datos de ejemplo:
- 2 Categorías
- 6 Cuestionarios
- 69 Preguntas
- 301 Respuestas

## Solución de Problemas 🔍

### El contenedor no inicia

```bash
# Verificar logs
docker compose logs app

# Reconstruir imagen
docker compose build --no-cache app
docker compose up -d
```

### Error de permisos en storage/

```bash
docker compose exec app chmod -R 775 storage bootstrap/cache
docker compose exec app chown -R laravel:laravel storage bootstrap/cache
```

### Reiniciar desde cero

```bash
# Eliminar todo (contenedores, volúmenes, imágenes)
docker compose down -v --rmi all

# Volver a ejecutar el setup
./docker_dev_setup.sh
```

### La base de datos no tiene datos

```bash
# Ejecutar el SQL de datos manualmente
docker compose exec -T mysql mysql -u[usuario] -p[password] [database] < database/seeders/Document.sql
```

## Desarrollo 💻

El proyecto está configurado con **hot-reload** para desarrollo. Los cambios en los archivos PHP se reflejan automáticamente sin necesidad de reiniciar el contenedor.

### Archivos importantes para modificar:

- `routes/web.php` - Definir nuevas rutas
- `app/Http/Controllers/` - Lógica de controladores
- `resources/views/` - Vistas Blade
- `app/Models/` - Modelos de Eloquentre un Pull Request

## Licencia 📄

Este proyecto fue desarrollado para la Universidad de Uceva - Área de Salud.

---

**Repositorio:** [https://github.com/ATSCOM/health-quizz](https://github.com/ATSCOM/health-quizz)
