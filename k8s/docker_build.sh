#!/bin/bash

docker_registry=registry.wzxmt.com
image_tag=latest
docker login -u admin -p admin https://registry.wzxmt.com
kubectl create ns ms
# 存储登录Harbor认证信息
kubectl create secret docker-registry registry-pull-secret --docker-server=$docker_registry --docker-username=admin --docker-password=admin -n ms

service_list="eureka-service gateway-service order-service product-service stock-service portal-service"
service_list=${1:-${service_list}}
work_dir=$(dirname $PWD)
current_dir=$PWD

cd $work_dir
mvn clean package -Dmaven.test.skip=true

for service in $service_list; do
   cd $work_dir/$service
   # 业务程序需进入biz目录里构建
   if ls |grep biz &>/dev/null; then
      cd ${service}-biz
   fi
   service=${service%-*}
   image_name=$docker_registry/microservice/${service}:${image_tag}
   docker build -t ${image_name} .
   docker push ${image_name} 
   # 修改yaml中镜像地址为新推送的，并apply
   #sed -i -r "s#(image: )(.*)#\1$image_name#" ${current_dir}/${service}.yaml
   #kubectl apply -f ${current_dir}/${service}.yaml
done
