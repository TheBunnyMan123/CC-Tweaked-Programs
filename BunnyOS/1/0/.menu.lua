local firmwareName = "BunnyOS"
local author = "TheKillerBunny"
local firmwareVersion = "1.0"

function drawMenu()
    term.setCursorBlink(false)
    term.clear()
    term.setCursorPos(3, 3)
    term.write("* Shell")
    term.setCursorPos(3, 4)
    term.write("* Send File")
    term.setCursorPos(3, 5)
    term.write("* Get File")
    term.setCursorPos(3, 6)
    term.write("* Edit File")
    term.setCursorPos(3, 7)
    term.write("* Monitor")
    term.setCursorPos(3, 8)
    term.write("* Shutdown")
    while true do
        local event, button, clickX, clickY = os.pullEvent()
        if event == "mouse_click" then
            if clickX == 3 and clickY == 3 then
                term.setCursorPos(1, 1)
                term.clear()
                print("Welcome to the shell! to exit type '/.menu'")
                break
            end
            if clickX == 3 and clickY == 4 then
                shell.run(".sendfile")
                break
            end
            if clickX == 3 and clickY == 5 then
                shell.run(".getfile")
                break
            end
            if clickX == 3 and clickY == 6 then
                term.clear()
                term.setCursorPos(1, 1)
                print("What file would you like to edit (include path)")
                shell.run("edit "..read())
                break
            end
            if clickX == 3 and clickY == 7 then
                term.clear()
                term.setCursorPos(1, 3)
                print("What is the name or direction of the monitor?");
                shell.run("monitor "..read().." .menu")
                break
            end
            if clickX == 3 and clickY == 8 then
                term.clear()
                term.setCursorPos(1, 1)
                shell.run("shutdown")
                break
            end
        end
    end
    term.setCursorBlink(true)
end

drawMenu()