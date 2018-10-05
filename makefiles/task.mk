build:
	docker build -t dtizonportilla/orbis-training-docker:2.0.0 .

push:
	make login
	docker push dtizonportilla/orbis-training-docker:2.0.0

up:
	docker-compose up

login:
	docker login