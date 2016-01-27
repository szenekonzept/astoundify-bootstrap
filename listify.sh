#!/bin/bash

##
# Theme
##
rm -rf htdocs/wp-content/themes/*

# give one default theme
vassh wp theme install twentytwelve

# install and activate listify
cd htdocs/wp-content/themes

git clone git@github.com:astoundify/listify.git
vassh wp theme activate listify

# back to root
cd ../../../

##
# Plugins
##

rm -rf htdocs/wp-content/plugins/*

cd htdocs/wp-content/plugins

# some .org stuff
vassh wp plugin install debug-bar --activate
vassh wp plugin install debug-queries --activate
vassh wp plugin install query-monitor --activate

vassh wp plugin install nav-menu-roles --activate
vassh wp plugin install rtl-tester --activate
vassh wp plugin install user-role-editor --activate
vassh wp plugin install user-switching --activate

# woocommerce
vassh wp plugin install woocommerce --activate

git clone git@github.com:woothemes/woocommerce-bookings.git
vassh wp plugin activate woocommerce-bookings

git clone git@github.com:woothemes/woocommerce-subscriptions.git
vassh wp plugin activate woocommerce-subscriptions

git clone git@github.com:woothemes/woocommerce-social-login.git
vassh wp plugin activate woocommerce-social-login

# wpjobmanager
vassh wp plugin install wp-job-manager --activate

git clone git@github.com:Automattic/wp-job-manager-bookmarks.git
vassh wp plugin activate wp-job-manager-bookmarks

git clone git@github.com:Automattic/wp-job-manager-alerts.git
vassh wp plugin activate wp-job-manager-alerts

git clone git@github.com:Automattic/wp-job-manager-tags.git
vassh wp plugin activate wp-job-manager-tags

git clone git@github.com:Automattic/wp-job-manager-wc-paid-listings.git
vassh wp plugin activate wp-job-manager-wc-paid-listings

# astoundify wpjobmanager

git clone git@github.com:astoundify/wp-job-manager-claim-listing.git
vassh wp plugin activate wp-job-manager-claim-listing

git clone git@github.com:astoundify/wp-job-manager-contact-listing.git
vassh wp plugin activate wp-job-manager-contact-listing

git clone git@github.com:astoundify/wp-job-manager-extended-location.git
vassh wp plugin activate wp-job-manager-extended-location

git clone git@github.com:astoundify/wp-job-manager-regions.git
vassh wp plugin activate wp-job-manager-regions

git clone git@github.com:astoundify/wp-job-manager-reviews.git
vassh wp plugin activate wp-job-manager-reviews

git clone git@github.com:astoundify/wp-job-manager-products.git
vassh wp plugin activate wp-job-manager-products

# return to root
cd ../../../

##
# Content
##
wget https://raw.githubusercontent.com/spencerfinnell/astoundify-bootstrap/master/listify.xml
vassh wp import listify.xml --authors=create