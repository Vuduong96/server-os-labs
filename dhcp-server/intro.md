# DHCP Server Setup on Ubuntu

## What is DHCP?

**DHCP (Dynamic Host Configuration Protocol)** is a network service that automatically assigns IP addresses and other network settings to devices on a network.

Without DHCP, a network administrator would need to manually configure the IP address, subnet mask, gateway, and DNS for every single device. DHCP automates this completely.

## How DHCP Works

```
Client                        DHCP Server
  |                               |
  |--- DHCPDISCOVER ------------->|   "I need an IP!"
  |<-- DHCPOFFER -----------------| "Here, take 192.168.1.10"
  |--- DHCPREQUEST -------------->|   "Yes, I want that IP"
  |<-- DHCPACK -------------------|   "It's yours for 24 hours"
```

## What You Will Learn

In this lab you will:
1. Install `isc-dhcp-server` on Ubuntu
2. Configure the network interface for DHCP
3. Define a subnet and IP address range
4. Start and enable the DHCP service
5. Verify that IP leases are being assigned

## Lab Environment

- **OS:** Ubuntu Server
- **DHCP Package:** isc-dhcp-server
- **Subnet:** 192.168.1.0/24
- **IP Range:** 192.168.1.100 – 192.168.1.200

> **Tip:** If you make a mistake at any step, you can reset the lab using the reset button.

Click **START** when you are ready!
