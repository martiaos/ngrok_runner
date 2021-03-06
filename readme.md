This repository holds a shell script for initializing an ngrok tunnel on port 22 over tcp. The script is set up so that it can be automatically run whenever a new shell is initialized, and sends the public endpoint and port number to an email address specified in the start_ngrok.sh file. 

In order for this to work, you will have to create an account at ngrok.com, and add your auth_token to the ngrok.yml config file. You'll also need to add a receiving email address to the start_ngrok.sh file, and set up a mailer service in your local shell. 

Once that is done, just add the script to .bashrc.
