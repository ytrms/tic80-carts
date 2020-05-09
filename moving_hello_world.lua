-- script: lua
-- title: moving hello world

t = 0
x = 84
y = 64

function TIC()
    cls()
    if btn(0) then y=y-1 end
    if btn(1) then y=y+1 end
    if btn(2) then x=x-1 end
    if btn(3) then x=x+1 end
    print("Hello, World!", x, y)
end