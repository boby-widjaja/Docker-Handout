
FROM eclipse-temurin:21-jdk AS builder
WORKDIR /app
COPY /HelloWorld .
RUN javac -d out src/Main.java
RUN jar --create \
    --file app.jar \
    --main-class Main \
    -C out .

FROM eclipse-temurin:21-jre
WORKDIR /app
COPY --from=builder /app/app.jar .
ENTRYPOINT ["java", "-jar", "app.jar"]