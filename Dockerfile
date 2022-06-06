FROM nginx:latest

COPY nginx.conf /etc/nginx/

ADD index.html /usr/share/nginx/html/

RUN mkdir /usr/share/nginx/html/tietoevry/
ADD tietoevry.html /usr/share/nginx/html/tietoevry/

RUN chmod +r /usr/share/nginx/html/index.html
RUN chmod +r /usr/share/nginx/html/tietoevry/tietoevry.html

CMD ["nginx", "-g", "daemon off;"]
