#!/usr/bin/env bash
# Управление кешами Directory Services и просмотр списка пользователей

# Сброс кеша DNS
killall -HUP mDNSResponder

# Вывод списка пользователей
dscacheutil -q user