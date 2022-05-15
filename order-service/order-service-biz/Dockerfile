FROM lizhenliang/java:8-jdk-alpine
LABEL maintainer www.cnblogs.com/wzxmt
ENV JAVA_ARGS="-Dfile.encoding=UTF8 -Duser.timezone=GMT+08"
COPY ./target/order-service-biz.jar ./
COPY pinpoint /pinpoint
EXPOSE 8020
CMD java -jar -javaagent:/pinpoint/pinpoint-bootstrap.jar -Dpinpoint.agentId=$(echo $HOSTNAME | awk -F- '{print "order-"$NF}') -Dpinpoint.applicationName=ms-order $JAVA_ARGS $JAVA_OPTS /order-service-biz.jar
