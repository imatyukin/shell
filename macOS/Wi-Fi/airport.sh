#!/usr/bin/env bash
# Управление Wi-Fi

# Активация скрытой команды airport
sudo ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/local/bin/airport

# Сканирование списка сетей
airport -s

# Информация о текущем подключении
airport -I
# Разрыв текущего подключения
sudo airport -z
