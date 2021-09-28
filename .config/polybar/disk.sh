#!/usr/bin/env bash

percent=$( df -H / | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 }' )
spaceRemain=$( df -H / | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $4 }' )

echo "$percent • $spaceRemain"
