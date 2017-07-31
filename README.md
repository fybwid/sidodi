# README

* Ruby version
> 2.2.2

* Rails version
> 5.0.4

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Story
## Start development
```
rails new sidodi  --database=postgresql
```

## Add gem
###  [rspec-rails](https://github.com/rspec/rspec-rails)
```
group :development, :test do
  gem 'rspec-rails', '~> 3.5'
end
```

#### Download and install `rspec-rails` gem by running
```
bundle install
```

#### Initialize the `spec/` directory (where specs will reside) with 
```
rails generate rspec:install
```

### [capybara](https://github.com/jnicklas/capybara)
```
gem 'capybara'
```
> Add `require 'capybara/rails'` to `spec/rails_helper.rb`

### [Factory Girl Rails](https://github.com/thoughtbot/factory_girl_rails)
```
gem 'factory_girl_rails'
```
> Add Factory Girl Rails in:

```
group :development, :test do
  gem 'factory_girl_rails'
end
```

## Planning the creation of OutgoingMail
1. Visit the root route
2. click on a button to create a new post
3. fill out the bits of the form that we need.
4. click the submit button
5. expect the page that we’re sent to to have specific text
6. expect the page to contain our attachment.

