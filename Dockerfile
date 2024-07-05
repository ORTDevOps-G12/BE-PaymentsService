# Usa una imagen base con JDK 17
FROM openjdk:17-jdk-alpine

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el JAR de la aplicación al directorio de trabajo del contenedor
ARG JAR_FILE
COPY ${JAR_FILE} app.jar

# Expone el puerto en el que corre la aplicación Spring Boot
EXPOSE 8080

# Ejecuta la aplicación Spring Boot
ENTRYPOINT ["java", "-jar", "app.jar"]