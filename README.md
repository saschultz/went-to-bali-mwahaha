# README

E-commerce site. Uses `bcrypt` and `materialize`. There's a seed file. Set up your own admin. If you have questions, I'll be in Bali with no email. Ask someone else.

To set up:

* `rake db:setup`

* Sorry, didn't get around to tests. It mostly works. There might be a few bugs.

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

  ### Added functionality:

    * flash messages for signing up, signing in and signing out
