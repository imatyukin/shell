#!/usr/bin/env sh

# "list open files"
lsof

echo '\n================================ RESTART ================================\n'

# The description "ps -el" of the output is as follows:
# 1. UID represents the user ID.
# 2. PID represent the process ID.
# 3. PPID represents the parent process ID.
# 4. F represents flags associated with the process.
# 5. CPU represents the utilization of the processor.
# 6. PRI represents the scheduling parameters for a process.
# 7. NI represents the nice value assigned to the process.
# 8. SZ represents the total number of pages in the process.
# 9. RSS is the Resident Set Size and is used to show how much memory is allocated to that process and is in RAM.
# 10. WCHAN represents the address of an event where the process is switched to sleep mode.
# 11. S represents the state of the process.
# 12. ADDR represents the memory address of the process.
# 13. TTY represents the terminal from where the process is created.
# 14. TIME represents the amount of CPU time used by the process.

# Brief description of the characters that may appear in the S column
# Process 	States
# D			Indicates a process in disk
# I 		Indicates an idle process
# R 		Indicates a runnable process
# S 		Indicates a sleeping process
# T 		Indicates a stopped process
# Z 		Indicates a zombie process

ps -el
echo '\n================================ RESTART ================================\n'
ps aux
echo '\n================================ RESTART ================================\n'
# ps -M -p <pid> show the threads
ps -M -p 1
