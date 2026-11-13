#!/bin/bash
# Challenge 1: area and perimeter of a rectangle

read -p "Enter length: " LENGTH
read -p "Enter width: " WIDTH

AREA=$((LENGTH * WIDTH))
PERIMETER=$((2 * (LENGTH + WIDTH)))

echo "Area: $AREA"
echo "Perimeter: $PERIMETER"
