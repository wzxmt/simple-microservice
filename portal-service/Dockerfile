FROM java:8-jdk-alpine
LABEL maintainer wzxmt.com
RUN  apk add -U tzdata && \
     ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
COPY ./target/portal-service.jar ./
EXPOSE 8080
CMD java -jar /portal-service.jar
