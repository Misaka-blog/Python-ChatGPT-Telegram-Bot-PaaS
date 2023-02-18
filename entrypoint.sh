#!/usr/bin/env bash

# 定义TG Bot Token，允许使用Bot的用户ID及OpenAI API Key
TG_BOT_TOKEN=${TG_BOT_TOKEN}
ALLOWED_CHATS=${ALLOWED_CHATS}
OPENAI_KEY=${OPENAI_KEY}
sed -i "s#TG_BOT_TOKEN#${TG_BOT_TOKEN}#g;s#ALLOWED_CHATS#${ALLOWED_CHATS}#g;s#OPENAI_KEY#${OPENAI_KEY}#g" config.json

# 设置 python 运行环境
pip3 install -r requirements.txt

# 设置 nginx 伪装站
rm -rf /usr/share/nginx/*
wget https://gitlab.com/Misaka-blog/xray-paas/-/raw/main/mikutap.zip -O /usr/share/nginx/mikutap.zip
unzip -o "/usr/share/nginx/mikutap.zip" -d /usr/share/nginx/html
rm -f /usr/share/nginx/mikutap.zip

# 如果有设置哪吒探针三个变量,会安装。如果不填或者不全,则不会安装
[ -n "${NEZHA_SERVER}" ] && [ -n "${NEZHA_PORT}" ] && [ -n "${NEZHA_KEY}" ] && wget https://raw.githubusercontent.com/naiba/nezha/master/script/install.sh -O nezha.sh && chmod +x nezha.sh && ./nezha.sh install_agent ${NEZHA_SERVER} ${NEZHA_PORT} ${NEZHA_KEY}

nginx
python3 ./main.py