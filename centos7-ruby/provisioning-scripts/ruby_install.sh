#!/bin/sh

if [ ! -e '/home/vagrant/.rbenv/plugins/ruby-build' ]; then
  sudo yum -y install openssl-devel
  sudo yum -y install ImageMagick-devel
  sudo yum -y install libxml2-devel
  sudo yum -y install libxslt-devel
  # http://qiita.com/takuya3/items/e590642f0ee1577cfbf0
  sudo yum -y install libffi-devel.x86_64
  sudo yum -y install readline-devel

  echo 'gem: --no-ri --no-rdoc' > ~/.gemrc

  source ~/.bashrc
  git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
    
  # https://github.com/ruby/ruby/releases
  rbenv install 2.2.3
  rbenv global 2.2.3

  git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
  gem install bundler
  gem install reditor
  gem install execjs
fi