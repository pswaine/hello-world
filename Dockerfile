FROM nginx

RUN mkdir /mycache && touch /mycache/cache-test.txt && echo "cache123" > /mycache/cache-test.txt

COPY . /usr/share/nginx/html
COPY ./dist/dist-test.txt /usr/share/nginx/html
COPY ./mycache/* /usr/share/nginx/html

RUN apt-get update && apt-get install -y rsync && apt-get clean
RUN ln -s /usr/share/nginx/html /app


