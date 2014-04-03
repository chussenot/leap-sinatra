module Leap
  
  class Base < Sinatra::Base
    set :root, File.dirname(__FILE__)

    register  Sinatra::Namespace
    register  Sinatra::MultiRoute

    configure do
      set :server, :puma
    end
    
    configure :test do
      set :environment, :test
      disable :logging
    end

    configure :development do
      register Sinatra::Reloader
      set :environment, :development
      enable :logging
    end

    configure :production do
      set :environment, :production
    end

  end

  class Wave < Base
    register Sinatra::AssetPack

    assets do
    end

    get "/" do
      haml :index
    end

    get '/events', provides: 'text/event-stream' do
    end
  
  end

end