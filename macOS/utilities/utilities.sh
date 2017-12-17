#!/usr/bin/env bash
# Утилиты

# Запись ввода в буфер обмена
# pbcopy
# Запись из буфера обмена в вывод
# pbpaste
# Копирование списка файлов в текущем каталоге
ls -l | pbcopy 

# Вывод версии и билда операционной системы
# (есть в выводе system_profiler)
sw_vers

# Выполняет скрипт на AppleScript или JavaScript (с параметром -l JavaScript)
# С параметром -i запустит REPL
# osascript

# Устанавливает программы
# installer
# installer -pkg <файл.pkg> -target /.

# Ставит обновления системы и ПО из App Store
# (список можно получить с ключом -l)
# softwareupdate

# Конвертирует файлы plist между XML, JSON и двоичным форматом
# plutil
