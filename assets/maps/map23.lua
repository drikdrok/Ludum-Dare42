return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "1.1.5",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 27,
  height = 48,
  tilewidth = 15,
  tileheight = 15,
  nextobjectid = 404,
  properties = {},
  tilesets = {
    {
      name = "tileset",
      firstgid = 1,
      tilewidth = 15,
      tileheight = 15,
      spacing = 0,
      margin = 0,
      image = "../gfx/tilesets/blocks.png",
      imagewidth = 150,
      imageheight = 15,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 15,
        height = 15
      },
      properties = {},
      terrains = {},
      tilecount = 10,
      tiles = {}
    },
    {
      name = "button",
      firstgid = 11,
      tilewidth = 15,
      tileheight = 15,
      spacing = 0,
      margin = 0,
      image = "../gfx/images/button.png",
      imagewidth = 15,
      imageheight = 15,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 15,
        height = 15
      },
      properties = {},
      terrains = {},
      tilecount = 1,
      tiles = {}
    },
    {
      name = "turret",
      firstgid = 12,
      tilewidth = 15,
      tileheight = 15,
      spacing = 0,
      margin = 0,
      image = "../gfx/images/turret.png",
      imagewidth = 30,
      imageheight = 15,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 15,
        height = 15
      },
      properties = {},
      terrains = {},
      tilecount = 2,
      tiles = {}
    },
    {
      name = "door",
      firstgid = 14,
      tilewidth = 30,
      tileheight = 60,
      spacing = 0,
      margin = 0,
      image = "../gfx/tilesets/door.png",
      imagewidth = 120,
      imageheight = 60,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 30,
        height = 60
      },
      properties = {},
      terrains = {},
      tilecount = 4,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "Tile Layer 1",
      x = 0,
      y = 0,
      width = 27,
      height = 48,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        9, 2, 2, 2, 2, 2, 2, 2, 2, 9, 9, 2, 2, 9, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2,
        9, 2, 2, 2, 2, 2, 2, 2, 2, 9, 9, 2, 2, 9, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2,
        9, 2, 2, 2, 2, 2, 2, 2, 2, 9, 9, 2, 2, 9, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2,
        9, 2, 2, 2, 2, 2, 2, 2, 2, 9, 9, 2, 2, 9, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2,
        9, 2, 2, 2, 2, 2, 2, 2, 2, 9, 9, 2, 2, 9, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2,
        9, 2, 2, 2, 2, 2, 2, 2, 2, 9, 9, 2, 2, 9, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2,
        9, 2, 2, 2, 2, 2, 2, 2, 2, 9, 9, 2, 2, 9, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2,
        9, 2, 2, 2, 2, 2, 2, 2, 2, 9, 9, 2, 2, 9, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2,
        9, 2, 2, 2, 2, 2, 2, 2, 2, 9, 9, 9, 9, 9, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2,
        9, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2,
        9, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2,
        9, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2,
        9, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2,
        9, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2,
        9, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2,
        9, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2,
        9, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2,
        9, 2, 2, 2, 2, 2, 2, 2, 2, 9, 9, 9, 9, 9, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2,
        9, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2,
        9, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2,
        9, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2,
        9, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2,
        9, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2,
        9, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 9, 2, 2, 2, 2, 2, 2,
        9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
      }
    },
    {
      type = "objectgroup",
      name = "collision",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 396,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 15,
          height = 375,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 397,
          name = "",
          type = "",
          shape = "rectangle",
          x = 15,
          y = 360,
          width = 300,
          height = 15,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 398,
          name = "",
          type = "",
          shape = "rectangle",
          x = 300,
          y = 0,
          width = 15,
          height = 360,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 399,
          name = "",
          type = "",
          shape = "rectangle",
          x = 195,
          y = 0,
          width = 15,
          height = 270,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 400,
          name = "",
          type = "",
          shape = "rectangle",
          x = 135,
          y = 255,
          width = 60,
          height = 15,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 402,
          name = "",
          type = "",
          shape = "rectangle",
          x = 135,
          y = 0,
          width = 30,
          height = 135,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 403,
          name = "",
          type = "",
          shape = "rectangle",
          x = 165,
          y = 120,
          width = 30,
          height = 15,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      name = "Button",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 389,
          name = "",
          type = "",
          shape = "rectangle",
          x = 180,
          y = 255,
          width = 15,
          height = 15,
          rotation = 0,
          gid = 11,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      name = "Turrets",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 391,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 315,
          width = 15,
          height = 15,
          rotation = 0,
          gid = 13,
          visible = true,
          properties = {}
        },
        {
          id = 395,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 135,
          width = 15,
          height = 15,
          rotation = 0,
          gid = 13,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      name = "Doors",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 385,
          name = "",
          type = "",
          shape = "rectangle",
          x = 135,
          y = 255,
          width = 30,
          height = 60,
          rotation = 0,
          gid = 14,
          visible = true,
          properties = {}
        },
        {
          id = 388,
          name = "",
          type = "",
          shape = "rectangle",
          x = 135,
          y = 195,
          width = 30,
          height = 60,
          rotation = 0,
          gid = 14,
          visible = true,
          properties = {}
        }
      }
    }
  }
}