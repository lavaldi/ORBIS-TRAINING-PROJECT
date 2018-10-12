# capacitacion-problema1

# Ejercicio 1
Capacitación: Git, bash y docker
Integrantes:
- Rafael Montoya
- Daniela Tizón
- Claudia Valdivieso

---


1. ¿Qué importancia tiene los tags en un proyecto?
  - Para el versionamiento de mi código :D

2. ¿Cuál es la diferencia entre un tag normal y un tag anotado en git?
  - En que en el tag anotado puedes poner un mensaje 👍

3. ¿Cómo se sube todos los tags de git que hay en mi local?
  - Con el comando `git push --tags`

4. ¿Es necesario loguearse cada vez que subo una imagen a dockerhub?
  - No.

5. ¿Qué es y para qué sirve docker?
  - Docker es una plataforma Open Source para desarrollar, implementar y ejecutar aplicaciones dentro de contenedores.
  - Sirve para empaquetar ambientes de desarrollo.

---

6. ¿Cuál es la diferencia entre docker y VirtualBox?
- Docker me permite crear contenedores para tus app trabajando desde el kernel <3 y VirtualBOx crea una maquina virtual con hardware designado para cada app :/

7. ¿Es necesario depender de una imagen de docker base al crear una imagen nueva?
- Nope, porque se puede crear desde scratch 

8. ¿Porqué debo anteponer el nombre de usuario en una imagen docker nueva?
- Para identificar al propietario del dockerhub 

9. ¿Que pasa si creo una imagen sin especificar una versión o tag, con qué versión se crea? 
- Se le agrega el tag latest 

happy :whale:

---

¿Porqué es necesario crear un contenedor con esta bandera -it ? ¿Qué pasa si no le pongo -it?
- `-i` es para que los comandos que ingresemos en nuestra terminal se ejecuten en la terminal de docker.
- `-t` es para que podamos ver los logs de la terminal de docker.

¿Para qué sirve ejecutar el comando bash al ejecutar una imagen?
- Para poder ejecutar comandos en el contenedor.

 ¿Cuál es la diferencia entre docker ps y docker ps -a?
 - `docker ps` muestra todos los contenedores que están corriendo.
 - `docker ps -a` muestra todos los contenedores.

COMANDO PARA EJECUTAR EL CONTENEDOR
```
docker run -it --rm dtizonportilla/orbis-training-docker:0.2.0 bash
```

---


1. ¿Cuál es la diferencia entre una imagen y un contenedor?
- Una imagen es como una plantilla y el contenedor es la instancia de esa plantilla.

2. ¿Cómo listo las imágenes que hay en mi computadora?
- Con el comando `docker images`

3. ¿Cómo salgo de un contenedor de docker?
- Con `Ctrl-C`

4. ¿Se elimina el contenedor al salir de ella?
- Si le pones los flags `--rm` sí se eliminar, pero sino no.

5. ¿Cómo elimino un contenedor?
- Con el comando `docker rm <NAME O CONTAINER ID>`

6. ¿Para qué es necesario el flag `-i`, `-t`, `--rm`?
- `-i` es para que los comandos que ingresemos en nuestra terminal se ejecuten en la terminal de docker.
- `-t` es para que podamos ver los logs de la terminal de docker.
- `--rm` es para eliminar el contenedor apenas se sale de él.

---

7. ¿Cómo verifico que el archivo creado se encuentra en la imagen?
- Con los siguientes comandos:
```
docker run -it --rm dtizonportilla/orbis-training-docker:0.2.0 bash
# cd app
# ls
```

8. ¿Cómo se comenta una linea de código en Dockerfile?
- Se comenta agregando un hash `#` al inicio de la línea.

1. ¿Qué es NGINX?
- Un servidor web. 

2. ¿Cómo expongo puertos en docker?
- Se expone con `EXPOSE` en el Dockerfile.

3. ¿Cómo especifico los puertos al levantar un contenedor (docker run)?
- Con `-p <puerto local>:<puerto expuesto en el contenedor>` 

4. ¿Cómo hago 'forward' al levantar un contenedor (docker run)?
- Con `-p`

---


# PARTE 7
- ¿Qué pasa si no especifico el directorio de trabajo?
  El comando se ejecuta en el directorio raíz del container.

1. ¿Es necesario especificar el `workdir` en docker?, ¿Porqué?
Si es que no se quiere ejecutar los comandos el el directorio raíz, sí.

2. ¿Que hacen los siguientes comandos?
-`docker ps`
  Muestra todos los contenedores que estan levantados.

-`docker pull`
  Descarga la imagen o un repositorio de un registro. Especificar la imagen debe.

-`docker push`
  Sube una imagen a un respositorio.

-`docker rm`
  Borra un contenedor especificado.

-`docker rmi`
  Borra la imagen especificada.

-`docker run`
  Levanta un contenedor, basado en una imagen.

-`docker tag`
  Crea un tag a la imagen.

---

-`docker search`
  Busca imágenes en docker hub.

-`docker login`
  Permite loguearse a docker hub.

-`docker exec`
  Permite ejecutar comandos en un contenedor que ya está levantado.

