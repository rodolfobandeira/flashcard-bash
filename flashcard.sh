#!/bin/bash

set -e

# Configuration
FILE="Devops_Engineer_Certification.csv"

main() {
  clear
  IFS=';' read -a q <<<$(shuf -n 1 "$FILE")

  # awk --field-separator=";" '{print $1}'

  printf "=======================================================\n"
  printf "Category: ${q[0]} \n\n"
  printf "Question: ${q[1]} \n"
  read _
  printf "Answer: ${q[2]} \n"
  read _
}

while true; do
  main
done
