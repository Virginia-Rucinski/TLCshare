source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0.1'
 # with bcrypt, we ensure that an attacker won’t be able to log in to the site even if they manage to obtain a copy of the database
gem 'bcrypt',         '3.1.11'
# Faker to make sample users with semi-realistic names and email addresses 
gem 'faker',          '1.6.3'
# with carrierwave, upload image and associate it with the Micropost model
gem 'carrierwave',             '0.11.2'
# with mini_magick, for image resizing 
gem 'mini_magick',             '4.5.1'
# image upload in production
gem 'fog',                     '1.38.0'
# will-paginate to paginate the users, so that (for example) only 30 show up on a page at a time
gem 'will_paginate',           '3.1.0'
# bootstrap-will_paginate, which configures will_paginate
gem 'bootstrap-will_paginate', '0.0.10'
# converts Less CSS to Sass 
gem 'bootstrap-sass', '3.3.6'
gem 'bootstrap'
# Use Puma as the app server
gem 'puma', '~> 3.4.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0.6'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 3.0.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2.1'
# Use jquery as the JavaScript library
gem 'jquery-rails', '4.1.1'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5.0.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use to serve assets to Heroku
gem 'rails_12factor', group: :production

# Rails Locale Data Repository - Internationalization
gem 'rails-i18n', '~> 5.0.0' # For 5.0.x

# Use sqlite3 as the database for Active Record
# gem 'sqlite3'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby


# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development



group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug',  '9.0.0', platform: :mri
  gem 'sqlite3'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '3.1.1'
  gem 'listen', '~> 3.0.8'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '1.7.2'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'rails-controller-testing', '0.1.1'
  gem 'minitest-reporters',       '1.1.9'
  gem 'guard',                    '2.13.0'
  gem 'guard-minitest',           '2.4.4'
end

group :production do
  gem 'pg', '0.18.4'
  gem 'rails_12factor'
end



# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
