# encoding: utf-8

module Leap

  class Base < Sinatra::Base
    set :root, File.dirname(__FILE__)

    $listeners  = Connections.new

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
      serve '/js',     from: 'app/js'        # Default
      serve '/css',    from: 'app/css'       # Default
    end

    get "/" do
      haml :index
    end

    get '/events', provides: 'text/event-stream' do
      stream(:keep_open) {|connection| $listeners.join(connection) }
    end

  end

end