-`docker build`
  Construye la imagen.

-`docker inspect`
  Muestra información sobre el contenedor especificado.

-`docker network`
  Permite administrar la red. Conectar, desconectar, crear, inspeccionar, listar...

---


# PARTE 8

1. ¿Qué es bash? ¿Qué significa?
-  Es un programa informático, cuya función consiste en interpretar órdenes, y un lenguaje de consola.

2. ¿Cómo ejecuto un archivo bash?
- . < archivo > / bash < archivo > 

3. ¿Qué pasa si no especifico en un `.sh`, la linea `#!/bin/bash`?
- Es una convención de Unix. Si no está, el archivo SOLO se ejecuta con bash / zsh o cualquiera sea tu shell.

4. ¿Se puede cambiar el modo bash (`/bin/bash`) a otro tipo de ejecución?
- Sí! Lee arriba.

---

5. ¿Cómo se envía variables de entorno por Docker CLI y docker-compose?

Docker CLI:
```
-e NAME='Harry Potter'
```
docker-compose:
  ```
  service:
    environment:
      - DEBUG=1
```

---


# PARTE 9

  1. Qué sucede si le quito el @ al target resources del Makefile?
  - Se ejecuta y se imprime el comando

  2. ¿Para qué sirve el archivo `Makefile`?
  Para ejecutar archivos, o comandos.

  3. ¿Qué es un `target` en `Makefile`?
  - Generalmente es un archivo generado por un programa. También puede ser un comando para ejecutar ua tarea.


---


# PARTE 10

1. ¿Qué significa el comando `-d`?
   Indica que es un directorio.
2. ¿Porqué la sentencia comienza con `@`?
   Para que no se vea en la terminal.
3. ¿Para qué sirve el comando `mkdir`?
   Para crear un directorio.

---


4. Explicar lo que hace la función `mkdir_deploy_dir`
   Verifica si no existe el directorio `GIT_BRANCH_DIR` y lo crea.
