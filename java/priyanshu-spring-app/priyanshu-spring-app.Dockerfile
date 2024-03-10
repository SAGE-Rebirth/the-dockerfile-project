# Use a base image with Java and Maven
FROM maven:3.8-openjdk-11 AS build
WORKDIR /app

# Copy the project files and build the application
COPY . .
RUN mvn build package 

# Create a minimal runtime image
FROM openjdk:8-jre-slim
WORKDIR /app
COPY --from=build /app/target/your-application.jar .

# Expose the port that the application listens on
EXPOSE 8080

# Set the entry point
CMD ["java", "-jar", "spring-app.jar"]

#docker run -p 8080:8080 spring-app-img