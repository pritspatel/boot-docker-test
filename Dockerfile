FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/boot-docker-test-0.0.1-SNAPSHOT.jar boot-docker-test.jar
ENV JAVA_OPTS=""
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /boot-docker-test.jar