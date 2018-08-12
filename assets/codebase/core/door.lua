door = class("door")

local doorSheet = love.graphics.newImage("assets/gfx/tilesets/door.png")

function door:initialize(x, y)
	self.x = x
	self.y = y - 60

	self.width = 30
	self.height = 60

	self.g = anim8.newGrid(30, 60, doorSheet:getWidth(), doorSheet:getHeight())
	self.animation = anim8.newAnimation(self.g("1-4", 1), 0.1)

	self.timer = 0 

	self.type = "door"

	self.isInWorld = true

	doorSound:play()

	collisionWorld:add(self, self.x, self.y, self.width, self.height)
end

function door:update(dt)
	self.timer = self.timer + dt

	self.animation:update(dt)

	if self.timer > 2 and self.timer < 4 and self.isInWorld then 
		collisionWorld:remove(self)
		self.isInWorld = false
	elseif self.timer >= 4 then 
		self.timer = 0
		collisionWorld:add(self, self.x, self.y, self.width, self.height)
		self.isInWorld = true 

		doorSound:play()
	end
end

function door:draw()
	if self.timer < 2 then 
		love.graphics.setColor(1,1,1)
		self.animation:draw(doorSheet, self.x, self.y)
	end
end