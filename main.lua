local x, y = 0, 0
local timer = 0
local sin = 0
local cx, cy = 1280/2, 1024/2

function love.update(dt)
	timer = math.fmod(( timer + dt ), 360)
	sin = math.sin(timer)
	love.window.setPosition(cx - (800 / 2), sin * (cy*2)/3+(cy/2), display)
	x, y = love.window.getPosition()
end

function love.draw()
	love.graphics.circle("fill", cx - x, cy - y, 40)
	love.graphics.print("Timer: "..timer.."Sin: "..sin)
end