FROM debian
WORKDIR /app
RUN apt-get update && apt-get install -y nginx
COPY nginx.default.conf /etc/nginx/sites-available/default
#COPY index.html /app/
#COPY index.php /app/
COPY nginx.entrypoint.sh /root/
#COPY nginx.ico /app/favicon.ico
CMD ["/root/nginx.entrypoint.sh"]
