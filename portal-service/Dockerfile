FROM openjdk:8-jdk-alpine
LABEL maintainer www.wzxmt.com
ENV JAVA_ARGS="-Dfile.encoding=UTF8 -Duser.timezone=GMT+08"
COPY ./target/portal-service.jar ./
EXPOSE 8080
CMD java -jar $JAVA_ARGS $JAVA_OPTS /portal-service.jar