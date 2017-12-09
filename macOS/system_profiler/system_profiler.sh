#!/usr/bin/env bash
# Полная сводка о компьютере и программах

system_profiler > ~/Desktop/profile.txt

# Только сведения о компьютере
# system_profiler -detailLevel mini

# Информация в xml формате
# system_profiler -xml