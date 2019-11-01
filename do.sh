# paste -d " " <(find . -type file | sort | grep -v .git | grep  -v *.sh | perl -pe "s/\t/ /g" | perl -pe "s/\.\//wget https:\/\/raw\.githubusercontent\.com\/hirokoma\/rails6-boost\/master\//g" ) <(find . -type file | sort | grep -v .git | grep  -v *.sh | perl -pe "s/\.\//-P /g" | perl -pe "s/^[^\/]*$/\n/g" | perl -pe "s/\/[^\/]*?$//g")

rm -rf app Gemfile config

wget https://raw.githubusercontent.com/hirokoma/rails6-boost/master/Gemfile
wget https://raw.githubusercontent.com/hirokoma/rails6-boost/master/app/controllers/pages_controller.rb -P app/controllers
wget https://raw.githubusercontent.com/hirokoma/rails6-boost/master/app/javascript/packs/application.js -P app/javascript/packs
wget https://raw.githubusercontent.com/hirokoma/rails6-boost/master/app/javascript/stylesheets/application.scss -P app/javascript/stylesheets
wget https://raw.githubusercontent.com/hirokoma/rails6-boost/master/app/views/layouts/application.html.erb -P app/views/layouts
wget https://raw.githubusercontent.com/hirokoma/rails6-boost/master/app/views/pages/index.html.erb -P app/views/pages
wget https://raw.githubusercontent.com/hirokoma/rails6-boost/master/config/routes.rb -P config
wget https://raw.githubusercontent.com/hirokoma/rails6-boost/master/config/webpack/environment.js -P config/webpack
