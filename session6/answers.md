# Session 6: Bash Scripting Fundamentals

## Challenge 1: Engineering in the terminal
A script (`rectangle.sh`) that reads the length and width of a rectangle with `read -p`, then calculates the area and perimeter using the modern arithmetic syntax `$(( ... ))`.

Run:
```bash
./rectangle.sh
```

Key points:
- `#!/bin/bash` (shebang) tells the OS to run the file with Bash.
- `read -p "text" VAR` shows a prompt and reads input in one line.
- `$(( ... ))` does math (in Bash everything is a string by default).
- The file needs `chmod +x` and is run with `./`.

## Challenge 2: Terminal workshop (user existence check)
A script (`check_user.sh`) that takes a username as the first command-line argument (`$1`) and uses `grep` on `/etc/passwd` to check if the user exists.

Run:
```bash
./check_user.sh root
```

Key points:
- `$1` is the first argument, `$#` is the number of arguments, `$0` is the script name.
- `grep -q "^$1:"` searches silently (`-q`) for a line starting with the username followed by `:`.
- `if ...; then ... else ... fi` chooses the message.
- `exit 1` stops the script with an error code if no argument is given.

## Proof of execution
The scripts are in this folder (`rectangle.sh`, `check_user.sh`) and their real terminal output is saved in `output.txt`.
