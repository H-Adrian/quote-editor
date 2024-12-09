#!/bin/bash

bundle install
rake db:create
/usr/local/rvm/bin/rvm install 3.3.3

sudo apt update
sudo apt install --no-install-recommends -y nodejs npm
sudo npm install -g yarn

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.1
echo '. "$HOME/.asdf/asdf.sh"' >> ~/.bashrc
echo '. "$HOME/.asdf/completions/asdf.bash"' >> ~/.bashrc

source ~/.bashrc

asdf plugin add nodejs
asdf install nodejs latest

rails turbo:install
rails stimulus:install
rails css:install:sass
rails javascript:install:esbuild

asdf plugin add yarn
asdf install yarn latest

asdf global nodejs latest
asdf global yarn latest

npm install --save-exact --save-dev esbuild



