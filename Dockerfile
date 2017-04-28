FROM nginx

COPY . /usr/share/nginx/html
COPY ./mydist/mydist-test.txt /usr/share/nginx/html

RUN apt-get update && apt-get install -y rsync && apt-get clean
RUN ln -s /usr/share/nginx/html /app


