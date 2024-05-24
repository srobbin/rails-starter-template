source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "~> 3.3"

gem "rails", "~> 7.1.3", ">= 7.1.3.3"
gem "pg", "~> 1.1"
gem "puma", "~> 6.0"
gem "bootsnap", "~> 1.16", require: false
gem "cssbundling-rails", "~> 1.1"
gem "jsbundling-rails", "~> 1.1"
gem "sprockets-rails", "~> 3.4"
gem "stimulus-rails", "~> 1.2"
gem "image_processing", "~> 1.2"
gem "turbo-rails", "~> 1.4"

gem "pundit", "~> 2.3"
gem "redis", "~> 4.0"
gem "sidekiq", "~> 7.0"
gem "view_component", "~> 2.82"

group :development, :test do
  gem "database_cleaner", "~> 2.0"
  gem "factory_bot_rails", "~> 6.2"
  gem "faker", "~> 3.1"
  gem "letter_opener", "~> 1.8"
  gem "rails-controller-testing", "~> 1.0"
  gem "rspec-rails", "~> 6.0"
  gem "rubocop", "~> 1.50"
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "foreman", "~> 0.87.2"
  gem "listen", "~> 3.8"
  gem "web-console", "~> 4.2"
end

group :test do
  gem "capybara", "~> 3.39"
  gem "selenium-webdriver", "~> 4.8"
  gem "webdrivers", "~> 5.2"
end
