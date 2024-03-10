# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Compile the Java application
RUN javac HelloWorld.java

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the Java application
CMD ["java", "HelloWorld"]