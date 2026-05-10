#!/bin/bash

echo "--- Начинаю настройку окружения ---"

# 1. Обновляем систему и ставим Docker
sudo apt update
sudo apt install docker.io -y

# 2. Ставим полезные утилиты для мониторинга (htop уже был, добавим еще)
sudo apt install htop nvtop -y

# 3. Проверяем видеокарту (чтобы видеть те самые 574 MiB)
nvidia-smi

# 4. Поднимаем базу данных, если она еще не запущена
# Сначала удалим старый контейнер, если он есть, чтобы не было ошибки имен
sudo docker rm -f my-postgres 2>/dev/null
sudo docker run --name my-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres

echo "--- Настройка завершена! База Postgres запущена в Docker ---"