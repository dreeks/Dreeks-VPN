#!/bin/bash
docker-compose build

docker-compose run --rm openvpn ovpn_initpki
docker-compose up -d
