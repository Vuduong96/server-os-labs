# Step 2: Configure the Network Interface

The DHCP server needs to know **which network interface** it should listen on for client requests.

## Check Available Interfaces

First, see what network interfaces are available on this server:

```
ip link show
```{{exec}}

You will see interfaces listed. Look for one that is **not** `lo` (loopback). It is likely named `eth0` or `ens3`.

## Edit the Interface Configuration

Open the DHCP server defaults file:

```
nano /etc/default/isc-dhcp-server
```{{exec}}

Find the line that says:
```
INTERFACESv4=""
```

Change it to (use the interface name you found above, typically `eth0`):
```
INTERFACESv4="eth0"
```

Save and exit: press `Ctrl+X`, then `Y`, then `Enter`.

## Verify Your Change

Check that your change was saved correctly:

```
grep INTERFACESv4 /etc/default/isc-dhcp-server
```{{exec}}

✅ You should see `INTERFACESv4="eth0"` (or your interface name).
