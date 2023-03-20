> Wilson Kevin Javier Chávez Cabrera
> 201807428

# **Actividad 4**

1. Crear el script que imprime el saludo:

    ~~~bash
    #!/bin/bash
    echo "Hola, que tal?. La fecha de hoy es: $(date)"
    ~~~

2. Otorgar permisos de ejecución al script:

    ~~~bash
    chmod +x saludar.sh
    ~~~

3. Crear el archivo de configuración del servicio:

    ~~~service
    [Unit]
    Description=Saludar y mostrar fecha
    [Service]
    Type=simple
    ExecStart= saludo.sh
    [Install]
    WantedBy=multi-user.target
    ~~~

4. Copiar el archivo de configuración en la ruta correspondiente para que el sistema reconozca el servicio:

    ~~~bash
    sudo cp saludar.service /etc/systemd/system/
    ~~~

5. Actualizar el sistema de unidades:

    ~~~
    sudo systemctl daemon-reload
    ~~~

6. Iniciar el servicio:

    ~~~
    sudo systemctl start saludar
    ~~~

7. Reviar el estado:

    ~~~
    sudo systemctl status saludar
    ~~~

8. Detener el servicio:

    ~~~
    sudo systemctl stop saludar
    ~~~
