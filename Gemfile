source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.3'

gem 'rails', '~> 7.2.0'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 5.6', '>= 5.6.8'
gem 'bcrypt', '~> 3.1.7'
gem 'sidekiq', '>= 7.1.5'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'active_model_serializers', '~> 0.10.14'
gem 'friendly_id', '~> 5.5.0'
gem 'jwt'
gem 'rack-cors', '>= 2.0.2'

gem 'net-smtp', require: false
gem 'net-imap', require: false
gem 'net-pop', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '>= 6.0.4'
  gem 'factory_bot_rails', '>= 6.4.2'
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'spring'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
