FROM lizhenliang/java:8-jdk-alpine
LABEL maintainer www.cnblogs.com/wzxmt
ENV JAVA_ARGS="-Dfile.encoding=UTF8 -Duser.timezone=GMT+08"
COPY ./target/eureka-service.jar ./
COPY pinpoint /pinpoint
EXPOSE 8888
CMD java -jar -javaagent:/pinpoint/pinpoint-bootstrap.jar -Dpinpoint.agentId=${HOSTNAME} -Dpinpoint.applicationName=ms-eureka $JAVA_ARGS $JAVA_OPTS -Deureka.instance.hostname=${MY_POD_NAME}.eureka.ms /eureka-service.jar
