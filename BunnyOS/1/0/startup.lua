term.setCursorPos(1,1)
local firmwareName = "BunnyOS"
local author = "TheKillerBunny"
local firmwareVersion = "1.0"
local width,height = term.getSize()

os.pullEvent = os.pullEventRaw

term.clear()

function password()
    term.clear()
    term.setCursorPos(1, 1)
    print(firmwareName.." version "..firmwareVersion)
    print("Made by "..author)
    local file = fs.open(".user", "r")
    correctPass = file.readLine()
    file.close()
    term.setCursorPos((width/2)-11, (height/2)-3)
    term.write("What is your password?")
    term.setCursorPos((width/2)-10, (height/2))
    term.write("____________________")
    term.setCursorPos((width/2)-10, (height/2))
    if read("*") == correctPass then
        shell.run("/.menu")
    else
        password()
    end
end

function newPassword()
    term.clear()
    term.setCursorPos(1, 1)
    print("Welcome to "..firmwareName.." version "..firmwareVersion)
    print("This firmware was made by "..author)
    term.setCursorPos((width/2)-22, (height/2)-3)
    term.write("What would you like your new password to be?")
    term.setCursorPos((width/2)-10, (height/2))
    term.write("____________________")
    term.setCursorPos((width/2)-10, (height/2))
    local pass = read()
    local file = fs.open(".user", "w")
    file.writeLine(pass)
    file.close()
end

if fs.exists(".user") then
    password()
else
    newPassword()
    password()
end
