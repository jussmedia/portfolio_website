source 'https://rubygems.org'

ruby '2.1.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.4'
# Use mysql as the database for Active Record
gem 'mysql2'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Use jquery UI assets
# gem 'jquery-ui-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

gem 'kaminari'

gem 'friendly_id', '~> 5.0.0' # Note: You MUST use 5.0.0 or greater for Rails 4.0+
# *****************
#
# ASSETS
#
# *****************
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Parse CSS and add vendor prefixes to CSS rules using values from the Can I Use website
# gem "autoprefixer-rails"

# Twitter's Bootstrap, converted to Sass and ready to drop into Rails or Compass
gem 'bootstrap-sass', '~> 3.2.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer',  platforms: :ruby

gem 'puma'


group :development do
  # annotates the models, fixtures, and test
  # rails g annotate:install
  gem 'annotate', github: 'ctran/annotate_models'

  # A library for generating fake data such as names, addresses, and phone numbers.
  gem 'faker', github: 'stympy/faker'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Preview mail in the browser instead of sending.
  gem "letter_opener"

  # Great Ruby dubugging companion: pretty print Ruby objects to visualize their structure.
  # Supports custom object formatting via plugins
  gem 'awesome_print'

  # Ruby/ProgressBar is a text progress bar library for Ruby.
  gem 'ruby-progressbar'

end

gem 'pry-nav', :group => [:development, :test]

group :test do
  #Minitest integration for Rails 4.1+
  # rails g minitest:install
  gem 'minitest-rails', github: 'blowmage/minitest-rails'
  gem 'minitest-spec-rails', github: 'metaskills/minitest-spec-rails'
  gem "codeclimate-test-reporter", require: nil
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
