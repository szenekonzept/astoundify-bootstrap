#!/bin/bash

##
# Theme
##
rm -rf htdocs/wp-content/themes/*

# give one default theme
wp theme install twentytwelve

# install and activate listify
cd htdocs/wp-content/themes

git clone git@github.com:astoundify/jobify.git
wp theme activate jobify

# back to root
cd ../../../

##
# Plugins
##

rm -rf htdocs/wp-content/plugins/*

cd htdocs/wp-content/plugins

# some .org stuff
wp plugin install debug-bar --activate
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
git clone git@github.com:Automattic/wp-job-manager.git
wp plugin activate wp-job-manager

git clone git@github.com:Automattic/wp-job-manager-bookmarks.git
wp plugin activate wp-job-manager-bookmarks

git clone git@github.com:Automattic/wp-job-manager-alerts.git
wp plugin activate wp-job-manager-alerts

git clone git@github.com:Automattic/wp-job-manager-tags.git
wp plugin activate wp-job-manager-tags

git clone git@github.com:Automattic/wp-job-manager-wc-paid-listings.git
wp plugin activate wp-job-manager-wc-paid-listings

git clone git@github.com:Automattic/wp-job-manager-indeed-integration.git
wp plugin activate wp-job-manager-indeed-integration

git clone git@github.com:Automattic/wp-job-manager-resumes.git
wp plugin activate wp-job-manager-resumes

git clone git@github.com:Automattic/wp-job-manager-applications.git
wp plugin activate wp-job-manager-applications

git clone git@github.com:Automattic/wp-job-manager-application-deadline.git
wp plugin activate wp-job-manager-application-deadline

git clone git@github.com:Automattic/wp-job-manager-apply-with-xing.git
wp plugin activate wp-job-manager-apply-with-xing

git clone git@github.com:Automattic/wp-job-manager-apply-with-facebook.git
wp plugin activate wp-job-manager-apply-with-facebook

# astoundify wpjobmanager

git clone git@github.com:astoundify/wp-job-manager-contact-listing.git
wp plugin activate wp-job-manager-contact-listing

git clone git@github.com:astoundify/wp-job-manager-extended-location.git
wp plugin activate wp-job-manager-extended-location

git clone git@github.com:astoundify/wp-job-manager-regions.git
wp plugin activate wp-job-manager-regions

# return to root
cd ../../../

##
# Content
##
wp plugin install wordpress-importer --activate
wget https://raw.githubusercontent.com/spencerfinnell/astoundify-bootstrap/master/jobify.xml
wp import jobify.xml --authors=create