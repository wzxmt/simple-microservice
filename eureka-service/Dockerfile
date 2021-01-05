FROM openjdk:8-jdk-alpine
LABEL maintainer www.wzxmt.com
ENV JAVA_ARGS="-Dfile.encoding=UTF8 -Duser.timezone=GMT+08"
COPY ./target/eureka-service.jar ./
EXPOSE 8888
CMD java -jar $JAVA_ARGS $JAVA_OPTS -Deureka.instance.hostname=${MY_POD_NAME}.eureka.ms /eureka-service.jar
