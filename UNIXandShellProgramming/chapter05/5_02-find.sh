#!/usr/bin/env sh

# find
#
# find path criteria action_list
#
# Options used with the find command
# –atime n It finds files that were accessed n days ago.
# –ctime n It finds files that were created n days ago.
# –mtime n It finds files that were modified more than +n days, less than –n days, or exactly n days ago.
# -size n[c] It finds files that are n blocks or c bytes in size. One block is equal to 512 bytes.
# –name pattern It finds files where the filename matches the pattern.
# -perm octal_num It finds files that have given permissions.
# –type It finds files of the specified type. The type is represented through the following characters:
# b: Block file
# c: Character file
# d: Directory
# l: Symbolic link
# f: Regular file
# p: Named pipe
# s: Socket
# –user name It finds files that are owned by the given user_name. We can also use the user ID instead of the username.
# –group group_name It finds files that belong to a given group_name. We can also use the group ID instead of the group name.
#
# Actions applied to the found files:
# -print Default action that displays the path name of the files that meet the given criteria
# -exec command Executes the Unix system command on the files that meet the given criteria
# -ok command Same as the exec command, it prompts the user for confirmation, that is, the user has to press ‘y’ for executing the command
#
# find pathname-list condition-list -exec command {} \;
#
# List of find operators used to connect expressions:
# ! (Negation operator) This performs reverse action, that is, it finds the files that do not satisfy the specified expression.
# -o (OR operator) This is used to connect one or more expressions. On using an operator, the files that satisfy even a single expression will also be displayed.
# -a (AND operator) This is the default operator. Only the files that satisfy all the expressions connected with the –a operator are displayed.

# The following command displays the files and their path names that have not been accessed for over a month (+30).
find /Users/igor/Documents/workspace/shell/UNIXandShellProgramming -atime +30 -print
echo '\n================================ RESTART ================================\n'
# To find files that are of a size larger than 20 blocks and which have not been accessed for over a month (+30), use the following command.
find /Users/igor/Documents/workspace/shell/UNIXandShellProgramming -atime +30 -size +20 -print
echo '\n================================ RESTART ================================\n'
# To search for files that are of a size between 1000 and 2000 bytes, use the following command.
find /Users/igor/Documents/workspace/shell/UNIXandShellProgramming -size +1000c -size -2000c -print
echo '\n================================ RESTART ================================\n'
# To remove files that are of a size larger than 20 blocks with the interactive action command ok, enter the following.
# find /tmp -atime +30 -size +20 -ok rm -f { } \;
echo '\n================================ RESTART ================================\n'
# To list all files and directories under the current directory, use the following command.
find /Users/igor/Documents/workspace/shell/UNIXandShellProgramming -print
echo '\n================================ RESTART ================================\n'
# To search for the file users.txt in the current directory and its subdirectories, use the following command.
find /Users/igor/Documents/workspace/shell/UNIXandShellProgramming -name 'users.txt' -print
echo '\n================================ RESTART ================================\n'
# To display all .c files under the current directory, use the following command.
find /Users/igor/Documents/workspace -name '*.c' -print
echo '\n================================ RESTART ================================\n'
# To print all files beginning with the word 5_ in the current directory and its subdirectories, use the following command.
find /Users/igor/Documents/workspace/shell/UNIXandShellProgramming -name '5_*' -print
echo '\n================================ RESTART ================================\n'
# To print all filenames comprising three characters that begin with an upper-case or a lowercase character in the current directory and its subdirectories, use the following command.
find /Users/igor/Documents/workspace -name '[a-zA-Z]??' -print
echo '\n================================ RESTART ================================\n'
# To display the list of the directories, use the following command.
find /Users/igor/Documents/workspace/shell/UNIXandShellProgramming -type d -print
echo '\n================================ RESTART ================================\n'
# To find all those .c files that were last modified less than three days ago, use the following command.
find /Users/igor/Documents/workspace -mtime -3 -name "*.c" -print
echo '\n================================ RESTART ================================\n'
# To find all those .c files that were last modified more than three days ago, use the following command.
find /Users/igor/Documents/workspace -mtime +3 -name "*.c" -print
echo '\n================================ RESTART ================================\n'
# To find all those .c files that were modified exactly three days ago, use the following command.
find /Users/igor/Documents/workspace -mtime 3 -name "*.c" -print
echo '\n================================ RESTART ================================\n'
# To find the .txt files that have the 755 permission, use the following command.
find /Users/igor/Documents/workspace -name '*.txt' -perm 755 -print
find /Users/igor/Documents/workspace -name '*.txt' -a -perm 755 -print
echo '\n================================ RESTART ================================\n'
# To find the subdirectories under the current directory having the 755 permission, use the following command.
find /Users/igor/Documents/workspace -type d -perm 755 -print
echo '\n================================ RESTART ================================\n'
# To find all the files that have the User (owner) as igor, use the following command.
find /Users/igor/Documents/workspace/shell/UNIXandShellProgramming -user igor -print
find /Users/igor/Documents/workspace/shell/UNIXandShellProgramming -user 501 -print
echo '\n================================ RESTART ================================\n'
# To find all the files that belong to the group staff, use the following command.
find /Users/igor/Documents/workspace/shell/UNIXandShellProgramming -group staff -print
find /Users/igor/Documents/workspace/shell/UNIXandShellProgramming -group 20 -print
echo '\n================================ RESTART ================================\n'
# To find all the files except the users.txt file, use the following command.
find /Users/igor/Documents/workspace/shell/UNIXandShellProgramming ! -name 'users.txt' -print
echo '\n================================ RESTART ================================\n'
# To find all the files except the ones with the extension .txt, use the following command.
find /Users/igor/Documents/workspace/shell/UNIXandShellProgramming ! -name '*.txt' -print
echo '\n================================ RESTART ================================\n'
# To find .txt files or files that have the 755 permission, use the following command.
find /Users/igor/Documents/workspace \( -name '*.txt' -o -perm 755 \) -print
echo '\n================================ RESTART ================================\n'
# To find .txt as well as .sh files, use the following command.
find /Users/igor/Documents/workspace/shell/UNIXandShellProgramming \( -name '*.txt' -o -name '*.sh' \) -print
echo '\n================================ RESTART ================================\n'
# Execute commands on the files that we find.
find /Users/igor/Documents/workspace/shell/UNIXandShellProgramming -name "*.txt" -exec wc -l '{}' ';'
echo '\n================================ RESTART ================================\n'
# To display the names of the files and subdirectories in the current directory, use the following command.
find /Users/igor/Documents/workspace/shell/UNIXandShellProgramming -exec echo {} ';'
echo '\n================================ RESTART ================================\n'
# To finds the .txt files that have the 755 permission. From the files that are found, the group read permission is removed, as shown here.
# find /tmp -name '*.txt' -perm 755 -exec chmod g-r '{}' ';';

