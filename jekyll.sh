#!/bin/bash

# @see https://help.github.com/articles/using-jekyll-with-pages/
# sudo gem install bundler
# echo "source 'https://rubygems.org'" > Gemfile
# echo "gem 'github-pages'" >> Gemfile
# bundle install
# @note if that fails on OS X El Capitan, try: 
#       xcode-select --install
#		sudo chown -R $(whoami):admin /usr/local
#       gem uninstall jekyll;gem install jekyll
# @note updating:
#		bundle update
#		[sudo] gem update jekyll
bundle exec jekyll serve
