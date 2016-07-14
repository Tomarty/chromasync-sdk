local Colore = clr.Corale.Colore.Core
local Thread = clr.System.Threading.Thread

function play_anim()
	while true do
		-- Everthing should be white (strobe effect!!!!)
		local c = Colore.Color.White
		local background = Colore.Color.Black
		-- set keyboard colour
		Keyboard.SetPosition(math.random(0,5), math.random(1,18), c, true)
		-- set mousepad colour
		Mousepad.SetAll(background)
		for i = 1, 3 do
			Mousepad[math.random(0,15)] = c
		end
		-- set mouse colour
		Mouse.SetAll(background)
		for i = 1, 3 do
			--Mouse[math.random(0,9), math.random(0,7)] = c -- this line isn't valid lua
			Mouse[math.random(0,9)]] = c
		end
	
		-- set keypad colour
		Keypad.SetAll(background)
		for i = 1, 3 do
			--Keypad[math.random(0,4), math.random(0,5)] = c -- this line isn't valid lua
			Keypad[math.random(0,4)] = c
		end
		
		-- We don't want to spam the SDK, so throttle to 50ms
		Thread.Sleep(50)
	end
end

play_anim()
