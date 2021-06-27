# OdooComposeStarter

An way to setup odoo in a dockerised form.
This is heavily inspired from [nginx-certbot](https://github.com/wmnnd/nginx-certbot) and [InstallScript](https://github.com/Yenthe666/InstallScript).

## How to

1.  [Install Docker](https://docs.docker.com/engine/install/)
    [Recommended](https://docs.docker.com/engine/install/linux-postinstall/)

2.  [Install Docker Compose](https://docs.docker.com/compose/install/)

3.  Modify configuration in `nginx/odoo.conf`, `init_cert.sh`, `config/odoo.conf` with the appropriate config/credentials.

4.  Build the image

        docker-compose build

5.  Run the init script:

        ./init-cert.sh

6.  Start

        docker-compose up -d

## Adding custom addons

Make a folder called `addons` and add your addons there and restart your server with `docker-compose down` and `docker-compose up -d`
