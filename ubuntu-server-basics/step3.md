# Step 3: Managing Services with systemctl

`systemctl` is the command used to manage services (daemons) on Ubuntu Server. You will use this constantly when administering servers.

## Install a Service to Practice With

Install the Apache web server as our practice service:

```
apt-get install -y apache2
```{{exec}}

## Check Service Status

```
systemctl status apache2
```{{exec}}

Look for `Active: active (running)` — Apache should start automatically after install.

## Stop the Service

```
systemctl stop apache2
```{{exec}}

Verify it stopped:

```
systemctl status apache2 | grep Active
```{{exec}}

## Start the Service

```
systemctl start apache2
```{{exec}}

## Restart vs Reload

```
# Restart: stops then starts (brief downtime)
systemctl restart apache2

# Reload: reloads config without downtime
systemctl reload apache2
```{{exec}}

## Enable and Disable on Boot

```
# Enable: starts automatically on boot
systemctl enable apache2

# Disable: does NOT start on boot
# systemctl disable apache2
```{{exec}}

## Check if Enabled

```
systemctl is-enabled apache2
```{{exec}}

## List All Running Services

```
systemctl list-units --type=service --state=running
```{{exec}}

## Essential systemctl Commands Summary

| Command | Action |
|---|---|
| `systemctl start <service>` | Start a service |
| `systemctl stop <service>` | Stop a service |
| `systemctl restart <service>` | Restart a service |
| `systemctl status <service>` | Check status |
| `systemctl enable <service>` | Auto-start on boot |
| `systemctl disable <service>` | Don't auto-start |

✅ Once Apache is running and enabled, move to the next step!
