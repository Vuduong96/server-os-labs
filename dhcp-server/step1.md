# Step 1: Install the DHCP Server Package

The DHCP server package for Ubuntu is called `isc-dhcp-server`. ISC stands for **Internet Systems Consortium**, the organisation that maintains this software.

## Update Package List

First, update your package list to make sure you get the latest version:

```
apt-get update
```{{exec}}

## Install the Package

Now install the DHCP server:

```
apt-get install -y isc-dhcp-server
```{{exec}}

> **Note:** You may see a warning that the service failed to start. This is normal — we haven't configured it yet!

## Verify Installation

Check that the package is installed:

```
dpkg -l isc-dhcp-server
```{{exec}}

You should see a line starting with `ii` which means the package is **installed**.

Also check the main configuration file exists:

```
ls -la /etc/dhcp/dhcpd.conf
```{{exec}}

✅ If you see the file listed, you are ready for the next step!
