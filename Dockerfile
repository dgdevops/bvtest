FROM ubuntu:18.04
EXPOSE 8888

WORKDIR /var
RUN apt-get update
RUN apt-get install git -y
RUN apt install openjdk-8-jdk -y
RUN export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
RUN apt install maven -y
RUN git clone https://github.com/dgdevops/bvtest.git
RUN cd ./bvtest/springboot-web
RUN export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
RUN ./mvnw clean install
RUN ./mvnw spring-boot:run &
