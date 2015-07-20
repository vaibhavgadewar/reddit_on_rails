source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
gem 'pg'
#gem 'sqlite3'
gem 'devise'
gem 'will_paginate', '~> 3.0.5'
gem 'textacular', require: 'textacular/rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'faker'

group :development,:test do
	%w(rspec-rails rspec rspec-core rspec-expectations rspec-mocks rspec-support).each do |lib|
    	gem lib#, :git => "git://github.com/rspec/#{lib}.git", :branch => 'master', :require => false
	end
	gem 'factory_girl_rails'#, :require => false
end

group :test do
	gem 'database_cleaner'
	gem 'capybara', '~> 2.2.0'
	gem 'capybara-webkit'
	gem 'launchy'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
