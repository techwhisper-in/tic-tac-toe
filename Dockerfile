# Use lightweight Nginx image
FROM nginx:alpine

# Remove default Nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML file to the server directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx in foreground mode
CMD ["nginx", "-g", "daemon off;"]