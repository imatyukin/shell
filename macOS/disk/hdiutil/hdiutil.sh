#!/usr/bin/env bash
# Работа с образами дисков

# Примонтировать образ
# hdiutil attach <файл.dmg>
# Демонтировать образ
# hdiutil detach /dev/disk<номер>

# Преобразование каталога в образ диска
# hdiutil create -volname "<Метка тома>" -srcfolder <путь к папке> -ov <файл.dmg>
# Создать зашифрованный образ 
# hdiutil create -encryption -stdinpass -volname "<Метка тома>" -srcfolder <путь к папке> -ov <файл.dmg>

# Запись на диск
# hdiutil burn <файл с образом>

# Восстановление содержимого диска из образа
# sudo asr -restore -noverify -source <файл.dmg> -target /Volumes/<диск>