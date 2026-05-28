# Step 5: SSH Configuration

SSH (Secure Shell) is how administrators remotely manage servers. Hardening SSH configuration is one of the first things you should do on any new server.

## Check SSH Service Status

```
systemctl status ssh
```{{exec}}

## View the Current SSH Configuration

```
cat /etc/ssh/sshd_config | grep -v "^#" | grep -v "^$"
```{{exec}}

This shows only the active (non-commented) settings.

## Backup the Config First

```
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.backup
```{{exec}}

## Harden the SSH Configuration

Apply these security settings:

```
cat >> /etc/ssh/sshd_config << 'EOF'

# Security hardening
PermitRootLogin no
PasswordAuthentication yes
MaxAuthTries 3
LoginGraceTime 30
ClientAliveInterval 300
ClientAliveCountMax 2
EOF
```{{exec}}

## Understand Each Setting

| Setting | Value | Why |
|---|---|---|
| `PermitRootLogin no` | no | Force use of sudo instead of direct root login |
| `MaxAuthTries 3` | 3 | Lock out after 3 failed attempts |
| `LoginGraceTime 30` | 30s | Disconnect if not logged in within 30 seconds |
| `ClientAliveInterval 300` | 5 min | Disconnect idle sessions after 5 minutes |

## Verify the Config Syntax

Before reloading, always check for syntax errors:

```
sshd -t
```{{exec}}

No output means the config is valid.

## Reload SSH to Apply Changes

```
systemctl reload ssh
```{{exec}}

## Check What Port SSH is Listening On

```
ss -tlnp | grep ssh
```{{exec}}

You should see SSH listening on port **22**.

## Generate an SSH Key Pair (for practice)

```
ssh-keygen -t rsa -b 4096 -f /root/.ssh/lab_key -N ""
```{{exec}}

```
ls -la /root/.ssh/
```{{exec}}

You now have:
- `lab_key` — private key (never share this!)
- `lab_key.pub` — public key (place this on servers you want to access)

✅ Once SSH is reloaded with no errors and you can see the key pair, you have completed all steps!
