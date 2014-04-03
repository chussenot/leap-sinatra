module Leap
  
  class Base < Sinatra::Base
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
    helpers  Sinatra::Sprockets::Helpers

    Sinatra::Sprockets.configure do |config|
      config.app = self

      ['stylesheets', 'javascripts', 'images'].each do |dir|
        config.append_path(File.join('assets', dir))
        config.js_compressor  = Uglifier.new(mangle: false)
        config.css_compressor = false
        config.digest = false
        config.compress = false
        config.debug = false

        config.precompile = ['application.js']
      end
    end

    get "/" do
      haml :index
    end

    get '/events', provides: 'text/event-stream' do
    end
  
  end

end