#!/bin/bash

ls | grep -v 'listify.sh' | xargs rm -rf

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
vsh plugin activate woocommerce-bookings

git clone git@github.com:woothemes/woocommerce-subscriptions.git
vsh plugin activate woocommerce-subscriptions

git clone git@github.com:woothemes/woocommerce-social-login.git
vsh plugin activate woocommerce-social-login

# wpjobmanager
wp plugin install wp-job-manager --activate

git clone git@github.com:Automattic/wp-job-manager-bookmarks.git
vsh plugin activate wp-job-manager-bookmarks

git clone git@github.com:Automattic/wp-job-manager-alerts.git
vsh plugin activate wp-job-manager-alerts

git clone git@github.com:Automattic/wp-job-manager-tags.git
vsh plugin activate wp-job-manager-tags

git clone git@github.com:Automattic/wp-job-manager-wc-paid-listings.git
vsh plugin activate wp-job-manager-wc-paid-listings

# astoundify wpjobmanager

git clone git@github.com:astoundify/wp-job-manager-claim-listing.git
vsh plugin activate wp-job-manager-claim-listing

git clone git@github.com:astoundify/wp-job-manager-contact-listing.git
vsh plugin activate wp-job-manager-contact-listing

git clone git@github.com:astoundify/wp-job-manager-extended-location.git
vsh plugin activate wp-job-manager-extended-location

git clone git@github.com:astoundify/wp-job-manager-regions.git
vsh plugin activate wp-job-manager-claim-regions

git clone git@github.com:astoundify/wp-job-manager-reviews.git
vsh plugin activate wp-job-manager-claim-reviews

git clone git@github.com:astoundify/wp-job-manager-products.git
vsh plugin activate wp-job-manager-claim-products