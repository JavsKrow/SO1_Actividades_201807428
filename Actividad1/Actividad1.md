# ACTIVIDAD 1

## **TIPOS DE KERNEL Y SUS DIFERENCIAS**

### 1. Kernel Monolítico
Un kernel grande para todas las tareas. Es el único responsable de la gestión de la memoria y de los procesos, de la comunicación entre procesos y proporciona funciones de soporte de drivers y hardware. Los sistemas operativos que usan el kernel monolítico son Linux, OS X y Windows.
___

### 2. Microkernel
El microkernel se ha diseñado intencionadamente de un tamaño pequeño para que en caso de fallo no paralice todo el sistema operativo. No obstante, para que pueda asumir las mismas funciones que un kernel grande, está dividido en varios módulos. Como ejemplo de aplicación solo existe el componente Mach de OS X, ya que hasta ahora no hay ningún sistema operativo con microkernel.
___
### 3. Kernel híbrido
La combinación del kernel monolítico y el microkernel se denomina kernel híbrido. En este caso, el kernel grande se hace más compacto y modulable. Otras partes del kernel pueden cargarse dinámicamente. Esto ya ocurre en cierta medida en Linux y OS X.


## **USER MODE VS KERNEL MODE**

| CRITERIOS | MODO KERNEL | MODO USUARIO |
| ------ | ------ | ------ |
| Modo kernel vs modo usuario | En el modo kernel, el programa tiene acceso directo y sin restricciones a los recursos del sistema. |En modo usuario, el programa de aplicación se ejecuta y se inicia. |
| Interrupciones | En el modo Kernel, todo el sistema operativo podría dejar de funcionar si se produce una interrupción. | En el modo de usuario, un solo proceso falla si se produce una interrupción. |
| Modos | El modo kernel también se conoce como modo maestro, modo privilegiado o modo de sistema. | El modo de usuario también se conoce como modo sin privilegios, modo restringido o modo esclavo. |
| Espacio de direcciones virtuales | En el modo kernel, todos los procesos comparten un único espacio de direcciones virtuales. | En el modo de usuario, todos los procesos obtienen un espacio de direcciones virtuales separado. |
| Nivel de privilegio | En el modo kernel, las aplicaciones tienen más privilegios en comparación con el modo usuario. | Mientras que en modo usuario las aplicaciones tienen menos privilegios. |
| Restricciones | Como el modo kernel puede acceder tanto a los programas de usuario como a los programas del kernel, no hay restricciones. | Mientras que el modo de usuario necesita acceder a los programas del kernel, ya que no puede acceder directamente a ellos. |
| Valor de bit de modo | El bit de modo del modo kernel es 0. | Mientras; El bit de modo del modo de usuario es 1. |
| Referencias de memoria | Es capaz de hacer referencia a ambas áreas de memoria. | Solo puede hacer referencias a la memoria asignada para el modo de usuario. |
| Bloqueo del sistema | Un bloqueo del sistema en modo kernel es grave y complica las cosas. | En el modo de usuario, un bloqueo del sistema se puede recuperar simplemente reanudando la sesión. |
| Acceso | Solo la funcionalidad esencial puede funcionar en este modo. | Los programas de usuario pueden acceder y ejecutarse en este modo para un sistema determinado. |
| Funcionalidad | El modo kernel puede referirse a cualquier bloque de memoria en el sistema y también puede dirigir la CPU para la ejecución de una instrucción, por lo que es un modo muy potente y significativo. | El modo de usuario es un modo de visualización estándar y típico, lo que implica que la información no se puede ejecutar por sí sola ni hacer referencia a ningún bloque de memoria; necesita una interfaz de protocolo de aplicación (API) para lograr estas cosas. |