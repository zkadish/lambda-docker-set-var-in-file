#!/bin/sh

pwd
ls -laF
# Get the script from the server
# TODO: replace with AWS Lambda url
# SCRIPT=$(curl http://localhost:3000/quotes?key=f18eb601-6980-42da-60e9-85440e1672e4)

# host.docker.internal wil connect the the hose machine localhost...
SCRIPT=$(curl http://host.docker.internal:3000/quotes?key=f18eb601-6980-42da-60e9-85440e1672e4)
# SCRIPT=test

echo $SCRIPT

# Mac OS
# sed -i .bak "s|SCRIPT|$SCRIPT|" app.js
# no backup file
# sed -i '' -e "s|SCRIPT|$SCRIPT|" app.js

# Linux
sed -i -e "s|SCRIPT|$SCRIPT|" app.js

node app.js
