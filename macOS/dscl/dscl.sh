#!/usr/bin/env bash
# Directory Services Command Line

# Вход в интерактивный режим
# (cd и ls для навигации, read смотреть содержимое веток) 
dscl

# Список всех пользователей
dscl . -list /Users

# Информация о пользователе в виде XML
# dscl . -read /Users/<имя пользователя>