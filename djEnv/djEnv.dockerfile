FROM alpine

MAINTAINER stevenshen

ENV DJANGO_VER 2.0

RUN apk update \
    && apk add --no-cache bash python3 \
    && pip3 install django==$DJANGO_VER

# 暴露的端口
EXPOSE 22222

# 定义匿名卷，即为项目代码所在目录，挂载目录需要在run时指定
VOLUME /project

# 运行服务的命令
CMD ["python3", "/project/djsite/manage.py", "runserver", "0.0.0.0:22222"]