#!/usr/bin/env bash
if [ ! -z "${port}" ]
    then
          sed -i "s|\"443\": 2333,|\"port\": ${api_port},|"  "/home/tgproxy/config.py"
fi
if [ ! -z "${user}" ]
    then
         sed -i "s|\"mtuser\"|\"${user}\"|g" "/home/tgproxy/config.py"
fi
if [ ! -z "${key}" ]
    then
         sed -i "s/\"00000000000000000000000000000001\"/\"${key}\"/g" "/home/tgproxy/config.py"
fi
if [ ! -z "${tag}" ]
    then
         sed -i "s/3c09c680b76ee91a4c25ad51f742267d/${tag}/g" "/home/tgproxy/config.py"
fi
if [ ! -z "${domain}" ]
    then
         sed -i "s|\"www.google.com\"|\"${domain}\"|g" "/home/tgproxy/config.py"
fi

python3 mtprotoproxy.py
