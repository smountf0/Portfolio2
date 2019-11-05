#!/bin/bash
echo "Your shopping list is as follows:"
awk 'BEGIN {printf("%-13s %-10s %s\n" ,"Item", "Quantity", "Price")}'
awk -F "\"*,\"*" '{printf("%-13s %-10s %s\n" ,$1,$2,$3)}' shopping.csv