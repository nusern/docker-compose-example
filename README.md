# docker-compose-example
An example docker-compose project using Træfik, MariaDB and NGINX with PHP-FPM.

---

`cd project`

Start by editing the `project/.env` file. Ensure NGNIX and PHP have permissions for `project/nginx/html` by setting `CFG_P{UID,GID}=`. Last, edit `project/traefik/traefik.toml` by changing `example.tld` to the desired domain.

In `project` directory, run `/path/to/docker-compose up -d`.
