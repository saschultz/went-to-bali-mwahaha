# E-Commerce Application

This application is a cloned e-commerce site created by Epicodus. The application uses `bcrypt` and `materialize` with seeded faker data. AJAX functionality allows users to add to their cart from the all products listings, show/hide the product details, and remove items from their cart without a full page reload.

## Installation/Serving
run these commands from terminal:

* `git clone https://github.com/saschultz/went-to-bali-mwahaha`
* `cd went-to-bali-mwahaha`
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

  ### Testing updates:

  * Schema relationships
  * Model presence_of validations
  * Model before_save callback method
  * Order item quantity validation

  ### Added features:

  * flash messages for signing up, signing in and signing out
  * quantity of order item has to be greater than or equal to 1
