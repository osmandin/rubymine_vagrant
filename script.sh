#!/bin/bash

echo "Preparing your box!"
sudo apt-get -y install curl
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --rails
source /usr/local/rvm/scripts/rvm
rvm install 2.1.3
gem install bundler
cd /vagrant
bundle install
bundle update
sudo apt-get -y install nodejs
sudo chmod -R 777 ruby-2.3.0
echo "Done preparing your box!"