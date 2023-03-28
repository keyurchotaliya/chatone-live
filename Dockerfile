FROM maven:3.8.7-openjdk-18-slim AS build

COPY target/chatone-live-0.0.1-SNAPSHOT.jar .
ENTRYPOINT ["/bin/sh", "-c", "java -jar /chatone-live-0.0.1-SNAPSHOT.jar"]


