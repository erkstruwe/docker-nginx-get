#docker build -t nginx-get --build-arg http_proxy=http://http-proxy.intern.neusta.de:3128 --build-arg https_proxy=http://https-proxy.intern.neusta.de:3128 .

FROM nginx

RUN apt-get update && apt-get install -y curl p7zip-full

ADD get.sh /usr/share/nginx
RUN chmod +x /usr/share/nginx/get.sh
WORKDIR /usr/share/nginx/html
ENTRYPOINT ["/usr/share/nginx/get.sh"]
