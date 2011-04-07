#!/bin/sh
export PATH=/var/lib/gems/1.8/bin/:$HOME/.gem/ruby/1.8/bin
echo "http://0.0.0.0:9393/"
rackup config.ru -o 0.0.0.0 -p 9393
#thin -C thin-prod.yml -R config.ru start
