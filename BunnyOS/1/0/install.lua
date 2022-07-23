print("Are you sure you want to install BunnyOS 1.0? (y/n)")
if read() == "y" then
    shell.run("delete","startup")
    shell.run("delete","startup.lua")
    shell.run("delete",".menu")
    shell.run("delete",".getfile")
    shell.run("delete",".sendfile")
    shell.run("delete",".user")
else
    shell.run("shutdown")
end
shell.run("wget","https://raw.githubusercontent.com/TheBunnyMan123/CC-Tweaked-Programs/main/BunnyOS/1/0/startup.lua","/startup.lua")
shell.run("wget","https://raw.githubusercontent.com/TheBunnyMan123/CC-Tweaked-Programs/main/BunnyOS/1/0/.menu.lua","/.menu.lua")
shell.run("wget","https://raw.githubusercontent.com/TheBunnyMan123/CC-Tweaked-Programs/main/BunnyOS/1/0/.getfile.lua","/.getfile.lua")
shell.run("wget","https://raw.githubusercontent.com/TheBunnyMan123/CC-Tweaked-Programs/main/BunnyOS/1/0/.sendfile.lua","/.sendfile.lua")
print("Success!")
print("If you are running this from a floppy disk, please remove it now.")
sleep(10)
shell.run("reboot")
