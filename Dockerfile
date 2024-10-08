# Use a base image with Java
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the jar file generated by Maven into the container
COPY target/your-app.jar /app/your-app.jar

# Specify the command to run your application
CMD ["java", "-jar", "your-app.jar"]

# Expose the port your app runs on
EXPOSE 8080
