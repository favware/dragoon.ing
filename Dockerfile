FROM nginx:alpine

COPY ./nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY ./src/* /usr/share/nginx/html/
COPY ./public/* /usr/share/nginx/html/
RUN rm /usr/share/nginx/html/50x.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
