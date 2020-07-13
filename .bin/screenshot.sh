#!/bin/bash

if [ ! -d ~/Pictures/screenshots ]; then mkdir -p ~/Pictures/screenshots; fi

gm import root ~/Pictures/screenshots/screenshot-$(date +%s).png

