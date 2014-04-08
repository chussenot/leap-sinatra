# encoding: utf-8

module Leap
  class Hear < Leap::Listener

    def onFrame controller
      frame = controller.frame()
      $listeners.broadcast({
        id: frame.id(),
        timestamp: frame.timestamp()
        }, event: :leap)
    end
  end
end

module Leap
  class Stream
    include Celluloid::IO

    def initialize
      controller = Leap::Controller.new
      controller.addListener Leap::Hear.new
    end
  end
end

# for i in 0..100
#   frame = controller.frame()
#   out << "Frame id: #{frame.id()}"
#   out << ", timestamp: #{frame.timestamp()}"
#   out << ", hands: #{frame.hands().count()}"
#   out << ", fingers: #{frame.fingers().count()}"
#   out << ", tools: #{frame.tools.count()}\n"
#   sleep(0.0166666)
# end