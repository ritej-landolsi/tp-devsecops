# Image de base avec Java 21
FROM eclipse-temurin:21-jdk-jammy

# Dossier de travail dans le conteneur
WORKDIR /app

# Copier le jar généré par Maven
COPY target/democyber-0.0.1-SNAPSHOT.jar app.jar

# Port exposé par Spring Boot
EXPOSE 8080

# Commande de démarrage
ENTRYPOINT ["java", "-jar", "app.jar"]