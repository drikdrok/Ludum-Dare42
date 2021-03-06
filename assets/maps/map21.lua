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
  nextobjectid = 345,
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
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 8, 8, 8, 8, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 8, 8, 8, 8, 2, 2, 2, 8, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 8, 8, 8, 8, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 8, 8, 8, 8, 2, 2, 2, 8, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 8, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8
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
          id = 75,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 705,
          width = 405,
          height = 15,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 335,
          name = "",
          type = "",
          shape = "rectangle",
          x = 195,
          y = 0,
          width = 15,
          height = 645,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 336,
          name = "",
          type = "",
          shape = "rectangle",
          x = 210,
          y = 630,
          width = 15,
          height = 15,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 337,
          name = "",
          type = "",
          shape = "rectangle",
          x = 75,
          y = 480,
          width = 45,
          height = 15,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 338,
          name = "",
          type = "",
          shape = "rectangle",
          x = 15,
          y = 585,
          width = 60,
          height = 15,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 339,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 15,
          height = 705,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 340,
          name = "",
          type = "",
          shape = "rectangle",
          x = 15,
          y = 375,
          width = 60,
          height = 15,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 341,
          name = "",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 240,
          width = 15,
          height = 405,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 342,
          name = "",
          type = "",
          shape = "rectangle",
          x = 75,
          y = 240,
          width = 45,
          height = 15,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 343,
          name = "",
          type = "",
          shape = "rectangle",
          x = 15,
          y = 0,
          width = 180,
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
          id = 322,
          name = "",
          type = "",
          shape = "rectangle",
          x = 105,
          y = 240,
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
          id = 344,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 120,
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
          id = 334,
          name = "",
          type = "",
          shape = "rectangle",
          x = 195,
          y = 705,
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
