source 'https://rubygems.org'

gem 'rails', '4.2.3'
gem 'sqlite3', group: :development
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'therubyracer', platforms: :ruby
gem 'capybara', '~> 2.4.4', group: :development
gem 'poltergeist', '~> 1.6.0', group: :development
gem 'phantomjs', '~> 1.9.8.0', group: :development

# Access an IRB console on exception pages or by using <%= console %> in views
gem 'web-console', '~> 2.0', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'spring'
end

group :production do
  gem 'pg' #postgres
  gem 'rails_12factor' #heroku recommends
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Makes working with web services easy and automatically parses json
gem 'httparty'

gem 'will_paginate'

# Bootstrap
gem 'bootstrap-sass', '~> 3.3.6'
