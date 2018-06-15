#!/bin/bash
export CLIENTNAME=oxodao
export IP=100

docker-compose run --rm openvpn easyrsa build-client-full $CLIENTNAME nopass
docker-compose run --rm openvpn ovpn_getclient $CLIENTNAME > clients/$CLIENTNAME.ovpn

echo "ifconfig-push 10.8.66.$IP 255.255.255.0" > openvpn/ccd/$CLIENTNAME
