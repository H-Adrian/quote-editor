#!/bin/bash

bundle install
rake db:create
/usr/local/rvm/bin/rvm install 3.3.3

