# Use build argument to specify the Nginx version
ARG NGINX_VERSION=latest

# Base image with the specified Nginx version
FROM nginx:${NGINX_VERSION}

# Set maintainer label
LABEL maintainer="Yeswanth"

# Copy custom Nginx configuration (optional)
COPY ./nginx.conf /etc/nginx/nginx.conf

# Expose the default Nginx port
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
