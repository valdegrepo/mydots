#!/bin/bash

print_date() {
    date "+%H:%M"
}

print_kb_layout() {
  layout=$(xset -q | grep LED | awk '{ print $10 }')

  if [[ "$layout" == "00000002" || "$layout" == "00000000" ]]
  then
    layout="EN"
  elif [[ "$layout" == "00001002" || "$layout" == "00001000" ]]; then
    layout="RU"
  fi

  echo $layout
}

while true
do
    xsetroot -name "  $(print_kb_layout) | $(print_date) "
    sleep 0.3s;
done
