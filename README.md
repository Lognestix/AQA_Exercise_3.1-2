## Созданы файлы docker-compose.yml, Dockerfile для работы с Docker.
```yml
version: '3.7'
services:
  my-java-app:
    build: .
    image: my-java-app:1.0
    ports:
      - '9999:9999'
```
```Java
FROM openjdk:8-slim
WORKDIR /usr/src/myapp
COPY . .
CMD ["java", "-jar", "db-api-for-docker.jar"]
EXPOSE 9999
```