# E-Commerce Application

This application is a cloned e-commerce site created by Epicodus. The application uses `bcrypt` and `materialize` with seeded faker data. AJAX functionality allows users to add to their cart from the all products listings, show/hide the product details, and remove items from their cart without a full page reload.

## Installation/Serving
run these commands from terminal:

* `git clone https://github.com/saschultz/went-to-bali-mwahaha`
* `cd went-to-bali-mwahaha`
* `bundle install`
* `rails db:create`
* `rails db:reset`
* `rails s`

## Refactoring Changes

### Code Review Refactors:

  1. flash messages for signing up, signing in and signing out
  2. users cannot order a negative number of items
  3. product validations
  4. password complexity validation
  5.
  6.

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
