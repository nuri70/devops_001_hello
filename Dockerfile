# uygulamanın çalışması için JRE lazım
FROM eclipse-temurin:21-jre-alpine

# projenin jar dosyası burda
ARG JAR_FILE=target/devops_001_hello-1.0.0.jar

# projenin jar halini docker içişne kopyala
COPY ${JAR_FILE} my_app.jar

# Uygulamanın iç portunu sabitle
EXPOSE 8080

# Uygulamayı java komutla çalıştır
ENTRYPOINT ["java", "-jar", "/my_app.jar"]