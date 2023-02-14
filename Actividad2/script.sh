#!/bin/bash
# sudo apt install jq
# chmod +x nombre_del_archivo.sh

# Leer la variable
github_user="javskrow"

# Hacer la consulta a la API de GitHub y guardar la respuesta en una variable
response=$(curl -s https://api.github.com/users/$github_user)

# Extraer los valores necesarios del JSON usando jq y guardarlos en variables
id=$(echo $response | jq -r '.id')
created_at=$(echo $response | jq -r '.created_at')

# Imprimir el mensaje con los valores extraídos
echo "Hola $github_user. User ID: $id. Cuenta fue creada el: $created_at."

# Obtener la fecha actual en el formato deseado (YYYY-MM-DD)
fecha=$(date +%Y-%m-%d)

# Crear el directorio de registro si aún no existe
if [ ! -d "/tmp/$fecha" ]; then
    mkdir "/tmp/$fecha"
fi

# Crear el archivo de registro con el mensaje anterior
echo "Hola $github_user. User ID: $id. Cuenta fue creada el: $created_at." >> "/tmp/$fecha/saludos.log"