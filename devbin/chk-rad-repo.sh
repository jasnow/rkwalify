#!/usr/bin/env bash

set -x

rm -rf $HOME/Projects/ruby-advisory-db-rkw
cd $HOME/Projects

git clone git@github.com:jasnow/ruby-advisory-db.git ruby-advisory-db-rkw

cd ruby-advisory-db-rkw

sed -e "/kwalify/s,'~> 0.1',path: '../rkwalify'," \
    -e "s,'kwalify','rkwalify'," Gemfile > /tmp/$$_X
mv /tmp/$$_X Gemfile

git diff

rm -f Gemfile.lock ; bundle install

bundle exec rake
