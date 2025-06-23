#!/bin/bash
sudo apt-get update
sudo apt install nginx -y 
sudo systemctl enable nginx 
sudo systemctl start nginx 
echo "Waiting for 30 seconds "
sleep 30