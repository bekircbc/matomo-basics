# Use a base image suitable for ARM64 architecture
FROM arm64v8/php:7.4-apache

# Install dependencies
RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Download and extract Matomo
ENV MATOMO_VERSION 4.5.0
RUN wget -O matomo.tar.gz https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz && \
    tar -xzf matomo.tar.gz -C /var/www/html --strip-components=1 && \
    rm matomo.tar.gz

# Set up Matomo configuration
COPY config.ini.php /var/www/html/config/config.ini.php

# Set proper permissions
RUN chown -R www-data:www-data /var/www/html

# Expose Apache port
EXPOSE 80

# Start Apache server
CMD ["apache2-foreground"]
