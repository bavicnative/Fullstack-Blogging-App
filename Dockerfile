FROM eclipse-temurin:17-jdk-alpine

# Expose the port that the app runs on
EXPOSE 8080

# Set the application directory
ENV APP_HOME /usr/src/app

# Copy the JAR file from the target directory
COPY target/*.jar $APP_HOME/

# Command to run the JAR
CMD ["java", "-jar", "/usr/src/app/app.jar"]
