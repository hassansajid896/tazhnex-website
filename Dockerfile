FROM nginx:alpine

# Copy the site straight into nginx's default web root
COPY index.html /usr/share/nginx/html/index.html

# nginx image already exposes/listens on port 80 by default
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
