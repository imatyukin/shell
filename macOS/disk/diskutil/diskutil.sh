#!/usr/bin/env bash
# Управление разделами жестких дисков

# Вывод списка физических дисков
diskutil list

# Подробная информация о диске
# diskutil info <идентификатор диска>

# Ручное демонтирование
# diskutil unmountDisk <идентификатор>

# Автоматическая починка прав на файлы
# diskutil repairPermissions /