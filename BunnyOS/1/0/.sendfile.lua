term.clear()
term.setCursorPos(1, 1)
print("Where is your wireless/ender modem? (ex: top, left, back")
rednet.open(read())

term.clear()
term.setCursorPos(1, 1)

local file
function getFileToSend()
    print("What file do you want to send?")
    file = read()
    if fs.exists(file) then
        return
    else
        print("File does not exist.")
        getFileToSend()
    end
end
getFileToSend()
print("What is the ID of the computer you want to send this file to?")
local ID = read()
local IDtemp = ID
ID = tonumber(IDtemp)
textUtils.slowPrint("Sending file "..file.." to computer "..ID)
sleep(1)
rednet.send(ID, "fileSending")
sleep(1)
rednet.send(ID, file)
sleep(1)
fileToSend = fs.open(file, "r")
rednet.send(ID, fileToSend.readAll())
fileToSend.close()
print("Success!")
sleep(5)
shell.run("/.menu")