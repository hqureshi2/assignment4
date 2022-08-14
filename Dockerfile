FROM fedora:latest
RUN yum update && yum install vim tuxpaint httpd -y
COPY my-info.html /var/www/html/my-info.html
RUN echo "/usr/sbin/httpd" > /entrypoint.sh
RUN echo "while true; do sleep 1; done" >> /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 80
CMD ["/bin/bash", "entrypoint.sh"]
