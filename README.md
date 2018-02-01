# docker-compose-example
An example docker-compose project using Træfik, MariaDB and NGINX with PHP-FPM.

---

`cd project`

Start by editing the `project/.env` file.

Be sure NGNIX and PHP have permissions for web root `project/nginx/html` by setting `CFG_P{UID,GID}=`.

Edit `project/traefik/traefik.toml` by changing `example.tld` to the desired domain.

Change the password in `project/mariadb/mysql-root` to a different password.

Note that database is initialized from code run from `project\mariadb\init.sql`.

In `project` directory, run `/path/to/docker-compose up -d`.
