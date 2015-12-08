source 'https://rubygems.org'

# dot env
gem 'dotenv-rails', '~> 2.0', '>= 2.0.2', :groups => [:development, :test]
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Bootstrap sass
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.5.1'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '~> 4.0.5'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '~> 2.5.3'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.3.1'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.1', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'bcrypt', '~> 3.1', '>= 3.1.10'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# use postgresql as database
gem 'pg', '~> 0.18.3'

# use puma as application server
gem 'puma', '~> 2.13.4'

# add faker to fake data
gem 'faker', '~> 1.6', '>= 1.6.1'

# file storage
gem 'carrierwave', '~> 0.10.0'
gem 'carrierwave-qiniu', '~> 0.1.8.2'

# pagination
gem 'will_paginate', '~> 3.0.7'
gem 'bootstrap-will_paginate', '~> 0.0.10'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '~> 6.0.2'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.2.1'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 1.4.0'

  # Guard
  gem 'guard', '~> 2.13.0'
  # Automatically & intelligently launch tests with the minitest framework when
  # files are modified:
  gem 'guard-minitest', '~> 2.4.4'
  gem 'guard-livereload', '~> 2.5', '>= 2.5.1'
end

group :production do
  # heroku 12factor application
  gem 'rails_12factor', '~> 0.0.3'
end

group :test do
  gem 'minitest-reporters', '~> 1.1.0'
end

