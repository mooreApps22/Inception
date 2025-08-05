FROM alpine:3.21.4

RUN apk update && apk add --no-cache \
	mariadb mariadb-client openrc

RUN mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld

# Copy init scripts
COPY conf/init.sql /docker-entrypoint-initdb.d/init.sql

#Copy Start scripts
COPY tools/start.sh /start.sh
RUN chmod +x /start.sh

#Expose MySQL port
EXPOSE 3306

CMD ["\start.sh"]
