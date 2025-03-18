#!/bin/bash

# Prompt user to enter a system command
echo "Enter a Linux command to execute:"
read user_command  # Read user input

# Execute the command and store the output in a file
$user_command > command_output.txt
echo "Command output saved to command_output.txt"

# Display the system configuration
echo "Your System Configuration:"
lscpu  # Display CPU information

# Prompt user to enter two numbers for mathematical operations
echo "Enter Two Numbers:"
read Number1
read Number2

# Loop for continuous operation until user exits
while true; do
    echo "Enter operation (+, -, *, /) or type 'exit' to quit:"
    read char  # Read operation input

    case $char in
        '+') echo "Addition: $((Number1 + Number2))" ;;
        '-') echo "Subtraction: $((Number1 - Number2))" ;;
        '*') echo "Multiplication: $((Number1 * Number2))" ;;
        '/') 
            if [ "$Number2" -ne 0 ]; then
                echo "Division: $((Number1 / Number2))"
            else
                echo "Error: Division by zero is not allowed."
            fi
            ;;
        "exit") 
            echo "Exiting..."
            exit 0
            ;;
        *) echo "Invalid input. Please enter a valid operation." ;;
    esac
done