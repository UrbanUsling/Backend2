FROM openjdk:17-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=build/libs/rest-service.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8081
ENTRYPOINT ["java","-jar","/app.jar"]