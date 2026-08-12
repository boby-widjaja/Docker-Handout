FROM maven:3.9.11-eclipse-temurin-21 AS build
WORKDIR /build
COPY Source/basiliskSB/pom.xml .
RUN mvn dependency:go-offline
COPY Source/basiliskSB/src ./src
RUN mvn clean package -DskipTests


FROM eclipse-temurin:21-jre
LABEL maintainer="Boby"
LABEL version="1.0"
LABEL description="Backend API service"
ENV APP_NAME=Basilisk
ENV APP_DESCRIPTION="Simple logistic application for training"
ENV APP_PORT=8005
ENV APP_VERSION=1.0.0
ENV DB_USERNAME=sa
ENV DB_NAME=BasiliskNext
ENV DB_CONTAINER=basilisk_db
ENV DB_PORT=1433
ENV CLIENT_DOMAIN=http://localhost:8006
WORKDIR /app
COPY --from=build /build/target/basiliskSB-5.0.0.jar app.jar
EXPOSE 8005
ENTRYPOINT ["java", "-jar", "app.jar"]