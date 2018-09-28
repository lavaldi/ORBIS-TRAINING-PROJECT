# Construir imagen de docker
```
docker build -t dtizonportilla/orbis-training-docker:0.1.0 .
```
# Push imagen a dockerhub
```
docker push dtizonportilla/orbis-training-docker:0.1.0
```
# Cambiar version del tag
```
docker tag dtizonportilla/orbis-training-docker:0.1.0 dtizonportilla/orbis-training-docker:0.2.0
```
# Correr la imagen

El primer puerto es el de nuestra máquina y el segundo puerto es el que expone el contenedor

```
docker run -it --rm -p 1080:80 dtizonportilla/orbis-training-docker:1.0.0
```

# Build con docker-compose
```
docker-compose build
```

# Run con docker-compose
```
docker-compose up
```

# Volumear container
```
docker run -it --rm --volume $PWD:/app dtizonportilla/orbis-training-docker:2.0.0 npm install
```

# Exponer puertos
```
docker run -it --rm -p 3030:1042 --volume $PWD:/app dtizonportilla/orbis-training-docker:2.0.0 npm start
```

# Ejecutar release
```
docker run -it --rm -p 3030:1042 --volume $PWD:/app dtizonportilla/orbis-training-docker:2.0.0 npm run release
```
