# Step 3: Configure the DHCP Subnet

Now we configure the actual DHCP settings — the subnet, IP range, gateway, and DNS server.

## Backup the Original Config

Always backup before editing configuration files:

```
cp /etc/dhcp/dhcpd.conf /etc/dhcp/dhcpd.conf.backup
```{{exec}}

## Write the New Configuration

Replace the configuration file with our settings:

```
cat > /etc/dhcp/dhcpd.conf << 'EOF'
# Global settings
default-lease-time 600;
max-lease-time 7200;
authoritative;

# Subnet declaration
subnet 192.168.1.0 netmask 255.255.255.0 {
  range 192.168.1.100 192.168.1.200;
  option routers 192.168.1.1;
  option subnet-mask 255.255.255.0;
  option domain-name-servers 8.8.8.8, 8.8.4.4;
  option domain-name "lab.local";
}
EOF
```{{exec}}

## Understand the Configuration

| Setting | Value | Meaning |
|---|---|---|
| `default-lease-time` | 600 | IP assigned for 10 minutes by default |
| `max-lease-time` | 7200 | Maximum IP lease is 2 hours |
| `subnet` | 192.168.1.0/24 | Our network |
| `range` | .100 – .200 | IPs available for clients |
| `routers` | 192.168.1.1 | Default gateway |
| `domain-name-servers` | 8.8.8.8 | Google DNS |

## Verify the Configuration

```
cat /etc/dhcp/dhcpd.conf
```{{exec}}

✅ Make sure the subnet block appears correctly before continuing.
