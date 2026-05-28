# Step 2: File Permissions

File permissions control who can read, write, or execute files. This is critical for server security — config files with wrong permissions can expose sensitive data.

## Understanding Permission Notation

```
-rwxr-xr--
 ^^^  ^^^  ^^^
 |    |    └── Others: read only
 |    └─────── Group: read + execute
 └──────────── Owner: read + write + execute
```

Each set of 3 characters = **r** (read=4), **w** (write=2), **x** (execute=1)

## Create a Test Directory and Files

```
mkdir -p /srv/serverteam
touch /srv/serverteam/config.conf
touch /srv/serverteam/deploy.sh
```{{exec}}

## Set Ownership

Give the directory to `webadmin` and group `serverteam`:

```
chown -R webadmin:serverteam /srv/serverteam
```{{exec}}

## Set Permissions on the Config File

Config files should NOT be executable. Owner can read/write, group can read, others get nothing:

```
chmod 640 /srv/serverteam/config.conf
```{{exec}}

## Set Permissions on the Script

Scripts need to be executable:

```
chmod 750 /srv/serverteam/deploy.sh
```{{exec}}

## Verify the Permissions

```
ls -la /srv/serverteam/
```{{exec}}

You should see:
```
-rw-r-----  webadmin serverteam  config.conf
-rwxr-x---  webadmin serverteam  deploy.sh
```

## Numeric Permissions Quick Reference

| Number | Permission |
|---|---|
| 7 | rwx (read + write + execute) |
| 6 | rw- (read + write) |
| 5 | r-x (read + execute) |
| 4 | r-- (read only) |
| 0 | --- (no permission) |

✅ Once permissions show `640` for config.conf and `750` for deploy.sh, move on!
