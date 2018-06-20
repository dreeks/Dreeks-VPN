# Dreeks-VPN
## What is this
This is our setup for OpenVPN. Based on the [kylemanna/docker-openvpn](https://github.com/kylemanna/docker-openvpn) image, I added DNS masq and a little script to automagically add URLs for each of our computers

This way, if one of us need to show something to the other, he can just spin up a server on his computer, log in OpenVPN and we could all access it !

It can also be useful for file sharing & SSH sessions.

## Meh
Yes I know, multiple software in one container is bad practice, but in fact this was our only option as far as I know.

Let me explain

dnsmasq is our DNS server and requires to be accessible through the OpenVPN server's client. 

The only way to do this without making some kind of black magic with networks between containers.

This way, our clients gets the DNS server config as "192.168.66.1" which is the OpenVPN server
