FROM openjdk:8-jdk-alpine
EXPOSE 8888

ARG JAR_FILE=./springboot-web/target/demo-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} websocket-demo.jar
WORKDIR /
ENTRYPOINT ["java","-jar","-Dserver.port=8888","/websocket-demo.jar"]
