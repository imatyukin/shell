#!/usr/bin/env bash
# Команда копирования каталогов
# (переходит по симлинкам, копирует метаданные и права, создает целевую папку, если не существует, если существует, то объединяет содержимое)

# ditto <откуда> <куда>

# Без копирования метаданных
# ditto -V --norsrc <откуда> <куда>

# Работа с архивами PKZip
# Сжать содержимое каталога
# ditto -ck --rsrc --sequesterRsrc <путь> <файл.zip>

# Разархивация
# ditto -xk <файл> <каталог>