# Use an official web server image (e.g., Nginx) as a parent image
FROM nginx:latest

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the content of the local src directory to the working directory
COPY . .

# Expose port 80 to the outside world
EXPOSE 80