# Vi använder Nginx direkt - ingen Node, inget krångel
FROM nginx:stable-alpine

# Ta bort Nginx standard-välkomstsida
RUN rm -rf /usr/share/nginx/html/*

# Kopiera din 14.js och döp om den till index.html i containern
COPY 14.js /usr/share/nginx/html/index.html

# Exponera port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]