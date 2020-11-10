source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.4'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.2', '>= 5.2.1'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
gem 'activemodel', '~> 6.0', '>= 6.0.3.4'
gem 'protected_attributes_continued', '~> 1.6'
gem 'therubyracer', '~> 0.12.3' , platforms: :ruby
gem 'rvm', '~> 1.11', '>= 1.11.3.9'


# Use Redis adapter to run Action Cable in production
#gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'bootstrap-sass', '~> 3.4', '>= 3.4.1'
gem 'bcrypt-ruby', '~> 3.1', '>= 3.1.5'
gem 'activerecord', '~> 6.0', '>= 6.0.3.4'
gem 'method_source', '~> 0.9.2'
# Use Active Storage variant
# gem 'image_processing', '~> 1.2'
gem 'javascript', '~> 0.1.0'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false
gem 'factory_girl_rails', '~> 4.9'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'annotate', '~> 3.1', '>= 3.1.1' 
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  #gem 'capybara', '>= 2.15'
  gem 'capybara', '~> 3.33'
  gem 'selenium-webdriver'
  gem 'railties', '~> 6.0', '>= 6.0.3.4'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
