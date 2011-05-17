#!/bin/bash
cd ~
for i in `ls -A dotfiles`; do ln -s dotfiles/$i; done
