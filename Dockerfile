FROM openjdk:17-jdk-slim

WORKDIR /

COPY build/libs/camelreadydemo-0.0.1-SNAPSHOT.jar .

LABEL authors="lynch"

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "camelreadydemo-0.0.1-SNAPSHOT.jar"]