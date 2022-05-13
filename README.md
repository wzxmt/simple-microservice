>## 这是一个基于SpringCloud的微服务架构项目

- dev数据库： dev-mysql.wzxmt.com

- fat数据库：fat-mysql.wzxmt.com
- 网关服务：gateway.ctnrs.com
- eureka服务：eureka.ctnrs.com
- 微服务：portal.ctnrs.com

>## 部署须知
1. 导入db目录下数据库文件到自己的MySQL服务器
2. 修改配置环境：（xxx-service/src/main/resources/application.yml，active值决定启用环境配置文件）
3. 修改连接数据库配置：（xxx-service/src/main/resources/application-fat.yml）
4. 修改前端页面连接网关地址：（portal-service/src/main/resources/static/js/productList.js和orderList.js）
5. 服务启动顺序：eureka -> mysql -> product,stock,order -> gateway -> portal
