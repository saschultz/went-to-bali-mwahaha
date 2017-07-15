# README

E-commerce site. Uses `bcrypt` and `materialize`. There's a seed file. Set up your own admin. If you have questions, I'll be in Bali with no email. Ask someone else.

## Installation/Serving

* `cd [prodject-directory]`
* `bundle install`
* `rails db:reset`
* `rails s`

## Refactoring Changes

  ### Gemfile updates:

  * gem 'jquery-rails'
  * gem 'bootstrap-sass'
  * gem 'rspec-rails'
  * gem 'launchy'
  * gem 'shoulda-matchers'
  * gem 'shoulda-callback-matchers'
  * gem 'capybara'
  * gem 'factory_girl_rails'
  * gem 'simplecov', require: false

  ### Database updates:

  * added migration for storing image in products table
  * added faker data for image in seeds.rb

  ### Added features:

  * flash messages for signing up, signing in and signing out
