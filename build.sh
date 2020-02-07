#!/bin/sh

#bundle config build.libv8 --with-system-v8
#bundle config build.therubyracer --with-v8-dir

set -x
#export NOKOGIRI_USE_SYSTEM_LIBRARIES=1
#export PKG_CONFIG_PATH=/usr/local/opt/imagemagick@6/lib/pkgconfig
#export PATH=/usr/local/Cellar/imagemagick@6/6.9.9-22/bin:$PATH

bundle_dir=./vendor/bundle
if [ -d "$bundle_dir" ] ; then
    /bin/rm -rf "$bundle_dir"
    bundle update    
else
    /bin/rm -rf "$bundle_dir"
    bundle install --path "$bundle_dir"
fi





