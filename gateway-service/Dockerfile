FROM lizhenliang/java:8-jdk-alpine
LABEL maintainer www.ctnrs.com
ENV JAVA_ARGS="-Dfile.encoding=UTF8 -Duser.timezone=GMT+08"
COPY ./target/gateway-service.jar ./
COPY pinpoint /pinpoint
EXPOSE 9999
CMD java -jar -javaagent:/pinpoint/pinpoint-bootstrap.jar -Dpinpoint.agentId=$(echo $HOSTNAME | awk -F- '{print "gateway-"$NF}') -Dpinpoint.applicationName=ms-gateway $JAVA_ARGS $JAVA_OPTS /gateway-service.jar
