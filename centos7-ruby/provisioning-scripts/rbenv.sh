#!/bin/sh

if [ ! -e '/home/vagrant/.rbenv' ]; then
  sudo yum -y install gcc-c++
  sudo yum -y install openssl-devel
  sudo yum -y install git
  git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
  echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
  exec $SHELL -l
fi