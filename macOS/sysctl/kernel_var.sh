#!/bin/bash
# Вывод и изменение параметров ядра

sysctl -ah

# ключ -n выводит только значение
# sysctl -ahn

# Ограничение тысячей максимального количества процессов, запущенных от одного пользователя
# sysctl kern.maxprocperuid=1000