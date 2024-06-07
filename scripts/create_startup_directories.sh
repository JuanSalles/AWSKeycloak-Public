# Directory of SSL certificates
if [ ! -d /etc/certificados ]; then
    sudo mkdir /etc/certificados
fi

if [ ! -d /etc/site_prod ]; then
    sudo mkdir /etc/site_prod
fi

if [ ! -d /etc/keycloak_themes ]; then
    sudo mkdir /etc/keycloak_themes
fi

if [ ! -d /etc/nginx ]; then
    sudo mkdir /etc/nginx
fi

