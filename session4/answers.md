# Session 4: Users, Groups and Permissions

## Terminal Challenge
Write a command that removes only the execute permission of the script `deploy.sh` from the group, without changing any other permissions (using symbolic mode).

```bash
chmod g-x deploy.sh
```

Explanation: `g` means group, `-` means remove, and `x` means execute. Permissions of the owner and others stay unchanged.

## Theory Challenge
If the system umask is set to 027, what will be the default permission of a newly created directory in symbolic form?

Answer: `rwxr-x---` (octal 750)

Calculation: a new directory starts from 777. Subtracting the umask: 777 - 027 = 750.

- Owner: 7 = rwx (full access)
- Group: 5 = r-x (read and execute)
- Others: 0 = --- (no access)

## Proof of execution
The real terminal output of these commands is saved in `output.txt`.
