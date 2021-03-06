#!/bin/sh

if [ -f "$ngrok_path" ]
then
   echo "Discovered ngrok file" 
   fi
else
   echo "Ngrok file not found $ngrok_path, so Downloading it."
   wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
   unzip ngrok-stable-linux-amd64.zip
fi

./ngrok start ssh && sleep 5 
msg="New deployment is: " && sleep 5 
url=$(curl --silent http://127.0.0.1:4040/api/tunnels | jq '.tunnels[0].public_url')
if  [ -z "$url" ]
then 
	url=$(curl --silent http://127.0.0.1:4041/api/tunnels | jq '.tunnels[0].public_url')
fi 	
echo "$msg$url" | mail -s "New ngrok deployment" $EMAIL_ADDRESS
