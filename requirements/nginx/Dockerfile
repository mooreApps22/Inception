ARG ALPINE_VER=3.21.4

FROM alpine:${ALPINE_VER}

RUN apk update && apk add --no-cache \
	nginx \
	openssl \
	ash \
	curl \

#SSL certs
COPY tools/setup-ssl.sh /tmp/setup-ssl.sh
RUN sh /tmp/setup-ssl.sh

#NGINX config
COPY conf/nginx.conf /etc/nginx/nginx/conf

#Create web root directory
RUN mkdir -p /var/www/html

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
