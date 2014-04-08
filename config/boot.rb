require 'bundler/setup'
Bundler.require(:default)

require 'sinatra/base'
require 'sinatra/assetpack'

require './lib/leap/Leap.bundle'
require './lib/stream'
require './lib/connections'
require './wave'