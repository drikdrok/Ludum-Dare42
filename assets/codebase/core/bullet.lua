bullets = {}

bullet = class("bullet")

local bulletImage = love.graphics.newImage("assets/gfx/images/bullet.png")

function bullet:initialize(x, y, angle)
	self.x = x + 15
	self.y = y + 5

	self.width = 10
	self.height = 3

	self.angle = angle 

	self.speed = 200

	self.dx = self.speed * math.cos(self.angle)
	self.dy = self.speed * math.sin(self.angle)

	self.id = #bullets + 1 

	self.type = "bullet"

	collisionWorld:add(self, self.x, self.y, self.width, self.height)

	laserSound:play()
	

	table.insert(bullets, self)
end

function bullet:update(dt)
	self.x = self.x + self.dx * dt 
	self.y = self.y + self.dy * dt

	collisionWorld:update(self, self.x, self.y)

	actualX, actualY, cols, len = collisionWorld:check(self)
	if #cols > 0 then 
		for i,v in pairs(cols) do
			if v.other.type == "player" then 
				player:die()
			else
				collisionWorld:remove(self)
				bullets[self.id] = nil
			end
		end
	end
end

function bullet:draw()
	love.graphics.draw(bulletImage, self.x, self.y, self.angle)
end

function updateBullets(dt)
	for i,v in pairs(bullets) do
		v:update(dt)
	end
end

function drawBullets()
	for i,v in pairs(bullets) do
		v:draw()
	end
end

function removeBullets()
	for i,v in pairs(bullets) do
		collisionWorld:remove(v)
	end
	bullets = {}
end