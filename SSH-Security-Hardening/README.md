# SSH Security Hardening – Bash Script

This script applies basic security hardening to SSH on Linux servers.

## What the Script Does

- Backs up the current `sshd_config` file
- Disables root login via SSH
- Disables password authentication (key-based login enforced)
- Restarts the SSH service to apply changes

## Use Cases

- Secure Linux servers for remote access
- Meet basic compliance and security standards
- Prepare servers for production deployment

## How to Run

```bash
chmod +x ssh_hardening.sh
sudo ./ssh_hardening.sh

### ssh_hardening.sh Sample Output when the script was executed
sudo ./ssh_hardening.sh
[sudo] password for grace_stephen:
Backing up current sshd_config...
Disabling root login via SSH...
Disabling password authentication (enforce key-based auth)...
Restarting SSH service...
SSH security hardening applied at Mon Feb  9 14:25:18 WAT 2026