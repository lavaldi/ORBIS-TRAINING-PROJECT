FROM node:10.10.0-slim

RUN mkdir /app
COPY package.json /app
COPY resources/ /app/
WORKDIR /app