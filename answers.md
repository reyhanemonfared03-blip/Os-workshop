 HEAD
chmod g-x deploy.sh
ls -l deploy.sh


# Session 3 Answers

## Challenge 1
Option -c of grep counts matching lines (same as grep | wc -l):
```bash
grep -c "error" system.log
```

## Challenge 2
```bash
find /etc -type f -name "*.conf" 2>/dev/null
```

## Challenge 3
```bash
head -n 1010 data.csv | tail -n 11
```
 6661eeb33a6d5a7aa9524d8f4343431574f8c065
