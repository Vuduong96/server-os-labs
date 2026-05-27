# Step 5: Test and Verify DHCP Leases

## Check the Leases File

When a client receives an IP from your DHCP server, it is recorded in the leases file:

```
cat /var/lib/dhcp/dhcpd.leases
```{{exec}}

This may be empty right now since no clients have connected yet — that is normal in a lab environment.

## Simulate a DHCP Request

We can test the DHCP server is responding correctly using `dhcping` or by checking the configuration syntax:

```
dhcpd -t -cf /etc/dhcp/dhcpd.conf
```{{exec}}

You should see:
```
Configuration file errors encountered -- exiting
```
or
```
No errors found
```

A clean output with **no errors** means your configuration is valid!

## Check the DHCP Server Logs

```
journalctl -u isc-dhcp-server --since "10 minutes ago"
```{{exec}}

## Summary of Key Commands

| Command | Purpose |
|---|---|
| `systemctl start isc-dhcp-server` | Start DHCP service |
| `systemctl stop isc-dhcp-server` | Stop DHCP service |
| `systemctl restart isc-dhcp-server` | Restart after config change |
| `systemctl status isc-dhcp-server` | Check if running |
| `cat /var/lib/dhcp/dhcpd.leases` | View assigned IPs |
| `journalctl -u isc-dhcp-server` | View logs |

✅ **Congratulations!** You have successfully set up a DHCP server on Ubuntu!
