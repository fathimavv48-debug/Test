# Step 1: Use the official lightweight NGINX Alpine image as the base
FROM nginx:alpine

# Step 4: Copy your static website files (HTML, CSS, JS) into the default NGINX serving directory
COPY ./html /usr/share/nginx/html

# Step 5: Expose port 80 to allow external traffic
EXPOSE 80

# Step 6: Start NGINX and keep it running in the foreground so the container doesn't exit
CMD ["nginx", "-g", "daemon off;"]
build