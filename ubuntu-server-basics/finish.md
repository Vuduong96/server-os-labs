# 🎉 Lab Complete — Ubuntu Server Basics!

Excellent work! You have practiced the core skills every Linux server administrator needs.

## What You Accomplished

✅ Created a user and group, managed memberships  
✅ Set correct file permissions using `chmod` and `chown`  
✅ Controlled services using `systemctl`  
✅ Monitored disk and memory usage  
✅ Hardened SSH configuration and generated a key pair  

## Key Commands to Remember

| Task | Command |
|---|---|
| Create user | `useradd -m -s /bin/bash username` |
| Add to group | `usermod -aG groupname username` |
| Set permissions | `chmod 640 file` |
| Set ownership | `chown user:group file` |
| Start service | `systemctl start service` |
| Enable on boot | `systemctl enable service` |
| Check disk | `df -h` |
| Check memory | `free -h` |
| Check processes | `ps aux --sort=-%mem` |
| SSH config check | `sshd -t` |

## Coming Up Next

In **Lab 2 (DHCP Server)** you will use many of these skills:
- `systemctl` to manage the DHCP service
- File editing to configure `/etc/dhcp/dhcpd.conf`
- Log reading to troubleshoot lease issues

## Review Questions

> 1. What is the difference between `systemctl restart` and `systemctl reload`?
> 2. Why should `PermitRootLogin` be set to `no` on a production server?
> 3. A config file contains database passwords. What permission (numeric) would you set and why?

Think through these before your next class! 💡
