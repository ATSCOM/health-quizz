#!/bin/bash
set -e

# Asegurar permisos de storage y cache
if [ -d "/var/www/html/storage" ]; then
    chmod -R 775 /var/www/html/storage 2>/dev/null || true
fi

if [ -d "/var/www/html/bootstrap/cache" ]; then
    chmod -R 775 /var/www/html/bootstrap/cache 2>/dev/null || true
fi

# Ejecutar el comando pasado
exec "$@"

