#!/bin/bash

# Запускаем файл-сервер на порту 8082 в фоне
# Он отдаёт всё из /var/lib/telegram-bot-api
python3 -m http.server 8082 --directory /var/lib/telegram-bot-api &

# Запускаем локальный Bot API сервер
exec telegram-bot-api \
  --local \
  --dir=/var/lib/telegram-bot-api \
  --temp-dir=/tmp/telegram-bot-api \
  --username=telegram-bot-api \
  --groupname=telegram-bot-api \
  --http-port=8081
