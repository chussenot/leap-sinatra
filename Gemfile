# A sample Gemfile
source 'https://rubygems.org'
ruby '2.1.1'

def linux?; !! RUBY_PLATFORM =~ /linux/ end
def darwin?; !! RUBY_PLATFORM =~ /darwin/ end
def darwin12?; !! RUBY_PLATFORM =~ /darwin12/ end

group :development do
  # Handle Filesytem events
  gem 'guard', '~> 1.8'
  gem 'guard-rspec', '~> 3.0'
  gem 'guard-bundler', '~> 1.0'
  # Notifiers
  gem 'rb-inotify',               '~> 0.8' ,  require: linux?
  gem 'rb-fsevent',               '~> 0.9.1', require: darwin?
  gem 'terminal-notifier-guard',  '~> 1.5.3', require: darwin12?
end

group :test do
  # Specs
  gem 'rspec', '~> 2.14'
  gem 'rack-test', '~> 0.6'
  gem 'faker', '~> 1.3'
  gem 'fuubar', '~> 1.3'
end

group :test, :development do
  # Debug
  gem 'pry', '~> 0.9'
  gem 'pry-remote', '~> 0.1'
  gem 'pry-debugger', '~> 0.2'
end

gem 'rake', '~> 10.1'

gem 'sinatra', '~> 1.4'
gem 'sinatra-contrib', '~> 1.4.2'

gem 'json', '~> 1.8'
gem 'bson_ext', '~> 1.9'

gem 'coffee-script'
gem 'haml'
gem 'sass'
gem 'celluloid-io'

gem 'sinatra-assetpack', :require => 'sinatra/assetpack'

gem 'foreman'
gem 'puma'


