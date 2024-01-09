# Используем базовый образ с установленным Squid
FROM alpine:3.17.2

# Установка Squid
RUN apk --no-cache add squid

# Копируем файл конфигурации Squid
COPY squid.conf /etc/squid/squid.conf

# Экспортируем порт 3128
EXPOSE 3128

# Запускаем Squid при старте контейнера
CMD ["squid", "-N"]
