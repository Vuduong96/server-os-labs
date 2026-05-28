# Step 4: Disk and Memory Usage

A server admin needs to monitor resources constantly. A full disk or out-of-memory server causes service crashes that are difficult to debug.

## Check Disk Usage (Filesystems)

```
df -h
```{{exec}}

- `-h` means human-readable (shows GB, MB instead of bytes)
- Look at the `Use%` column — if any partition is above 80%, it needs attention

## Check Disk Usage (Specific Directory)

How much space is `/var/log` using?

```
du -sh /var/log
```{{exec}}

Check top 5 largest directories under `/var`:

```
du -h /var --max-depth=1 | sort -rh | head -5
```{{exec}}

## Check Memory Usage

```
free -h
```{{exec}}

Understanding the output:
- `total` — physical RAM installed
- `used` — currently in use
- `available` — available for new processes (this is what matters)

## Check Running Processes

See what is consuming the most CPU and memory:

```
ps aux --sort=-%mem | head -10
```{{exec}}

## Real-time Monitoring

```
top
```{{exec}}

Press `q` to quit `top`.

Key columns in `top`:
- `%CPU` — CPU usage per process
- `%MEM` — memory usage per process
- `PID` — process ID (useful for killing a process)

## Create a Simple Disk Usage Report

```
echo "=== Disk Usage Report ===" > /root/disk-report.txt
echo "Generated: $(date)" >> /root/disk-report.txt
echo "" >> /root/disk-report.txt
df -h >> /root/disk-report.txt
echo "" >> /root/disk-report.txt
echo "=== Top 5 Directories ===" >> /root/disk-report.txt
du -h /var --max-depth=1 2>/dev/null | sort -rh | head -5 >> /root/disk-report.txt
cat /root/disk-report.txt
```{{exec}}

✅ Once you see the disk report file created, move to the next step!
