#!/bin/sh

# Запускаем файл-сервер на порту 8082
python3 -m http.server 8082 --directory /var/lib/telegram-bot-api &

echo "File server started on port 8082"

# Запускаем локальный Bot API сервер
exec telegram-bot-api \
  --local \
  --dir=/var/lib/telegram-bot-api \
  --temp-dir=/tmp/telegram-bot-api \
  --username=telegram-bot-api \
  --groupname=telegram-bot-api \
  --http-port=8081
