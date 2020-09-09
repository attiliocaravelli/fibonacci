FROM adoptopenjdk/openjdk11:jdk-11.0.2.7-alpine-slim
MAINTAINER github.com/attiliocaravelli
RUN apk --no-cache add curl maven git
# Clone the conf files into the docker container
RUN git clone https://github.com/attiliocaravelli/fibonacci.git /home/fibonacci
RUN cd /home/fibonacci
RUN mvn clean package
ENTRYPOINT ["java", "-jar", "./target/fibonacci.jar" ]