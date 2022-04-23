FROM ngnix
LABEL name="front"
LABEL version="1.0"
COPY ./dist /usr/share/nginx/html
COPY ./front.conf /usr/local/ngnix/default.d
EXPOSE 80