FROM caddy:alpine

# Create the directory for site files
WORKDIR /srv

# Copy the site files
COPY site/ /srv/

# Copy the Caddyfile configuration
COPY Caddyfile /etc/caddy/Caddyfile

# Expose port 8080
EXPOSE 8080

