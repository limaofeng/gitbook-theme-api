FROM registry.cn-hangzhou.aliyuncs.com/zbsg/node-alpine:6.10.0

RUN cnpm install --g gitbook-cli &&\
	gitbook -V &&\
	npm cache clear &&\
	rm -rf /tmp/*

WORKDIR /srv/gitbook

EXPOSE 4000 35729

CMD gitbook serve /srv/gitbook
