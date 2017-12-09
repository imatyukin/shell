#!/bin/bash
# Интерфейс командной строки для Gatekeeper
# (механизм запрещающий запускать неподписанные приложения)

# Проверка работы Gatekeeper
spctl --status

# Отключить Gatekeeper
# sudo spctl --master-disable
# Включить Gatekeeper
# sudo spctl --master-enable

# Просмотр списка разрешенных приложений
spctl --list
# Просмотр разрешённых пользователем приложений
spctl --list | grep UNLABELED
# Ручное добавление приложений в список
# spctl --add --label "Approved" <файл приложения>
# spctl --enable --label "Approved"