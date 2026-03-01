FROM aiogram/telegram-bot-api:latest

RUN apk add --no-cache python3

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
