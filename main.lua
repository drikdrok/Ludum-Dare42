love.graphics.setDefaultFilter("nearest", "nearest")

require("assets/codebase/core/require")


function love.load()
	loadSounds()

	game = game:new()
	player = player:new()
	map = map:new()
end

function love.update(dt)
	game:update(dt)
end

function love.draw()
	game:draw()
end

function love.keypressed(key)
	if key == "escape" then
		love.event.quit()
	end
	game:keypressed(key)
	player:keypressed(key)
end

function love.mousepressed()
	game:mousepressed()
end


function loadSounds()
	doorSound = love.audio.newSource("assets/sfx/door.wav", "static")
	laserSound = love.audio.newSource("assets/sfx/laser.wav", "static")
	buttonSound = love.audio.newSource("assets/sfx/button.wav", "static")
	dieSound = love.audio.newSource("assets/sfx/die.wav", "static")
end


