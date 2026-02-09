# Linux User & Access Management – Bash Automation

This project demonstrates Bash scripts used for managing Linux user access as part of routine system administration tasks.

## Scripts Included

### 1. create_users.sh
Creates a new Linux user with:
- Home directory
- Assigned primary group
- Bash shell
- Forced password change on first login

**Use case:**  
Automating user onboarding on Linux servers.

**How to Run:**
```bash
sudo chmod +x create_users.sh
sudo ./create_users.sh username groupname

### 2. disable_users.sh
- Disables a Linux user account by:
- Locking the password
- Expiring the account
- Preserving user files

Use case:
Secure offboarding and access revocation.

Run:
sudo chmod +x disable_users.sh
sudo ./disable_users.sh username


## Skills Demonstrated
- Linux user and group management
- Secure access control
- Bash scripting for system administration
- Root privilege validation
- Error handling and exit codes

Tested Environment:
- OS: Ubuntu 22.04 LTS (WSL2)
- Bash version: 5.2.21

### create_users.sh Sample Output
sudo ./create_users.sh Uche
Group 'Uche' created
passwd: password changed.
User 'Uche' created and added to group 'Uche'