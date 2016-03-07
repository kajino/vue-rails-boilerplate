source 'https://rubygems.org'

gem 'mysql2', '~> 0.3.18'
gem 'rails'
gem 'jbuilder'

gem 'flutie'
gem 'slim'

gem 'squeel'

group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'dotenv-rails'
  gem 'bullet'
end

group :development do
  gem 'pry-rails'
  gem 'pry-doc'
  gem 'pry-stack_explorer'
  gem 'pry-byebug'

  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'quiet_assets'
end

group :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'database_rewinder'
  gem 'rspec-request_describer'
  gem 'simplecov', require: false
  gem 'simplecov-rcov', require: false
  gem 'rspec_junit_formatter', require: false
  gem 'shoulda-matchers', require: false

  # deployment
  gem 'capistrano-rails', require: false
  gem 'capistrano-rbenv', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-unicorn', require: false
  gem 'timecop'
end

group :production do
  gem 'unicorn'
end
