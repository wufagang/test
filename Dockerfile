#基础镜像使用java 8
FROM java:8
# 作者
MAINTAINER wfg
# VOLUME 指定临时文件目录为/tmp，在主机/var/lib/docker目录下创建了一个临时文件并链接到容器的/tmp
VOLUME /tmp
# 将jar包添加到容器中并更名为zzyy_docker.jar
ADD docker_boot-0.0.1-SNAPSHOT.jar docker-boot-demo.jar
# 运行jar包
RUN bash -c 'touch /docker-boot-demo.jar'
ENTRYPOINT ["java","-jar","/docker-boot-demo.jar"]
#暴露6001端口作为微服务
EXPOSE 8888
