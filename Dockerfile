FROM openjdk:17-jdk-slim

WORKDIR /

COPY build/libs/camelreadydemo-0.0.1-SNAPSHOT.jar .
COPY files/jmx_prometheus_javaagent-0.20.0.jar .

LABEL authors="lynch"

EXPOSE 8080
EXPOSE 8888

ENTRYPOINT ["java", "-javaagent:./jmx_prometheus_javaagent-0.20.0.jar=8080:./config.yaml", "-jar", "camelreadydemo-0.0.1-SNAPSHOT.jar"]