
# 基础镜像
FROM registry.docker-cn.com/library/nginx:stable-alpine
# 维护者信息
LABEL maintainer="wen911119@gmail.com"

ADD ./dist /usr/share/nginx/html/


ADD nginx.conf /etc/nginx/conf.d/default.conf
ADD start-nginx.sh /root/start-nginx.sh

EXPOSE 80

CMD ["/bin/sh", "/root/start-nginx.sh"]
