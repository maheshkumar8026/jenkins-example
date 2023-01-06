FROM openjdk:8-jdk-alpine

RUN apk update \
    && apk add --no-cache gnupg

COPY target/*.jar app.jar

EXPOSE 8088

CMD ["java","-jar","app.jar"]