player = class("player")

function player:initialize()
	self.x = game.width / 2 - 8
	self.y = 100
	self.width = 24
	self.height = 24

	self.yvel = 0
	self.xvel = 0 

	self.canJump = false
	self.canWallJump = false

	self.wallJumpDirection = 0

	self.speed = 250

	self.type = "player"

	collisionWorld:add(self, self.x, self.y, self.width, self.height)
end

function player:update(dt)

	self:movement(dt)


	self.x, self.y, cols, len = collisionWorld:move(self, self.x, self.y)

	if #cols > 0 then

		for i,v in pairs(cols) do
			if v.normal.y == -1 then 
				self.canJump = true
				self.yvel = 0

				if v.other.type == "button" then 
					game:changeLevel()

					buttonSound:play()
				end
			elseif v.normal.y == 1 then 
				self.yvel = 0
			end

			if v.normal.x == 1 or v.normal.x == -1 then 
				self.canWallJump = true
				self.wallJumpDirection = v.normal.x
			else
				self.canWallJump = false
			end

			if v.other.type == "door" then 
				self:die()
			end
		end
	else
		self.canJump = false
		self.canWallJump = false
	end

	if self.y + self.height / 2 <= game.ceiling then 
		self:die()
	end

end

function player:draw()
	love.graphics.setColor(1, 0, 0)
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end




function player:movement(dt)
	local isDown = love.keyboard.isDown

	if isDown("a") then 
		self.x = self.x - self.speed*dt
	end
	if isDown("d") then 
		self.x = self.x + self.speed*dt
	end
	if self.x < 0 then 
		self.x = 0 
	elseif self.x + self.width > game.width then 
		self.x = game.width - self.width
	end

	if self.xvel > 0 then 
		self.xvel = self.xvel - 1000*dt
	elseif self.xvel < 0 then 
		self.xvel = self.xvel + 1000*dt
	end

	self.yvel = self.yvel + 1500*dt

	self.x = self.x + self.xvel * dt
	self.y = self.y + self.yvel * dt

end

function player:die()
	game.state = "dead"

	dieSound:play()
end

function player:reset()
	self.x = game.width / 2 - 8
	self.y = 100

	self.yvel = 0
	self.xvel = 0 

	self.canJump = false
	self.canWallJump = false

	collisionWorld:update(self, self.x, self.y)
end

function player:keypressed(key)
	if key == "space" then 
		if self.canJump then 
			self.yvel = -700
			self.canJump = false
		elseif self.canWallJump then
			self.canWallJump = false
			self.yvel = -500
			self.xvel = 500*self.wallJumpDirection
		end
	end
end		

