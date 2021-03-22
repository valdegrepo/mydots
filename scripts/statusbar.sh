#!/bin/bash

print_date() {
    date "+%H:%M"
}

while true
do
    xsetroot -name "$(print_date)"
    sleep 10s
done
