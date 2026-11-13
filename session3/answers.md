# Session 3: Streams, Pipes and Text Processing

## Challenge 1: Explore the manual
Reading `man grep`, the option that does the job of `grep | wc -l` by itself is `-c` (count). It prints only the number of matching lines.

```bash
grep -c "error" system.log
```

## Challenge 2: Deep search
Find all files with the `.conf` extension in `/etc` and all its subdirectories. `find` is recursive by default. `2>/dev/null` hides "Permission denied" errors.

```bash
find /etc -type f -name "*.conf" 2>/dev/null
```

## Challenge 3: Precise cut
Print only lines 1000 to 1010 of `data.csv`. `head` takes the first 1010 lines, then `tail` keeps the last 11 of those (lines 1000 to 1010).

```bash
head -n 1010 data.csv | tail -n 11
```
