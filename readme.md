This repository holds a shell script for initializing an ngrok ssh tunnel on port 22 over tcp. The script is set up so that it can be automatically run whenever a new shell is initialized. Upon running, ngrok's local status dash is scraped for the public endpoint and port number, which is then sent to an email address specified in the start_ngrok.sh file. 

In order for this to work, you will have to create an account at ngrok.com, and add your auth_token to the ngrok.yml config file. You'll also need to add a receiving email address to the start_ngrok.sh file, and set up a mailer service in your local shell. 

Once that is done, just add the script to .bashrc.

Warning! This implementation is no more secure than the obscurity of your ngrok address, and the password of whatever device you're exposing. Don't use this for sensitive devices, and ensure your device has sufficient security _before_ exposing it!
