#!/bin/bash

# Simple Interest Calculator

echo "===== Simple Interest Calculator ====="

# Get input from user
read -p "Enter Principal Amount: " principal
read -p "Enter Rate of Interest: " rate
read -p "Enter Time Period (in years): " time

# Calculate Simple Interest
simple_interest=$(awk "BEGIN {printf \"%.2f\", ($principal * $rate * $time) / 100}")

# Calculate Total Amount
total_amount=$(awk "BEGIN {printf \"%.2f\", $principal + $simple_interest}")

# Display results
echo ""
echo "===== Calculation Result ====="
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $simple_interest"
echo "Total Amount: $total_amount"

echo "===================================="
