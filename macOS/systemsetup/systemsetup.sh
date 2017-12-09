#!/usr/bin/env bash
# Настройка основных параметров системы

# Вход в интерактивный режим
systemsetup

# Активация демона SSH
sudo systemsetup -setremotelogin on

# Блокировка клавиатуры сервера, когда тот находится в стойке
# sudo systemsetup -setdisablekeyboardwhenenclosurelockisengaged