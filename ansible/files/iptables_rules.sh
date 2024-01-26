#!/bin/sh

# Add accept rules for required ports
iptables -A OUTPUT -p tcp -m tcp --dport 3443 -j ACCEPT
iptables -A OUTPUT -p tcp -m tcp --dport 80 -j ACCEPT 
iptables -A OUTPUT -p tcp -m tcp --dport 443 -j ACCEPT

# Drop all other outgoing traffic 
iptables -P OUTPUT DROP

# Allow incoming traffic
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
