#基于alpine镜像制作
FROM python:3.7-alpine
WORKDIR /root
COPY *.sh /root/
RUN sh init.sh
VOLUME /opt/app/appid_list
EXPOSE 8000
CMD uvicorn main:app --root-path=/opt/app/appid_list --reload