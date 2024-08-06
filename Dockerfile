FROM nginx:alpine

# Copy your custom Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your HTML file to the default Nginx directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 8080
EXPOSE 8080

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
