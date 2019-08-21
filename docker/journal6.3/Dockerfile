FROM openjdk:8-jdk-alpine

WORKDIR /root

RUN mkdir /root/upload

COPY ./upload/ root/upload/

ADD http://10.252.7.162:8081/repository/maven-releases/com/semperti/trial/journals/6.2/journals-6.2.jar /opt/journals-6.3.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","/opt/journals-6.3.jar"]]

