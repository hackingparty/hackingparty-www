#!/bin/sh
export PATH=/var/lib/gems/1.8/bin/:$HOME/.gem/ruby/1.8/bin
shotgun config.ru -o 0.0.0.0 -p 9393
