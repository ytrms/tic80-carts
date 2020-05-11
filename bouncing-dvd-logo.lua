-- title:  bouncing dvd logo
-- author: lorenzo
-- script: lua
-- input: none

sprite_x_dim = 32
sprite_y_dim = 24
x = math.random(0, (240-sprite_x_dim))
y = math.random(0, (128-sprite_y_dim))

hit_message = "hit"
hit_msg_width = print(message, 0, -6, 12, false, 2)
hit_msg_duration = 60

move_right = true
move_down = true
rect_color = math.random(1, 15)
t = 0
hit_time = 0

function hit()
	
end

function TIC()
    cls(0)
    if x+sprite_x_dim == 240 then
		move_right = false
		rect_color = math.random(1, 15)
	end
	
	if y+sprite_y_dim == 136 then
		move_down = false
		rect_color = math.random(1, 15)
	end

    if x == 0 then
		move_right = true
		rect_color = math.random(1, 15)
	end
	
	if y == 0 then
		move_down = true
		rect_color = math.random(1, 15)
	end

    if move_right then
        x=x+1
    else
        x=x-1
	end

	if move_down then
		y = y+1
	else
		y = y-1
	end

	if x+sprite_x_dim == 240 or x == 0 then
		if y+sprite_y_dim == 128 or y == 0 then
			hit_time = t
		end
	end

	if t < hit_time+hit_msg_duration and t > hit_msg_duration then
		print(hit_message, 128-(hit_msg_width//2), 58, 12, false, 4)
	end

	rect(x, y, 32, 24, rect_color)
	spr(256, x, y, 12, 1, 0, 0, 4, 3)
	t = t + 1
end

-- <SPRITES>
-- 000:ccccccc0cccccccccc0000cccc00000ccc00000ccc00000ccc00000ccc00000c
-- 001:00ccc00000ccc000c0cccc00c0cccc00c00ccc00c00ccc00c000cc00c000ccc0
-- 002:000ccc0c000ccc0c00cccc0c00cccc0c00ccc00c00ccc00c00cc000c0ccc000c
-- 003:cccccc00ccccccc0c0000cccc00000ccc00000ccc00000ccc00000ccc00000cc
-- 016:cc00000ccc0000ccccccccccccccccc000000000000000000000000000000000
-- 017:c000ccccc000cccc00000ccc00000ccc00000000000000000000000000000000
-- 018:cccc000ccccc000cccc0000cccc0000c00000000000000000000000000000000
-- 019:c00000ccc0000cccccccccc0cccccc0000000000000000000000000000000000
-- 032:0000000c0000cccc00cccccc0ccccccccccccccccccccccc0ccccccc00cccccc
-- 033:cccccccccccccccccccccccccccc0000ccc00000cccc0000cccccccccccccccc
-- 034:cccccccccccccccccccccccc000ccccc0000cccc000ccccccccccccccccccccc
-- 035:00000000ccccc000cccccc00ccccccc0ccccccccccccccccccccccc0cccccc00
-- 048:0000000c00000000000000000000000000000000000000000000000000000000
-- 049:cccccccc00000000000000000000000000000000000000000000000000000000
-- 050:cccccccc00000000000000000000000000000000000000000000000000000000
-- 051:c000000000000000000000000000000000000000000000000000000000000000
-- </SPRITES>

-- <WAVES>
-- 000:00000000ffffffff00000000ffffffff
-- 001:0123456789abcdeffedcba9876543210
-- 002:0123456789abcdef0123456789abcdef
-- </WAVES>

-- <SFX>
-- 000:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000304000000000
-- </SFX>

-- <PALETTE>
-- 000:1a1c2c5d275db13e53ef7d57ffcd75a7f07038b76425717929366f3b5dc941a6f673eff7f4f4f494b0c2566c86333c57
-- </PALETTE>

