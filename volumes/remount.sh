#!/bin/bash

sudo kextunload -b com.apple.driver.AppleSDXC
sudo kextload -b com.apple.driver.AppleSDXC
