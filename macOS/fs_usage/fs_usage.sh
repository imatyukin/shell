#!/usr/bin/env bash
# Отслеживание обращений к файловой системе

# Вывод записей о каждом обращении к файловой системе
sudo fs_usage

# Ограничение сообщений одним процессом
# sudo fs_usage pid <PID>

# Фильтр по операциям с сетью
sudo fs_usage -f network

# Фильтр по операциям с файлами
# sudo fs_usage -f pathname

# Если текст не влезает в строку
sudo fs_usage -w
