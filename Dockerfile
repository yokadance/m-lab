FROM nginx:alpine

# Crear el directorio de archivos estáticos
RUN mkdir -p /usr/share/nginx/html

# Copiar el archivo de configuración personalizado de Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Copiar los archivos del sitio al directorio correcto
COPY site/ /usr/share/nginx/html/

# Exponer el puerto
EXPOSE 8080

# Comando de inicio de Nginx
CMD ["nginx", "-g", "daemon off;"]
