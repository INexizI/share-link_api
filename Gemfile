source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.3'

gem 'rails', '~> 7.1.0'
gem 'pg', '>= 0.18', '< 2.0'
<<<<<<< snyk-fix-19245a06e797efb120223111c0c454d9
gem 'puma', '~> 5.6', '>= 5.6.8'
=======
gem 'puma', '~> 5.6', '>= 5.6.7'
>>>>>>> master
gem 'bcrypt', '~> 3.1.7'
gem 'sidekiq', '>= 7.1.3'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'active_model_serializers', '~> 0.10.14'
gem 'friendly_id', '~> 5.5.0'
gem 'jwt'
gem 'rack-cors'

gem 'net-smtp', require: false
gem 'net-imap', require: false
gem 'net-pop', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'factory_bot_rails', '>= 6.3.0'
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'spring'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
