#!/bin/bash

##
# Theme
##
rm -rf htdocs/wp-content/themes/*

# give one default theme
wp theme install twentytwelve

# install and activate listify
cd htdocs/wp-content/themes

git clone git@github.com:astoundify/listify.git
wp theme activate listify

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

# woocommerce
wp plugin install woocommerce --activate

git clone git@github.com:woothemes/woocommerce-bookings.git
wp plugin activate woocommerce-bookings

git clone git@github.com:woothemes/woocommerce-subscriptions.git
wp plugin activate woocommerce-subscriptions

git clone git@github.com:woothemes/woocommerce-social-login.git
wp plugin activate woocommerce-social-login

# wpjobmanager
wp plugin install wp-job-manager --activate

git clone git@github.com:Automattic/wp-job-manager-bookmarks.git
wp plugin activate wp-job-manager-bookmarks

git clone git@github.com:Automattic/wp-job-manager-alerts.git
wp plugin activate wp-job-manager-alerts

git clone git@github.com:Automattic/wp-job-manager-tags.git
wp plugin activate wp-job-manager-tags

git clone git@github.com:Automattic/wp-job-manager-wc-paid-listings.git
wp plugin activate wp-job-manager-wc-paid-listings

# astoundify wpjobmanager

git clone git@github.com:astoundify/wp-job-manager-claim-listing.git
wp plugin activate wp-job-manager-claim-listing

git clone git@github.com:astoundify/wp-job-manager-contact-listing.git
wp plugin activate wp-job-manager-contact-listing

git clone git@github.com:astoundify/wp-job-manager-extended-location.git
wp plugin activate wp-job-manager-extended-location

git clone git@github.com:astoundify/wp-job-manager-regions.git
wp plugin activate wp-job-manager-regions

git clone git@github.com:astoundify/wp-job-manager-reviews.git
wp plugin activate wp-job-manager-reviews

git clone git@github.com:astoundify/wp-job-manager-products.git
wp plugin activate wp-job-manager-products

# return to root
cd ../../../

##
# Content
##
wp plugin install wordpress-importer --activate
wget https://raw.githubusercontent.com/spencerfinnell/astoundify-bootstrap/master/listify.xml
wp import listify.xml --authors=create

##
# Content Options
##

wp menu location assign primary primary
wp menu location assign secondary secondary
wp option update page_on_front 6
wp option update page_for_posts 15