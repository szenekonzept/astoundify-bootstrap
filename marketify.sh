#!/bin/bash

##
# Theme
##
rm -rf htdocs/wp-content/themes/*

# give one default theme
wp theme install twentytwelve

# install and activate listify
cd htdocs/wp-content/themes

git clone git@github.com:astoundify/marketify.git
wp theme activate marketify

# back to root
cd ../../../

##
# Plugins
##

rm -rf htdocs/wp-content/plugins/*

cd htdocs/wp-content/plugins

# some .org stuff
wp plugin install debug-bar --activate
wp plugin install debug-queries --activate
wp plugin install query-monitor --activate

wp plugin install nav-menu-roles --activate
wp plugin install rtl-tester --activate
wp plugin install user-role-editor --activate
wp plugin install user-switching --activate

# edd
git clone git@github.com:easydigitaldownloads/Easy-Digital-Downloads.git easy-digital-downloads
wp plugin activate easy-digital-downloads

git clone git@github.com:easydigitaldownloads/edd-wish-lists.git
wp plugin activate edd-wish-lists

git clone git@github.com:easydigitaldownloads/edd-favorites.git
wp plugin activate edd-favorites

# fes
git clone git@github.com:chriscct7/edd-fes.git
wp plugin activate edd-fes

# woo test/features
wp plugin install features-by-woothemes --activate
wp plugin install testimonials-by-woothemes --activate

# featured downloads
wp plugin install edd-featured-downloads --activate

# thumbs
wp plugin install multiple-post-thumbnails --activate

# return to root
cd ../../../

##
# Content
##
wp plugin install wordpress-importer --activate
wget https://raw.githubusercontent.com/spencerfinnell/astoundify-bootstrap/master/marketify.xml
wp import marketify.xml --authors=create