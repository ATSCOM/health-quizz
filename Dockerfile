# Dockerfile para desarrollo de Laravel 8 con PHP 8.2
FROM php:8.2-fpm

# Argumentos de build
ARG user=laravel
ARG uid=1000

# Instalar dependencias del sistema
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libzip-dev \
    zip \
    unzip \
    default-mysql-client \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Instalar extensiones PHP
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd zip

# Instalar Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Crear usuario del sistema para ejecutar comandos de Composer y Artisan
RUN useradd -G www-data,root -u $uid -d /home/$user $user
RUN mkdir -p /home/$user/.composer && \
    chown -R $user:$user /home/$user

# Configurar directorio de trabajo
WORKDIR /var/www/html

# Para desarrollo, los archivos se montan via volumen, no se copian
# Establecer permisos base (los archivos reales vendrán del volumen)
RUN mkdir -p /var/www/html/storage /var/www/html/bootstrap/cache

# Cambiar al usuario no root
USER $user

# Exponer puerto
EXPOSE 8000

# Comando por defecto para desarrollo con hot reload
CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=8000"]
