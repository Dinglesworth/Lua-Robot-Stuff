local robot = require("robot")

isTrue, object = robot.detect()
x = 10

while x > 0 do
    robot.forward()
    if isTrue and object not "entity" then
        robot.turnRight()
    end
    if isTrue and object == "entity" then
        robot.swing()
        x=x-1
    end
end
