FROM nginx

COPY . /usr/share/nginx/html
COPY ./dist/dist-test.txt /usr/share/nginx/html
COPY ./mycache/* /usr/share/nginx/html

RUN apt-get update && apt-get install -y rsync && apt-get clean
RUN ln -s /usr/share/nginx/html /app
