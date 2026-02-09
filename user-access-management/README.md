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

### create_users.sh Sample Output when the script was executed
sudo ./create_users.sh Vincent
Group 'Vincent' created
passwd: password changed.
User 'Vincent' created and added to group 'Vincent'
Temporary password set. User must change password on first login.

-- Logged in as Vincent then got this:
 su - Vincent
Password:
You are required to change your password immediately (administrator enforced).
Changing password for Vincent.
Current password:

### disable_users.sh Sample Output when the script was executed
sudo ./disable_users.sh Vincent
User 'Vincent' has been disabled

--Tried logging as Vincent to confirm
 su - Vincent
Password:
su: Authentication failure