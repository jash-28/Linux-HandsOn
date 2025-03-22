# Lab 13 & 14

---

## Experiment Description
This lab focuses on creating and executing shell scripts in Linux to gather system information and perform basic mathematical operations. Additionally, redirection operators are used to store command outputs in files.

---

## Approach

### 1. Steps to Create and Run a Shell Script
1. Open the terminal.
2. Create a new shell script file using the `touch` command:
   ```bash
   touch script.sh
   ```
3. Open the file in a text editor:
   ```bash
   nano script.sh
   ```
4. Write the script inside the file.
5. Save and exit the editor (`CTRL + X`, then `Y`, and `Enter`).
6. Give execution permissions to the script:
   ```bash
   chmod +x script.sh
   ```
7. Run the script:
   ```bash
   ./script.sh
   ```
8. Follow the prompts to enter inputs and perform calculations.
9. Check the stored output in the generated file.

---

### 2. Shell Script to Print System Information

```bash
#!/bin/bash
# Display System Information
echo "System Information:" > system_info.txt
echo "--------------------------" >> system_info.txt

echo "Hostname: $(hostname)" >> system_info.txt
echo "User: $(whoami)" >> system_info.txt
echo "Uptime: $(uptime -p)" >> system_info.txt
echo "Memory Usage: " >> system_info.txt
free -h >> system_info.txt
echo "Disk Usage: " >> system_info.txt
df -h >> system_info.txt

echo "System information saved to system_info.txt"
```

#### Screenshot:
![System Information Script](screenshots/system_info_script.png)

---

### 3. Shell Script to Perform Basic Mathematical Calculations

```bash
#!/bin/bash
# Simple Calculator
echo "Enter first number: "
read num1
echo "Enter second number: "
read num2

echo "Select operation: +, -, *, /"
read op

case $op in
    +) echo "Result: $(($num1 + $num2))" > calc_output.txt ;;
    -) echo "Result: $(($num1 - $num2))" > calc_output.txt ;;
    \*) echo "Result: $(($num1 * $num2))" > calc_output.txt ;;
    /) if [ $num2 -ne 0 ]; then
           echo "Result: $(($num1 / $num2))" > calc_output.txt
       else
           echo "Error: Division by zero is not allowed."
       fi ;;
    *) echo "Invalid operation." ;;
esac

echo "Calculation result stored in calc_output.txt"
```

#### Screenshot:
![Mathematical Calculation Script](screenshots/calc_script.png)

---

## Conclusion
In this lab, you practiced:
1. Creating and executing shell scripts in Linux.
2. Printing system information and storing it in a file.
3. Performing basic mathematical calculations using user inputs.
4. Using redirection operators to store command outputs.

Mastering shell scripting is essential for automating tasks and managing system operations efficiently.

