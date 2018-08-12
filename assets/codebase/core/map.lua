map = class("map")

local buttonImage = love.graphics.newImage("assets/gfx/images/button.png")

function map:initialize()
	self.tileset = tileset:new("blocks.png")
	self.canvas = love.graphics.newCanvas(405, 720)
	self.rects = {}
	self.turrets = {}
	self.doors = {}
	self.button = {
		x = 10,
		y = 10,
		width = 15,
		height = 15,
		type = "button"
	}

	collisionWorld:add(self.button, self.button.x, self.button.y, self.button.width, self.button.height)

	self.number = 0
	self:changeMap(1)
end

function map:update(dt)
	for i,v in pairs(self.turrets) do
		v:update(dt)
	end

	for i,v in pairs(self.doors) do
		v:update(dt)
	end

	updateBullets(dt)
end

function map:draw()
	love.graphics.setColor(1, 1, 1)
	love.graphics.draw(self.canvas)

	love.graphics.draw(buttonImage, self.button.x, self.button.y)

	drawBullets()

	for i,v in pairs(self.turrets) do
		v:draw()
	end	

	for i,v in pairs(self.doors) do
		v:draw()
	end
end



function map:changeMap(num)
	for i,v in pairs(self.rects) do
		collisionWorld:remove(v)
	end
	for i,v in pairs(self.doors) do
		if v.isInWorld then 
			collisionWorld:remove(v)
		end
	end

	local data = require("assets/maps/map"..tostring(num))

	local layers = data.layers

	local tileLayer = layers[1]

	self.tileset = tileset:new("blocks.png")
	self.canvas = love.graphics.newCanvas(405, 720)
	self.rects = {}
	self.turrets = {}
	self.doors = {}

	love.graphics.setColor(1, 1, 1)
	love.graphics.setCanvas(self.canvas)
		
		for y = 1, tileLayer.height do
			for x=1, tileLayer.width do
				local index = tileLayer.data[(y-1)*tileLayer.width+x]
				love.graphics.draw(self.tileset.set, self.tileset.quads[index], (x-1)*15, (y-1)*15)
			end
		end	

		game:fontSize(12)
		if num == 1 then 
			love.graphics.print("Jump on the button!", 230, 430)
		elseif num == 2 then
			game:fontSize(15)
			love.graphics.print("Don't hit the gray ceiling!", game.width / 2 - game.font:getWidth("Don't hit the gray ceiling!") / 2, 250)
		elseif num == 4 then
			love.graphics.print("You can wall jump!", 25, 450)
		elseif num == 10 then 
			love.graphics.print("Watch out!", 16, 350)
		elseif num == 16 then 
			love.graphics.print("Timing is key!", 198, 575)
		elseif num == 25 then 
			game:fontSize(20)
			love.graphics.print("You Win!", findMiddle("You Win!"), 140)
			love.graphics.print("Thanks for playing!", findMiddle("Thanks for playing!"), 170)
		end	

	love.graphics.setCanvas()


	local collisionLayer = layers[2]

	for i,v in pairs(collisionLayer.objects) do
		local rect = {x = v.x, y = v.y, width = v.width, height = v.height}
		collisionWorld:add(rect, rect.x, rect.y, rect.width, rect.height)

		table.insert(self.rects, rect)
	end

	self.button.x = layers[3].objects[1].x
	self.button.y = layers[3].objects[1].y - 15

	collisionWorld:update(self.button, self.button.x, self.button.y)


	if layers[4] then  --If map has turrets
		local turretLayer = layers[4]

		for i,v in pairs(turretLayer.objects) do
			table.insert(self.turrets, turret:new(v.x, v.y))
		end
	end

	if layers[5] then -- If map has doors
		local doorLayer = layers[5]
		for i,v in pairs(doorLayer.objects) do
			table.insert(self.doors, door:new(v.x, v.y))
		end
	end



	self.number = self.number + 1
end