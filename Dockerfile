# Set the base image of the container to Alpine Linux with Java 17.
FROM khipu/openjdk17-alpine:latest

# Copy the JAR file of the application from the local system to the root directory of the container.
COPY /target/MSGF-IdentityService-0.0.1-SNAPSHOT.jar MSGF-IdentityService-0.0.1-SNAPSHOT.jar

# Expose port 9002 in the container. This allows incoming connections on port 9002.
EXPOSE 9002

# Configure the entry point of the container to run the Java application.
# When the container starts, this command will be executed.
ENTRYPOINT ["java", "-jar", "MSGF-IdentityService-0.0.1-SNAPSHOT.jar"]
