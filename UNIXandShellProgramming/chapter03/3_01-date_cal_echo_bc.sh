#!/usr/bin/env sh

date
date +%d	# For displaying day (01–31)
date +%m	# For displaying month (01–12)
date +%b	# For displaying abbreviated month name (Jan, Feb, etc.)
date +%y	# For displaying the year—last two digits (00,…, 99)
date +%Y	# For displaying the year with century—four digits
date +%H	# For displaying hours—military format (00,01,…, 23)
date +%I	# For displaying hours (0,1,…, 12)
date +%p	# For displaying a.m./p.m.
date +%M	# For displaying minutes (0,1, …, 59)
date +%S	# For displaying seconds (0,1,…, 59)
date +%x	# For displaying only date (07/15/12)
date +%X	# For displaying only time (17:15:30)
date +%a	# For displaying abbreviated weekday (Fri)

echo '\n================================ RESTART ================================\n'

cal
cal 6 2016
cal -y

echo '\n================================ RESTART ================================\n'

echo "Hello\nWorld"
echo "Hello\tWorld"
echo "Hello\\World"
echo "Hello\bWorld"
echo "Hello\vWorld"

echo '\n================================ RESTART ================================\n'

x=$(echo "5/3" | bc -l)
echo $x

y=$(echo 'scale=5; sqrt(17)' | bc)
echo $y
