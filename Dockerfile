# Använd Nginx stable-alpine för en säker och lättviktig server
FROM nginx:stable-alpine

# Ta bort standard-sidorna
RUN rm -rf /usr/share/nginx/html/*

# Kopiera din index.html till serverns rot
COPY index.html /usr/share/nginx/html/index.html

# Öppna port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]