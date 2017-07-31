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