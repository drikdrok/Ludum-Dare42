turret = class("turret")
local turretSheet = love.graphics.newImage("assets/gfx/images/turret.png")

function turret:initialize(x, y)
	self.x = x
	self.y = y

	self.base = love.graphics.newQuad(0, 0, 15, 15, turretSheet:getWidth(), turretSheet:getHeight())
	self.head = love.graphics.newQuad(15, 0, 15, 15, turretSheet:getWidth(), turretSheet:getHeight())

	self.rotation = 0 
	self.direction = 1 


	self.cooldown = 0
end

function turret:update(dt)
	self.cooldown = self.cooldown + dt

	if player.x > self.x then 
		self.direction = 1
	else
		self.direction = -1
	end
	self.rotation = math.atan2((player.y - self.y), (player.x - self.x))

	if self.cooldown >= 1.5 then 
		bullet:new(self.x, self.y, self.rotation)
		self.cooldown = 0
	end 

end

function turret:draw()
	love.graphics.setColor(1,1,1)
	love.graphics.draw(turretSheet, self.base, self.x, self.y, 0, 2, 2)
	love.graphics.draw(turretSheet, self.head, self.x + 20, self.y + 13, self.rotation, 3, 3*self.direction, 4, 7.5)
end


