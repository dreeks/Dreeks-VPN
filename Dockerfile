FROM kylemanna/openvpn

RUN apk update && apk add dnsmasq && \
rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*

ENV OPENVPN /etc/openvpn
ENV EASYRSA /usr/share/easy-rsa
ENV EASYRSA_PKI $OPENVPN/pki
ENV EASYRSA_VARS_FILE $OPENVPN/vars
ENV EASYRSA_CRL_DAYS 3650

VOLUME ["/etc/openvpn"]
EXPOSE 1194/udp

ADD ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["sh", "/entrypoint.sh"]
