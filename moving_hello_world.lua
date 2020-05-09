-- script: lua
-- title: moving hello world

message="Hello, World!"
-- we get the message's length by printing it offscreen
msg_width=print(message, 0, -6)

x = 120-(msg_width//2)
y = 64

function TIC()
    cls()
    if btn(0) then y=y-1 end
    if btn(1) then y=y+1 end
    if btn(2) then x=x-1 end
    if btn(3) then x=x+1 end
    print(message, x, y)
    print("(use arrow keys)", 0, 130)
end