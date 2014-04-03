# encoding: utf-8

$:.unshift File.join(__FILE__, "../config")
require 'boot'

LeapStack = Rack::Builder.new {
  run Leap::Wave
}