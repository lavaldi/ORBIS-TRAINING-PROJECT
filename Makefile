.PHONY: resources
include makefiles/task.mk
include makefiles/deploy-ghpages.mk

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
	docker create -v /home/node --name workspace alpine
	docker cp ./ workspace:/home/node/

jenkins-install:
	docker run -t --rm --volumes-from workspace -w /home/node ${DOCKER_IMAGE} npm install

jenkins-start:
	docker run -t --rm --volumes-from workspace -w /home/node ${DOCKER_IMAGE} npm start

jenkins-release:
	docker run -t --rm --volumes-from workspace -w /home/node ${DOCKER_IMAGE} npm run release
	docker cp workspace:/home/node/deploy/ ./