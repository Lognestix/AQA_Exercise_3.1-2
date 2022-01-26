FROM openjdk:8-slim
WORKDIR /usr/src/myapp
COPY . .
CMD ["java", "-jar", "db-api-for-docker.jar"]
EXPOSE 9999