FROM lizhenliang/java:8-jdk-alpine
LABEL maintainer www.cnblogs.com/wzxmt
ENV JAVA_ARGS="-Dfile.encoding=UTF8 -Duser.timezone=GMT+08"
COPY ./target/product-service-biz.jar ./
COPY pinpoint /pinpoint
EXPOSE 8010
CMD java -jar -javaagent:/pinpoint/pinpoint-bootstrap.jar -Dpinpoint.agentId=$(echo $HOSTNAME | awk -F- '{print "product-"$NF}') -Dpinpoint.applicationName=ms-product $JAVA_ARGS $JAVA_OPTS /product-service-biz.jar
