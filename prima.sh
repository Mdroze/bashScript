#!/bin/bash

is_prime() {
  n=$1
  if [ $n -le 1 ]; then
    echo "bilangan ini bukan bilangan prima"
    exit 0
  fi

  for ((i = 2; i * i <= n; i++)); do
    if [ $((n % i)) -eq 0 ]; then
      echo "bilangan ini bukan bilangan prima"
      exit 0
    fi
  done

  echo "bilangan ini adalah bilangan prima"
}

if [ $# -ne 1 ]; then
  echo "Contoh penggunaan: $0 <bilangan>"
  exit 1
fi

input=$1
is_prime $input
