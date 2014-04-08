require_relative 'Leap.bundle'
   controller = Leap::Controller.new()
   for i in 0..600
       frame = controller.frame()
       print "Frame id: ", frame.id()
       print ", timestamp: ", frame.timestamp()
       print ", hands: ", frame.hands().count()
       print ", fingers: ", frame.fingers().count()
       print ", tools: ", frame.tools.count(), "\n"
       sleep(0.0166666)
   end
