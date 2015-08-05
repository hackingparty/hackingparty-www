#!/bin/sh
#config.ru -o 0.0.0.0 -p 9393
bundle exec rackup --host 0.0.0.0 --port 9393 config.ru 
