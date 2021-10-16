FROM openjdk:8-alpine

ENV JDK_ENV=produccion

RUN mkdir /app
WORKDIR /app

COPY . .

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "./target/spring-petclinic-2.5.0-SNAPSHOT.jar"]
