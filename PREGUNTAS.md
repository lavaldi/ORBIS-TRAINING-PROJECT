# capacitacion-problema1

# Ejercicio 1
Capacitación: Git, bash y docker
Integrantes:
- Rafael Montoya
- Daniela Tizón
- Sol

1. ¿Qué importancia tiene los tags en un proyecto?
- Para el versionamiento de mi código :D

2. ¿Cuál es la diferencia entre un tag normal y un tag anotado en git?
- En que en el tag anotado puedes poner un mensaje 👍

3. ¿Cómo se sube todos los tags de git que hay en mi local?
- Con el comando `git push --tags`

4. ¿Es necesario loguearse cada vez que subo una imagen a dockerhub?
- Ño.

5. ¿Qué es y para qué sirve docker?
- Docker es una plataforma Open Source para desarrollar, implementar y ejecutar aplicaciones dentro de contenedores.
- Sirve para empaquetar ambientes de desarrollo.

6. ¿Cuál es la diferencia entre docker y VirtualBox?
- Docker me permite crear contenedores para tus app trabajando desde el kernel <3 y VirtualBOx crea una maquina virtual con hardware designado para cada app :/

7. ¿Es necesario depender de una imagen de docker base al crear una imagen nueva?
- Nope, porque se puede crear desde scratch 

8. ¿Porqué debo anteponer el nombre de usuario en una imagen docker nueva?
- Para identificar al propietario del dockerhub 

9. ¿Que pasa si creo una imagen sin especificar una versión o tag, con qué versión se crea? 
- Se le agrega el tag latest 

happy :whale:

¿Porqué es necesario crear un contenedor con esta bandera -it ? ¿Qué pasa si no le pongo -it?
- `-i` es para que los comandos que ingresemos en nuestra terminal se ejecuten en la terminal de docker.
- `-t` es para que podamos ver los logs de la terminal de docker.

¿Para qué sirve ejecutar el comando bash al ejecutar una imagen?
- Para poder ejecutar comandos en el contenedor.

 ¿Cuál es la diferencia entre docker ps y docker ps -a?
 - `docker ps` muestra todos los contenedores que están corriendo.
 - `docker ps -a` muestra todos los contenedores.