#!/usr/bin/env bash
# Чтение и изменение конфигурационных файлов в системной папке Preferences, общей и частных Library

# Просмотр списка доменов настроек
defaults domains

# Вывод переменных в домене
# defaults read <название_домена>

# Изменение значений переменных
# defaults write <домен> <переменная> -<тип> <значение>