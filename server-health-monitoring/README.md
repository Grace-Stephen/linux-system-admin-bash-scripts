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
sudo ./system_health_check.sh
[sudo] password for grace_stephen:
==============================
 Linux Server Health Check
==============================

Hostname:
DESKTOP-N30K5AB

Uptime:
up 1 hour, 21 minutes

CPU Load (last 1, 5, 15 minutes):
 0.00, 0.00, 0.00

Memory Usage:
               total        used        free      shared  buff/cache   available
Mem:           3.7Gi       458Mi       3.3Gi       3.1Mi       141Mi       3.3Gi
Swap:          1.0Gi          0B       1.0Gi

Disk Usage:
/dev/sdc       1007G  2.2G  954G   1% /

Top 5 Memory-Consuming Processes:
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         409  0.0  0.5 107028 22520 ?        Ssl  11:52   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root         280  0.0  0.4  66676 19232 ?        S<s  11:52   0:01 /usr/lib/systemd/systemd-journald
root         383  0.0  0.4 1756096 16056 ?       Ssl  11:52   0:00 /usr/libexec/wsl-pro-service -vv
root           1  0.0  0.3  21380 12856 ?        Ss   11:51   0:02 /sbin/init
systemd+     366  0.0  0.3  21452 11992 ?        Ss   11:52   0:00 /usr/lib/systemd/systemd-resolved

Network Connectivity Test (ping google.com):
Network: OK

Health check completed at: Mon Feb  9 13:12:57 WAT 2026