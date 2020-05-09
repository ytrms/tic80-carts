-- script: lua
-- title: self scrolling message
-- author: lorenzo

message="Hello, World!"
-- get the message's length by printing it offscreen
msg_width=print(message, 0, -6)

x = 120-(msg_width//2)
y = 64
move_right = true

function TIC()
    cls()
    if x+msg_width == 240 then
        move_right = false
        print("LAD", 220, 128)
    end

    if x == 0 then
        move_right = true
        print("WEW", 0, 128)
    end

    if move_right then
        x=x+1
    else
        x=x-1
    end

    print(message, x, y)
end