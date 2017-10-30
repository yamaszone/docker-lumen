Dockerized Laravel Lumen Micro Framework based on PHP7-FPM, Nginx and Postgres for rapid prototyping of microservices

## Requirements
* [Docker Engine](https://docs.docker.com/installation/)
* [Docker Compose](https://docs.docker.com/compose/)

## Quickstart
1. Checkout the repository
2. From project root run the following command
  - `./lumen up`
  - Navigate to http://<host_ip_addr>:8080
    - Should see "Lumen (5.5.0) (Laravel Components 5.5.*)"!
3. Run `./lumen help` to see other convenient commands
```sh
$ ./lumen help
Usage:
         build  : Build Lumen container.
         down   : Stop Lumen and associated services (e.g. DB).
         enter  : Enter Lumen container.
         help   : Show this help.
         up     : Launch Lumen app.
```
