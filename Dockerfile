FROM nginx:1.25-alpine
COPY index.html /usr/share/nginx/html
COPY style.css /usr/share/nginx/html
COPY about.html /usr/share/nginx/html
COPY contact.html /usr/share/nginx/html
EXPOSE 80
