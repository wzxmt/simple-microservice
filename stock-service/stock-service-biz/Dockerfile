FROM openjdk:8-jdk-alpine
LABEL maintainer www.wzxmt.com
ENV JAVA_ARGS="-Dfile.encoding=UTF8 -Duser.timezone=GMT+08"
COPY ./target/stock-service-biz.jar ./
EXPOSE 8030
CMD java -jar $JAVA_ARGS $JAVA_OPTS /stock-service-biz.jar