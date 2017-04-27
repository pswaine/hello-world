FROM nginx

ADD ./dist /tmp/dist

COPY . /usr/share/nginx/html

RUN apt-get update && apt-get install -y rsync && apt-get clean
RUN ln -s /usr/share/nginx/html /app
RUN cp /tmp/dist/test.txt /usr/share/nginx/html
