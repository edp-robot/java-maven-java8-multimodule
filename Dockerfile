# Use OpenJDK 8 as the base image
FROM eclipse-temurin:8-jre-jammy

# Set the working directory in the container
WORKDIR /app

# Copy deployable.module artifact into the container
# Use proper context in kaniko
COPY ./target/*.jar app.jar

# Command to run the application specifying the main class explicitly
CMD ["java", "-jar", "app.jar"]
