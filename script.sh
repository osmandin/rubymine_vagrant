#!/bin/bash

echo "Preparing your box!"
sudo apt-get -y install curl
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --rails
source /usr/local/rvm/scripts/rvm
# switch to a different ruby (as a test)
rvm install 2.1.3
gem install bundler
cd /vagrant
echo "Directory contents":
ls
bundle install
bundle update
# check installation
#echo "Uglifier path:"
#gem which uglifier
sudo apt-get -y install nodejs
# enable RubyMine debug
sudo chmod -R 777 /usr/local/rvm/gems/ruby-2.1.3
rvm --default use 2.1.3
echo "Ruby being used:"
rvm which ruby
echo "Done preparing your box! Happy coding!"