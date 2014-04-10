#! /bin/sh

bower install
rm -rf app/assets/javascripts/vendor
rm -rf app/assets/stylesheets
mkdir -p app/assets/javascripts/vendor
mkdir -p app/assets/stylesheets
cp bower_components/modernizr/modernizr.js app/assets/javascripts/vendor/.
cp -R bower_components/foundation/js/foundation/ app/assets/javascripts/foundation/
cp -R bower_components/foundation/scss/ app/assets/stylesheets/
cp bower_components/foundation/scss/foundation/_settings.scss app/assets/.

# echo "Now update version.rb"