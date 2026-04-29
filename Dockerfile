FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
RUN sed -i 's/listen\s*80;/listen 3000;/g; s/listen\s*\[::\]:80;/listen [::]:3000;/g' /etc/nginx/conf.d/default.conf
EXPOSE 3000
