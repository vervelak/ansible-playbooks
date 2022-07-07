#!/bin/bash
/sbin/iptables -t nat -A POSTROUTING -o tun0 -j MASQUERADE
/sbin/iptables -A FORWARD -i tun0 -o usb0 -m state    --state RELATED,ESTABLISHED -j ACCEPT
/sbin/iptables -A FORWARD -i usb0 -o tun0 -j ACCEPT