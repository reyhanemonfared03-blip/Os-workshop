# Session 5: Processes, Signals and Automation

## Practical Mission: Hunting resource-heavy processes

### Step 1: Find the top 5 memory-consuming processes and save the output
`ps aux --sort=-%mem` sorts processes by memory usage (highest first). `head -n 6` keeps the header line plus the top 5.

```bash
ps aux --sort=-%mem | head -n 6 > top_mem.txt
```

### Step 2: View the saved file
```bash
cat top_mem.txt
```

### Step 3: Pause the heaviest process (SIGSTOP), assuming its PID is 8899
```bash
kill -STOP 8899
```

### Step 4: The process does not respond, final shot (SIGKILL)
```bash
kill -9 8899
```

### Step 5: Cron job to clear the cache every Friday night at 2:00
Open the root crontab with `sudo crontab -e` and add this line:

```bash
0 2 * * 5 sync; echo 3 > /proc/sys/vm/drop_caches
```

Format: minute hour day-of-month month day-of-week (5 = Friday).

## Mental Challenges

### 1. What is a Zombie Process and why does kill -9 not remove it?
A zombie process is a process that has finished running, but its parent has not yet read its exit status with `wait()`. Its entry stays in the process table. `kill -9` cannot remove it because it is already dead, so there is nothing to kill. The fix is to terminate or restart the parent process, so that init/systemd adopts and cleans up the zombie.

### 2. Structure analysis: dmesg | grep -i error > kernel_errors.log
- `dmesg` prints the kernel messages.
- `grep -i error` keeps only the lines containing "error" (case-insensitive).
- `> kernel_errors.log` saves the result into a file (overwrites it if it exists).

### 3. Why is "Useless Use of Cat" considered an architectural mistake?
`cat file | grep x` creates an extra process and an extra pipe for no reason. `grep x file` does the same job directly and faster, because grep can read the file itself.

## Proof of execution
The real terminal output of these commands is saved in `output.txt`. Steps 3 and 4 were tested on a test process (`sleep 500`) instead of a fake PID.