5. ¿Para qué sirve el uso de `\`?
   Para continuar las sentencias en una línea nueva y tenga mejor legibilidad nuestro código.
6. ¿Para qué sirve el uso de `&&`?
   Para concatenar sentencias.

---


7. ¿Qué función cumple usar los argumentos `-rf`?
   Para hacer un recursivo forzado.
8. Explicar lo que hace la función git_init (linea por linea)
   ```
   define git_init
    @cd $(GIT_BRANCH_DIR) && \   // ingresa al directorio GIT_BRANCH_DIR
    rm -rf $(GIT_BRANCH_DIR)/.git && \   // elimina de forma recusiva y forzada el directorio .git de GIT_BRANCH_DIR
    git init    // inicializa un repositorio git 
   endef
   ```
9. ¿Para qué sirve el uso de `eval`?
   Sirve para guardar el resultado de la ejecución de los comandos en una variable.

---


10. ¿Para qué sirve el uso de `shell`?
    Sirve para ejecutar los comandos.
11. ¿Para qué sirve el uso de `git log --pretty=format:"%an"`?
    Para obtener el usuario que realizó los commits.
12. ¿Cuál es la diferencia en usar `git config` y `git config --global`?
    Que `git config` sirve para configurar de manera local (tu respositorio actual) y `git config --globa` sirve para configurar de forma global (todos los repositorios).

---


13. Explicar lo que hace la función `git_config` (línea por línea)
    ```
    define git_config
      $(eval GIT_USER_NAME := $(shell git log --pretty=format:"%an" | head -n 1))  // obtiene el usuario del útimo commit y lo almacena en la variable GIT_USER_NAME
      $(eval GIT_USER_EMAIL := $(shell git log --pretty=format:"%ae" | head -n 1)) // obtiene el email del usuario del último commit y lo almacena en la variable GIT_USER_EMAIL
      @cd $(GIT_BRANCH_DIR) && \    // ingresa al directorio GIT_BRANCH_DIR
      git config user.email "$(GIT_USER_EMAIL)" && \    // configura el email del usuario que realizará los commits
      git config user.name "$(GIT_USER_NAME)"    // configura el nombre del usuario que realizará los commits
    endef
    ```
14. ¿Para qué sirve el uso de `awk`?
    Es un lenguage de programación para crear scripts
15. ¿Para qué sirve el uso de `sed`?
    Es un comando que permite buscar cadenas y reemplazarlas.

---


16. ¿Para qué sirve el uso de `git log --pretty=format:"%an"`?
    Obtiene el usuario del útimo commit
17. Explicar lo que hace la función `git_add_remote_repository`
    ```
    define git_add_remote_repository
      $(eval REPOSITORY := $(shell git remote -v | grep origin | grep '(push)'| awk '{print $$2}'))   // Imprime la ruta del repositorio que viene del remote origin push
      $(eval GIT_REPOSITORY_REMOTE := $(shell echo $(REPOSITORY) | sed 's%https://%https://$(GIT_PERSONAL_TOKEN)@%g'))  // 
      @cd $(GIT_BRANCH_DIR) && \   // ingresa al directorio GIT_BRANCH_DIR
      git remote add origin $(GIT_REPOSITORY_REMOTE)   // agrega el remote origin del repositorio
    endef
    ```

---


18. Explicar lo que hace la función `create_branch_gh_pages`
    ```
    define create_branch_gh_pages
      @cd $(GIT_BRANCH_DIR) && \    // ingresa a la carpeta GIT_BRANCH_DIR
      git checkout -b $(GIT_BRANCH)    // crea un nuevo branch y se mueve al nuevo branch
    endef
    ```
19. Explicar lo que hace la función `copy_files_to_deploy`
    Copia recursivamente el contenido de la carpeta `$(PWD)/$(DEPLOY_DIR)/$(BUILD_DIR)/` a la carpeta `$(GIT_BRANCH_DIR)`
20. Explicar lo que hace la función `git_add`
    Ingresa al directorio `$(GIT_BRANCH_DIR)`, pone los archivos en stage y verifica el estado del repositorio.

---


21. Explicar lo que hace la función create_commit (línea por línea)
    ```
    define create_commit
      $(eval MESSAGE := $(shell git log --pretty=format:"%s" | head -n 1))  // obtenemos el último commit y lo guardamos en la variable MESSAGE
      @cd $(GIT_BRANCH_DIR) && \   // ingresamos al directorio $(GIT_BRANCH_DIR)
      git commit -m "$(MESSAGE)"   // realizamos un commit con el mensaje guardado en la variable MESSAGE
    endef
    ```

---


22. Explicar lo que hace la función `git_push` (línea por línea)
    ```
    define git_push
      @cd $(GIT_BRANCH_DIR) && \    // ingresa al directorio GIT_BRANCH_DIR
      git push origin $(GIT_BRANCH) --force   // realiza un push origin force de la rama GIT_BRANCH
    endef
    ```
23.  Explicar lo que hace la función clean_workspace
  ```
  define clean_workspace
  	@rm -rf $(GIT_BRANCH_DIR) // Borra la carpeta y su contenido recursivamente de manera forzada
  endef
  ```

---


24.  ¿Para qué sirve el uso de ifeq?
    Es una condicional de igualdad a positivo
    *dato curioso tambien existe ifneq: que es una igualdad dando prioridad a la negativo

25.  ¿Para qué sirve el uso de strip?
    Limpiar los espacios de la cadena tanto del lado izquierdo y derecho

---


26. Explicar lo que hace la función show_deploy_url

```
  define show_deploy_url
      // obtiene la ruta del repositorio
      $(eval GIT_REPOSITORY_REMOTE := $(shell git remote -v | grep origin | grep '(push)'| awk '{print $2}'))
      // obtiene la ruta del repositorio si lo clonaste con ssh
      $(eval GIT_REPOSITORY_REMOTE_SSH := $(shell echo '$(GIT_REPOSITORY_REMOTE)' | grep 'git@'))

      // con strip limpiamos espacios laterales y luego validamos si es una ruta ssh
      $(ifeq ($(strip $(GIT_REPOSITORY_REMOTE_SSH)),), \
        // obtenemos el user de una ruta ssh
        $(eval GIT_USER_NAME := $(shell echo '$(GIT_REPOSITORY_REMOTE)' | cut -d "/" -f 1 | cut -d ":" -f 2)), \
        // obtenemos el user de una ruta http
        $(eval GIT_USER_NAME := $(shell echo '$(GIT_REPOSITORY_REMOTE)' | cut -d "/" -f 4)) \
      )

      // con strip limpiamos espacios laterales y luego validamos si es una ruta ssh
      $(ifeq ($(strip $(GIT_REPOSITORY_REMOTE_SSH)),), \
          // obtenemos el nombre del repositorio de una ruta http
          $(eval GIT_REPOSITORY_NAME := $(shell echo '$(GIT_REPOSITORY_REMOTE)' | cut -d "/" -f 2)), \
          // obtenemos el nombre del repositorio de una ruta ssh
          $(eval GIT_REPOSITORY_NAME := $(shell echo '$(GIT_REPOSITORY_REMOTE)' | cut -d "/" -f 5 | sed "s/.git//g" | sed "s/(push)//g")) \
      )

      // echoooooo echooooo echo echo echorochocho
      // Pintamos espacio
      @echo ""
      // Pintamos la ruta
      @echo "Publicado en: http://$(GIT_USER_NAME).github.io/$(GIT_REPOSITORY_NAME)"
      // Pintamos espacio
      @echo ""
  endef
```

---


27.  ¿Qué hace cada paso?
  Ejecuta su respectiva función



---



# Parte 12

1. Explicar lo que hace la función `get_user_name`
  Obtiene el usuario del repositorio de git de acuerdo si el git remote es HTTPS o SSH.

2. ¿Qué significa el argumento `s3`?
  Determina el bucket de S3
3. ¿Qué significa el argumento `--delete`?

4. ¿Qué significa el argumento `--acl`?
5. ¿Qué significa el argumento `--region`?
6. ¿Para qué sirve el comando `aws`?
7. Explicar lo que hace la función `deploy_bucket`
8. Explicar lo que hace la función `show_deploy_url`
9. ¿Qué hace cada paso?


---


# Parte 14
