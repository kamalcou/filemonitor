#!/usr/bin/env bash

all:
	@echo "\033[92minstalling required packages not including python3\033[0m"
	sudo apt-get install bpfcc-tools linux-headers-$(uname -r)
	@echo "\033[92mcopying files to /usr/local/etc/filemonitor\033[0m"
	sudo mkdir -p /usr/local/etc/filemonitor
	sudo cp /home/exouser/test_filemonitor/filemonitor/config.txt /usr/local/etc/filemonitor/config.txt
	sudo cp /home/exouser/test_filemonitor/filemonitor/cli.py /usr/local/etc/filemonitor/cli.py
	sudo cp /home/exouser/test_filemonitor/filemonitor/filemonitor.c /usr/local/etc/filemonitor/filemonitor.c
	sudo cp /home/exouser/test_filemonitor/filemonitor/filemonitor.py /usr/local/etc/filemonitor/filemonitor.py
	sudo cp /home/exouser/test_filemonitor/filemonitor/run.sh /usr/local/bin/filemonitor
	sudo chmod 755 /usr/local/bin/filemonitor
	@echo "\033[92mInstall Success:\n\033[0m Usage: filemonitor\n NOTE: Use sudo when required"