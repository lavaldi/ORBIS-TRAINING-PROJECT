.PHONY: resources
include makefiles/task.mk
include makefiles/deploy-ghpages.mk
include makefiles/deploy-aws.mk

NAME_IMAGE = dtizonportilla/orbis-training-docker
DOCKER_TAG = 2.0.0
DOCKER_IMAGE = ${NAME_IMAGE}:${DOCKER_TAG}
NAME = 'Claudia Valdivieso'

install:
	docker run -it --rm --volume ${PWD}:/app ${DOCKER_IMAGE} npm install

start:
	docker run -it --rm -p 3030:1042 --volume ${PWD}:/app ${DOCKER_IMAGE} npm start

release:
	docker run -t --rm -p 3030:1042 --volume ${PWD}:/app ${DOCKER_IMAGE} npm run release

greet:
	docker run -it --entrypoint=/app/resources/example.sh --rm  --volume ${PWD}:/app -e NAME=${NAME} ${DOCKER_IMAGE}

resources:
	@echo 'Hola recursos!'

delete-workspace:
	docker rm workspace

project-workspace:
	docker create -v /app --name workspace alpine
	docker cp ./ workspace:/app/

jenkins-install:
	docker run -t --rm --volumes-from workspace -w /app ${DOCKER_IMAGE} npm install

jenkins-start:
	docker network create orbis_training_net
	docker run -d --net=orbis_training_net --name node_jenkins_start -p 3030:1042 --volumes-from espacio_de_trabajo -w /app ${DOCKER_IMAGE} npm start

curl:
	echo "curl -> jojo"
	docker run -t --rm --net=orbis_training_net --volumes-from espacio_de_trabajo -w /app ${DOCKER_IMAGE} curl node_jenkins_start:1042

jenkins-release:
	docker run -t --rm --volumes-from workspace -w /app ${DOCKER_IMAGE} npm run release
	docker cp workspace:/app/. ./