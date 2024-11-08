# Use an official Ubuntu image as a parent image
FROM ubuntu

# Update package lists and install Apache
RUN apt-get update -y && apt-get install -y apache2

# Set the working directory in the container
WORKDIR /var/www/html

# Copy all files from the current directory to /var/www/html in the container
COPY . /var/www/html

# Expose port 85 to the outside world
EXPOSE 85

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
