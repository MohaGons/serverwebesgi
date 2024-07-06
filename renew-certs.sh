#!/bin/bash

# Renouveler les certificats
docker-compose run certbot renew

# Redémarrer Nginx pour prendre en compte les nouveaux certificats
docker-compose exec nginx nginx -s reload
