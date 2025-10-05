#!/bin/bash

touch /tmp/mirrors
reflector > /tmp/mirrors

rankmirrors -n 10 /tmp/mirrors > /etc/pacman.d/mirrorlist
