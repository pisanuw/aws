#!/bin/bash

sudo apt-get update
sudo apt-get -y install g++ valgrind python-pip cppcheck unzip emacs25-nox
sudo -H pip install cpplint

