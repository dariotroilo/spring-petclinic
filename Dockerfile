FROM openjdk:8-alpine

ENV JDK_ENV=produccion

RUN mkdir /app
WORKDIR /app

COPY . .

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "./target/*.jar"]
