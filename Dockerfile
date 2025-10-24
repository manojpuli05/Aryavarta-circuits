# Use a minimal Nginx image
FROM nginx:alpine

# Remove default Nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static files into Nginx's web directory
COPY Aroy.html /usr/share/nginx/html/index.html
COPY sty.css script.js /usr/share/nginx/html/

# Fix permissions so nginx (running as non-root) can read the files
RUN chmod -R 755 /usr/share/nginx/html

# Nginx already serves port 80 by default
