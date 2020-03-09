FROM openjdk:8-jdk-alpine
EXPOSE 8888

RUN apk add --no-cache git
RUN mkdir /var/web-app
RUN git clone https://github.com/dgdevops/bvtest.git /var/web-app 
WORKDIR /var/web-app/springboot-app/ 
ARG JAR_FILE=target/demo-0.0.1-SNAPSHOT.jar
WORKDIR /
ADD ${JAR_FILE} websocket-demo.jar
ENTRYPOINT ["java","-jar","-Dserver.port=8888","/websocket-demo.jar"]
