# Step 1: User and Group Management

On a server, different services run as different users for security. Understanding how to manage users and groups is a fundamental admin skill.

## Create a New User

Create a user called `webadmin`:

```
useradd -m -s /bin/bash webadmin
```{{exec}}

- `-m` creates a home directory at `/home/webadmin`
- `-s /bin/bash` sets bash as the default shell

## Set a Password

```
echo "webadmin:SecurePass123" | chpasswd
```{{exec}}

## Verify the User Was Created

```
cat /etc/passwd | grep webadmin
```{{exec}}

You should see a line with `webadmin` showing their UID, GID, home directory, and shell.

## Create a Group

```
groupadd serverteam
```{{exec}}

## Add the User to the Group

```
usermod -aG serverteam webadmin
```{{exec}}

## Verify Group Membership

```
groups webadmin
```{{exec}}

You should see `webadmin : webadmin serverteam`.

## View All Groups

```
cat /etc/group | grep serverteam
```{{exec}}

## Key Files to Remember

| File | Purpose |
|---|---|
| `/etc/passwd` | User account information |
| `/etc/shadow` | Encrypted passwords |
| `/etc/group` | Group information |

✅ Once you see `webadmin` in the `serverteam` group, move to the next step!
