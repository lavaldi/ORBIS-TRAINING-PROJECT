FROM nginx:alpine

RUN mkdir /app
COPY intro.md /app/
COPY PREGUNTAS.md /app/
