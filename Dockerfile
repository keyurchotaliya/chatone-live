FROM maven:3.8.7-openjdk-18-slim AS build

COPY target/chatone-live-0.0.1-SNAPSHOT.jar .
ENTRYPOINT ["/bin/sh", "-c", "java -jar /chatone-live-0.0.1-SNAPSHOT.jar"]

ENV spring_rabbitmq_host=rabbitmq-container
ENV spring_rabbitmq_port=5672
ENV spring_rabbitmq_username=guest
ENV spring_rabbitmq_password=guest
ENV resolute_rabbitmq_publishQueueName=resolute-run-request
ENV resolute_rabbitmq_exchange=resolute
