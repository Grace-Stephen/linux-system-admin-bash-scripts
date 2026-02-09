# Linux Server Health Monitoring – Bash Script

This project demonstrates a Bash script used for performing routine server health checks and basic troubleshooting.

## What the Script Checks

- System hostname
- Server uptime
- CPU load averages
- Memory usage
- Disk usage
- Top memory-consuming processes
- Basic network connectivity (Uses google.com as a placeholder endpoint to confirm network access; can be replaced with any target host as needed.)

## Use Cases

- Routine server maintenance
- Initial diagnostics during incidents
- Technical support and troubleshooting
- Quick health checks on VPS or cloud servers

## How to Run

```bash
chmod +x system_health_check.sh
./system_health_check.sh

### system_health_check.sh Sample Output when the script was executed
