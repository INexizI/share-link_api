source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'rails', '~> 6.1.3', '>= 6.1.3.2'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 5.0'
gem 'bcrypt', '~> 3.1.7'

gem 'bootsnap', '>= 1.4.4', require: false

gem 'active_model_serializers', '~> 0.10.12'
gem 'friendly_id', '~> 5.4.0'
gem 'jwt'
gem 'rack-cors'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'factory_bot_rails'
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'spring'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
