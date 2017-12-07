#!/bin/bash
# Интерфейс к системе launchd

# Конфигурационные файлы процессов
# ~/Library/LaunchAgents, /Library/LaunchAgents, /Library/LaunchDaemons
# Скрипты отвечающие за работу macOS
# /System/Library/

# Активация и деактивация запуска системных и собственных скриптов
# launchtl enable <название_сервиса>
# launchtl disable <название_сервиса>

# Старый вариант
# load
# unload

# Вывод названий всех сервисов
launchctl list

# Немедленный запуск, независимо от настроек
# launchctl kickstart