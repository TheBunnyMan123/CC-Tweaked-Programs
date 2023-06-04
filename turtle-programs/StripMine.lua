local count = 0
print("Mining!")
 
while true do
    if turtle.getFuelLevel() < 20 then
        for i = 1, 16, 1 do
            turtle.select(i)
            turtle.refuel()
        end
    end
    turtle.dig()
    turtle.digUp()
    turtle.suck()
    turtle.suckUp()
    turtle.forward()
    count = count + 1
    if count % 10 == 0 then
        turtle.select(2)
        turtle.digDown()
        turtle.placeDown()
    end
    sleep()
end
