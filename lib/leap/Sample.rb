require_relative 'Leap.bundle'

controller = Leap::Controller.new()
for i in 0..600
   
  frame = controller.frame()
  x = frame.hand(0).palmNormal.x
  y = frame.hand(0).palmNormal.y

  print "Frame id: ", frame.id()
  print ", timestamp: ", frame.timestamp()
  print ", hands: ", frame.hands().count()
  print ", x: ", x
  print ", y: ", y, "\n"
  sleep(0.0166666)
end
