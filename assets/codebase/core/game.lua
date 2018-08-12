game = class("game")

function game:initialize()
	self.width = love.graphics.getWidth()
	self.height = love.graphics.getHeight()

	collisionWorld = bump.newWorld()

	self.ceiling = 0 


	self.fonts = {}
	self.font = nil
	self:fontSize(25)

	self.highlighted = false

	self.highscore = 0 


	self.state = "menu"
end

function game:update(dt)
	if self.state == "menu" then 
		local x, y = love.mouse.getPosition()

		if x > self.width / 2 - self.font:getWidth("About") / 2 and x < self.width / 2 + self.font:getWidth("About") / 2 and y > 380 and y < 420 then 
			self.highlighted = true
		else
			self.highlighted = false
		end


	elseif self.state == "playing" then 
		player:update(dt)
		map:update(dt)

		if map.number < 25 then 
			self.ceiling = self.ceiling + 13*dt
		else
			self.ceiling = 0
		end

	elseif self.state == "about" then 
		local x, y = love.mouse.getPosition()
		if x > self.width / 2 - self.font:getWidth("Back") / 2 and x < self.width / 2 + self.font:getWidth("Back") / 2 and y > 380 and y < 420 then 
			self.highlighted = true
		else
			self.highlighted = false
		end
	end
end

function game:draw()

	if self.state == "menu" then 
		map:draw()
		player:draw()

		love.graphics.setColor(0,0,0)
		love.graphics.rectangle("fill", 200, 300, 200, 200) --it works *shrug*

		love.graphics.setColor(1, 1, 1)
		self:fontSize(18)
		love.graphics.print("Press Space To Start!", self.width / 2 - self.font:getWidth("Press Space To Start!") / 2, 680)

		if self.highlighted then 
			love.graphics.setColor(0,0,1)
		end
		love.graphics.print("About", self.width / 2 - self.font:getWidth("About") / 2 + 8, 400)

	elseif self.state == "playing" then 
		
		map:draw()
		player:draw()

		love.graphics.setColor(0.5, 0.5, 0.5)
		love.graphics.rectangle("fill", 0, 0, self.width, self.ceiling)

		self:fontSize(25)
		love.graphics.setColor(1, 1, 1)
		love.graphics.print(map.number, findMiddle(map.number), 100)

	elseif self.state == "about" then 
		love.graphics.setColor(0.5, 0.5, 0.5)
		love.graphics.rectangle("fill", 0, 0, self.width, self.height)

		love.graphics.setColor(1,1,1)
		self:fontSize(15)
		love.graphics.print("Made in 48 hours for Ludum Dare 42 ", findMiddle("Made in 48 hours for Ludum Dare 42"), 50)
		love.graphics.print("By Christian Schwenger", findMiddle("By Christian Schwenger"), 90)

		if self.highlighted then 
			love.graphics.setColor(0,0,1)
		end
		love.graphics.print("Back", self.width / 2 - self.font:getWidth("Back") / 2 + 8, 400)
	elseif self.state == "dead" then 
		love.graphics.setColor(1,1,1,1)
		map:draw()
		player:draw()

		love.graphics.setColor(0.9,0.1,0.1, 0.5)
		love.graphics.rectangle("fill", 0,0, self.width, self.height)

		love.graphics.setColor(1, 1, 1, 1)
		self:fontSize(25)
		love.graphics.print("YOU DIED!", findMiddle("YOU DIED!"), 50)
		self:fontSize(18)
		love.graphics.print("Final score: ".. map.number, findMiddle("Final score: "..map.number), 100)
		self:fontSize(15)
		love.graphics.print("Press space to return to menu", findMiddle("Press space to return to menu"), 680)


	end
end

function game:keypressed(key)
	if self.state == "menu" then 
		if key == "space" then 
			self.state = "playing"
		end
	elseif self.state == "dead" then 
		if key == "space" then 
			self:reset()
		end
	end
end	

function game:mousepressed()
	if self.highlighted then 
		if self.state == "menu" then 
			self.state = "about" 
		elseif self.state == "about" then 
			self.state = "menu"
		end
	end
end

function game:changeLevel()
	if map.number == 25 then 
		self:reset()
	else

		map:changeMap(map.number+1)
		self.ceiling = self.ceiling - 25

		if map.number == 10 or map.number == 21 then 
			self.ceiling = -10 
		elseif map.number == 14 then 
			self.ceiling = self.ceiling - 10
		end

		removeBullets()
	end
end

function game:reset()
	if map.number > self.highscore then 
		self.highscore = map.number
	end


	map:changeMap(1)
	map.number = 1
	self.ceiling = 0
	removeBullets()

	player:reset()

	self.state = "menu"

end

function game:fontSize(size)
	if not self.fonts[size] then 
		self.fonts[size] = love.graphics.newFont("assets/gfx/fonts/pixelmix.ttf", size)
	end
	self.font = self.fonts[size]
	love.graphics.setFont(self.font)
end

function findMiddle(text)
	return game.width / 2 - game.font:getWidth(text) / 2
end	

