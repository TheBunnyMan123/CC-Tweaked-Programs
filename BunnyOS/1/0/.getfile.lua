term.clear()
term.setCursorPos(1, 1)
print("Where is your wireless/ender modem? (ex: top, left, back")
rednet.open(read())

term.clear()
term.setCursorPos(1, 1)
print("Getting files. Your computer ID is: "..os.getComputerID())

while true do
    id,msg = rednet.receive()
    if msg == "fileSending" then
        id2,msg2 = rednet.receive()
        if id2 == id then
            id3,msg3 = rednet.receive()
            if id3 == id then
                f = fs.open(msg2, "w")
                f.write(msg3)
                f.close()
                print("File "..msg2.." received")
                sleep(5)
                textutils.slowPrint(msg3)
                sleep(5)
                shell.run("/.menu")                
            end
        end
        
    end
end

term.clear()
term.setCursorPos(1, 1)
shell.run("/.menu")
