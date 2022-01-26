## Созданы файлы docker-compose.yml, Dockerfile для работы с Docker.
```yml
version: '3.7'
services:
  openjdk-api:
    build: .
    image: openjdk-api:1.0
    ports:
      - '9999:9999'
```
```Java
FROM openjdk:8-slim
WORKDIR /usr/src/myapp
COPY . .
RUN javac Main.java
CMD ["java", "Main"]
EXPOSE 9999
```