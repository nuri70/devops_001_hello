FROM eclipse-temurin:21-jdk

ARG JAR_FILE=target/devops_001_hello-1.0.0-jar

COPY ${JAR_FILE} my_app.jar


EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/my_app.jar"]