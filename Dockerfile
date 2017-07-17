FROM ubuntu:latest

ENV LANG C.UTF-8
ENV TZ Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN mkdir -p /data/sprintcloud_sm/
RUN mkdir -p /data/springcloud/
ADD com.shenmintech.eureka.server-0.0.1-SNAPSHOT.jar  /data/springcloud/
