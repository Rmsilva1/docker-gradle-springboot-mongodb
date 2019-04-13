FROM gradle:4.3.0-jdk8-alpine
MAINTAINER Dyvak Yurii <dyvakyurii@gmail.com>

ADD src src
ADD build.gradle build.gradle 
RUN gradle build

COPY build/libs/Application.jar .

CMD java -Xmx200m -jar /app/Application.jar
EXPOSE 5000

