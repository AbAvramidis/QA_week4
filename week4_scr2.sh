#!/bin/bash

read -p "Give a number: " port

netstat -tulpn | grep -i "${port}"
