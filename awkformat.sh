#!/bin/bash
echo "Your shopping list is as follows:"
awk -F "\"*,\"*" '{print $1}' shopping.csv
