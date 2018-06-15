#!/bin/bash
export CLIENTNAME="oxodao_op3t"
export URL="phone.oxodao.drx"
export IP=101

docker-compose run --rm openvpn easyrsa build-client-full $CLIENTNAME nopass
docker-compose run --rm openvpn ovpn_getclient $CLIENTNAME > clients/$CLIENTNAME.ovpn

echo "ifconfig-push 10.8.66.$IP 255.255.255.0" > config/openvpn/ccd/$CLIENTNAME
echo "10.8.66.$IP $URL" >> config/hosts
