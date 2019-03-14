#!/bin/bash

sudo apt-get update
sudo apt-get -y install g++ valgrind python-pip cppcheck unzip emacs25-nox default-jdk
sudo -H pip install cpplint

