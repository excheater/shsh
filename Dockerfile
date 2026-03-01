FROM aiogram/telegram-bot-api:latest

RUN apt-get update && apt-get install -y python3 && rm -rf /var/lib/apt/lists/*

# Простой HTTP сервер на python который отдаёт файлы из /var/lib/telegram-bot-api
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
