#!/bin/bash

# Simple Calculator Script

echo "Enter first number: "
read num1

echo "Enter second number: "
read num2

echo "Choose operation (+, -, *, /): "
read op

case $op in
  +)
    result=$((num1 + num2))
    ;;
  -)
    result=$((num1 - num2))
    ;;
  \*)
    result=$((num1 * num2))
    ;;
  /)
    if [ $num2 -ne 0 ]; then
      result=$((num1 / num2))
    else
      echo "Error: Division by zero!"
      exit 1
    fi
    ;;
  *)
    echo "Invalid operation!"
    exit 1
    ;;
esac

echo "Result: $result"