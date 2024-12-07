#!/bin/bash

hosts="$@"

for host in $hosts
do
  ping -W 5 -c1 "$host" &>/dev/null && echo -e "[OK]\t $host" || echo -e "[FAIL]\t $host"
done
