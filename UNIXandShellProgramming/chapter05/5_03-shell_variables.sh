#!/usr/bin/env sh

set
echo '\n================================ RESTART ================================\n'
echo $PATH
echo '\n================================ RESTART ================================\n'
echo $HOME
echo '\n================================ RESTART ================================\n'
echo $TERM
echo '\n================================ RESTART ================================\n'
# A variable defined in a process is only local to the process in which it is defined and is not available in a
# child process. However, when it is exported, it is available recursively to all child processes.
# export variable[=value]

radius=5
echo "\$radius = $radius"
sh -c 'echo "Create new shell: \$radius = $radius"'
echo "Return to old shell: \$radius = $radius"

echo '\n================================ RESTART ================================\n'

radius=5
echo "\$radius = $radius"
export radius
sh -c 'echo "The new shell has a copy of radius: \$radius = $radius"; radius=30; echo "The copy gets a new value \$radius = $radius"'
echo "Return to old shell. We get the original value of \$radius = $radius"
unset radius

echo '\n================================ RESTART ================================\n'

radius=5
echo "Global variable \$radius = $radius"
( let "radius+=1"; echo "\$radius INSIDE subshell = $radius" )
echo "\$radius OUTSIDE subshell = $radius"

exit 0