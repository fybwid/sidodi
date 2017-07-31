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
``` ruby
rails new sidodi  --database=postgresql
```

## Add gem
###  [rspec-rails](https://github.com/rspec/rspec-rails)
``` ruby
group :development, :test do
  gem 'rspec-rails', '~> 3.5'
end
```

#### Download and install `rspec-rails` gem by running
``` ruby
bundle install
```

#### Initialize the `spec/` directory (where specs will reside) with 
``` ruby
rails generate rspec:install
```

### [capybara](https://github.com/jnicklas/capybara)
``` ruby
gem 'capybara'
```
> Add `require 'capybara/rails'` to `spec/rails_helper.rb`

### [Factory Girl Rails](https://github.com/thoughtbot/factory_girl_rails)
``` ruby
gem 'factory_girl_rails'
```
> Add Factory Girl Rails in:

``` ruby
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

### Create test for creating new Outgoing Mail
Create a new folder in application’s `/spec/` folder called `features`. Then in `/spec/features/` create a new file called `creating_new_outgoing_mail_spec.rb`.

``` ruby
require 'rails_helper.rb'

feature 'Creating Outgoing Mail' do  
  scenario 'can create Outgoing Mail' do
    visit '/'
    click_link 'New Outgoing Mail'
    attach_file('Document', "public/system/surat_keluars/lampirans/000/000/001/original/e3-2.doc")
    fill_in 'Caption', with: '1st Outgoing Mail #outgoingmail' 
    click_button 'Create Outgoing Mail'
    expect(page).to have_content('#outgoingmail')
    expect(page).to have_content('Lampiran: e3-2.doc')
    #expect(page).to have_css("img[src*='coffee.jpg']")
  end
end
```
### Run specs
```
bundle exec rspec
```

### Run test for creating new Outgoing Mail
```
rspec /spec/features/creating_new_outgoing_mail_spec.rb
```