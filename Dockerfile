# Use a base image with Java 11 installed
FROM eclipse-temurin:11-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven-built JAR file into the container
COPY target/JtSpringProject-0.0.1-SNAPSHOT.jar app.jar

# Expose the port on which the application will run
EXPOSE 8080

# Set the entrypoint to run the JAR file
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
