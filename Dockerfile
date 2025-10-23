# Use a minimal Nginx image to serve static files
FROM nginx:alpine

# Remove the default Nginx index.html file
RUN rm -rf /usr/share/nginx/html/*

# Copy your local application files into the Nginx public folder
# The files Aroy.html, sty.css, and script.js must be in the same directory as the Dockerfile
COPY Aroy.html sty.css script.js /usr/share/nginx/html/

# The Nginx image already exposes port 80 and runs the web server, 
# so no explicit EXPOSE or CMD is required.