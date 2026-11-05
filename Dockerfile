# Use JDK 25
FROM eclipse-temurin:25-jdk

# Set working directory inside container
WORKDIR /app

# Define application JAR name
ARG JAR_FILE=target/FirstApp-0.0.1-SNAPSHOT.jar

# Copy JAR into /app
COPY ${JAR_FILE} app.jar

EXPOSE 9766

# Start Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]