#!/bin/bash


read -p "Enter the domain to block: " domain


ip=$(dig +short "$domain" | head -n 1)
# if value ip empty or not
if [ -z "$ip" ]; then
    echo "Failed to resolve the domain to an IP address."
    exit 1
fi

echo "Resolved $domain to IP: $ip"


echo "Adding iptables rules to block $ip"

sudo iptables -A OUTPUT -d "$ip" -j DROP
sudo iptables -A INPUT -s "$ip" -j DROP

echo "Traffic to and from $ip is now blocked."
