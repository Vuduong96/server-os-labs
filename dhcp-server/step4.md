# Step 4: Start and Enable the DHCP Service

Now that the configuration is ready, let's start the DHCP server.

## Start the Service

```
systemctl start isc-dhcp-server
```{{exec}}

## Enable on Boot

This makes DHCP start automatically when the server reboots:

```
systemctl enable isc-dhcp-server
```{{exec}}

## Check Service Status

```
systemctl status isc-dhcp-server
```{{exec}}

Look for the line that says:
```
Active: active (running)
```

## Troubleshooting

If the service fails to start, check the logs:

```
journalctl -u isc-dhcp-server -n 20
```{{exec}}

Common problems:
- **Wrong interface name** → go back to Step 2 and check your interface name
- **Config syntax error** → go back to Step 3 and check the config file carefully

## Verify the Port is Listening

DHCP uses **UDP port 67**. Check it is open:

```
ss -ulnp | grep 67
```{{exec}}

✅ You should see `dhcpd` listening on port 67.
