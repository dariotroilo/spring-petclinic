FROM openjdk:8-alpine

ENV JDK_ENV=produccion

RUN mkdir /app
WORKDIR /app

COPY . .

RUN java -jar ./target/spring-petclinic-2.5.0-SNAPSHOT.jar