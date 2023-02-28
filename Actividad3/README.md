> Wilson Kevin Javier Chávez Cabrera
> 201807428

## **Problema**
En un intento de construir una imagen de Docker para mi aplicación de React, me encontré con un problema al tratar de hacerla funcionar con Nginx. Me di cuenta de que no tenía un archivo nginx.conf y no sabía cómo configurar el servidor de Nginx para servir mi aplicación de React. Como resultado, no pude levantar mi aplicación en un contenedor de Docker de manera correcta.

## **Solución**
Después de hacer algunas investigaciones, aprendí que necesitaba un archivo de configuración de Nginx para servir mi aplicación de React. Este archivo nginx.conf debía incluir algunas directivas específicas para Nginx, como listen, server_name y root. También descubrí que tenía que copiar el archivo nginx.conf en el contenedor de Docker y exponer el puerto 80 para que Nginx pudiera recibir solicitudes HTTP.

~~~conf
server {
  listen 80;
  server_name localhost;
  root /usr/share/nginx/html;

  location / {
    try_files $uri /index.html;
  }
}
~~~

Después de crear el archivo nginx.conf y agregar las directivas necesarias, modifiqué el Dockerfile para copiar el archivo de configuración de Nginx en el contenedor y exponer el puerto 80. Con esta información, pude construir mi imagen de Docker y levantar mi aplicación de React en un contenedor con Nginx.

~~~dockerfile
# Copiamos la configuración de Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Iniciamos el servidor de Nginx
CMD ["nginx", "-g", "daemon off;"]
~~~
