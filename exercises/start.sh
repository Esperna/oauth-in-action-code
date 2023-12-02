#!/bin/zsh
kill $(ps | grep -m1 'authorizationServer.js' | awk '{print $1}')
kill $(ps | grep -m1 'protectedResource.js' | awk '{print $1}')
kill $(ps | grep -m1 'node client.js' | awk '{print $1}')

node authorizationServer.js &
node protectedResource.js &
node client.js &
