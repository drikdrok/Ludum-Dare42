tileset = class("tileset")

function tileset:initialize(path)
	self.set = love.graphics.newImage("assets/gfx/tilesets/"..path)

	self.quads = {}

	for i=0, 9 do
		local quad = love.graphics.newQuad(15*i, 0, 15, 15, self.set:getWidth(), self.set:getHeight())

		table.insert(self.quads, quad)		
	end	
end