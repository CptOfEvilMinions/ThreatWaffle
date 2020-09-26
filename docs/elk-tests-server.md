# Elk test server

## Generate OpenSSL certs
1. `openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout conf/tls/docker.key -out conf/tls/docker.crt`

## Spin up Docker stack
1. `docker-compose -f docker-compose-elk.yml build`
1. `docker-compose -f docker-compose-elk.yml up`

## Upload data
1. `cd json_logs`
1. `unzip *.zip`
1. curl

## References
* [CptOfEvilMinions/BlogProjects](https://github.com/CptOfEvilMinions/BlogProjects/tree/master/ElasticStackv7)
* [How To Create a Self-Signed SSL Certificate for Nginx in Ubuntu 18.04](https://www.digitalocean.com/community/tutorials/how-to-create-a-self-signed-ssl-certificate-for-nginx-in-ubuntu-18-04)
* []()
* []()
* []()