# uygulamanın çalışması için JRE lazım
FROM eclipse-temurin:21-jre-alpine

# projenin jar dosyası burda
ARG JAR_FILE=target/*.jar

# projenin jar halini docker içişne kopyala
COPY ${JAR_FILE} my_app.jar

# Uygulamanın iç portunu sabitle
EXPOSE 8080

# Uygulamayı java komutla çalıştır
ENTRYPOINT ["java", "-jar", "/my_app.jar"]