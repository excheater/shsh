FROM aiogram/telegram-bot-api:latest

# Alpine использует apk вместо apt-get
RUN apk add --no-cache python3

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
