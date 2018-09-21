FROM node:10.10.0-slim

RUN mkdir /app
COPY PREGUNTAS.md /app/

RUN cd /app && ls && cat PREGUNTAS.md