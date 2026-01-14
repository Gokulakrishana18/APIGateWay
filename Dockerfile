# Step 1: Use a lightweight JDK image
#FROM openjdk:21-jdk-slim
FROM eclipse-temurin:21-jdk-jammy

# Step 2: Set a working directory inside the container
WORKDIR /app

# Step 3: Copy the jar file from target folder into container
COPY target/*.jar app.jar

# Step 4: Expose port (must match your application.properties server.port)
EXPOSE 8082

# Step 5: Command to run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]
