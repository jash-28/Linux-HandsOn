# Lab 13 & 14

---

## Experiment Description
This lab focuses on writing shell scripts to:
1. Print system information.
2. Perform basic mathematical calculations.
3. Use redirection operators to store command outputs.

---

## Approach

### 1. Shell Script to Print System Information
This script retrieves system details, such as the CPU, memory, disk usage, and OS version.

#### Script:
```bash
#!/bin/bash

echo "System Information Report"

# Display hostname and OS details
echo "Hostname: $(hostname)"
echo "Operating System: $(lsb_release -d | cut -f2)"

# Display CPU details
echo "CPU Info:"
lscpu | grep "Model name"

# Display Memory details
echo "Memory Usage:"
free -h

# Display Disk Usage
echo "Disk Usage:"
df -h /

# Save output to a file
echo "Saving system information to system_info.txt"
(
    echo "Hostname: $(hostname)"
    echo "Operating System: $(lsb_release -d | cut -f2)"
    echo "CPU Info: $(lscpu | grep 'Model name')"
    echo "Memory Usage:"
    free -h
    echo "Disk Usage:"
    df -h /
) > system_info.txt
