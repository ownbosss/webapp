From ubuntu
Maintainer aly
Run apt-get update
Run DEBIAN_FRONTEND=noninteractive  apt-get install -y nginx git
Expose 80
#ADD static-website-example/ /var/www/html/
Run rm -rf /var/www/html/*
Run git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
