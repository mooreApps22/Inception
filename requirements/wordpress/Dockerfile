#Comments starts with hash-marks
FROM alpine:3.21.4

#Installs from the intronets
RUN apk update && apk add --no-cache \
	php81 \
	php81-fpm \
	php81-mysqli \
	php81-curl \
	php81-gd \
	php81-mbstring \
	php81-json \
	php81-session \
	curl \
	wget \
	unzip

# Web root directory
RUN mkdir -p /var/www/html

#Download Wordpress files
RUN curl -o wordpress.tar.gz https://wordpress.org/latest.tar.gz && \
	tar -xzf wordpress.tar.gz -C /var/www/html --strip-components=1 && \
	rm wordpress.tar.gz

# Copy entrypoint script
COPY tools/start.sh /start.sh
RUN chmod +x /start.sh

# Expose port for php-fpm
EXPOSE 9000

CMD ["/start.sh"]
