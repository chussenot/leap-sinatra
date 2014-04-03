require './app.rb'
run LeapStack

map '/assets' do
  run Sinatra::Sprockets.environment
end