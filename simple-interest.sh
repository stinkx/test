#!/bin/bash

echo "=== Simple Interest Calculator ==="

# Taking user input
read -p "Enter Principal Amount: " principal
read -p "Enter Rate of Interest (in %): " rate
read -p "Enter Time Period (in years): " time

# Validate input (basic check)
if [[ -z "$principal" || -z "$rate" || -z "$time" ]]; then
    echo "Error: All fields are required."
    exit 1
fi

# Calculate Simple Interest
# Formula: SI = (P * R * T) / 100
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate total amount
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display results
echo "-----------------------------"
echo "Principal Amount : $principal"
echo "Rate of Interest : $rate %"
echo "Time Period      : $time years"
echo "-----------------------------"
echo "Simple Interest  : $simple_interest"
echo "Total Amount     : $total_amount"
