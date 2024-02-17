--"__knx-industry__/graphics/icon/assembly_one.png"

-- data:extend({

--     {
--         type = "item",
--         name = "your-chest",
--         icon = "__base__/graphics/icons/steel-chest.png",
--         --flags = {"goes-to-quickbar"},
--         subgroup = "storage",
--         order = "a[items]-g[your-chest]",
--         place_result = "your-chest",
--         stack_size = 50,
--         icon_size = 32
--       },
    
--       {
--         type = "recipe",
--         name = "your-chest",
--         enabled = true,
--         ingredients = {{"plastic-bar", 8}},
--         result = "your-chest"
--       },
    
--     {
--         type = "container",
--         name = "your-chest",
--         icon = "__base__/graphics/icons/steel-chest.png",
--         icon_size = 32,
--         flags = {"placeable-neutral", "player-creation"},
--         mineable = {mining_time = 1, result = "your-chest"},
--         max_health = 200,
--         corpse = "small-remnants",
--         open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
--         close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
--         resistances =
--         {
--           {
--             type = "fire",
--             percent = 90
--           }
--         },
--         collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
--         selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
--         fast_replaceable_group = "container",
--         inventory_size = 48,
--         vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
--         picture =
--         {
--           filename = "__base__/graphics/entity/steel-chest/steel-chest.png",
--           priority = "extra-high",
--           width = 32,
--           height = 40,
--           shift = {0.2, 0}
--         }
--       }
    
--     })

assembly_line1_name = "assembly-line-1"
local assembly_line1 = {
    name = assembly_line1_name,
    type = "item",
    icon = "__knx-industry__/graphics/icon/assembly_one.png",
    icon_size = 64,
    stack_size = 50,
    place_result = assembly_line1_name,
    --flags = {"goes-to-quickbar"},
}

local assembly_line1_recipe = {
    name = assembly_line1_name,
    type = "recipe",
    ingredients = {
        {"iron-plate", 20}
    },
    category = "crafting",
    order = "a",
    result=assembly_line1_name
}

local assembly_line1_obj = {
    type = "assembling-machine",
    name = assembly_line1_name,
    icon = "__knx-industry__/graphics/icon/assembly_one.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = { mining_time = 0.5, result = "assembly-line-1" },
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-2.4, -1.2}, {2.4, 1.2}},
    selection_box = {{-3.0, -1.5}, {3.0, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation = {
        filename = "__knx-industry__/graphics/entity/assembly_1.png",
        priority = "high",
        width = 216,
        height = 114,
        frame_count = 32,
        line_length = 8,
        shift = { 0.0, 0.0 },
      },
    crafting_categories = {"crafting"},
    crafting_speed = 0.5,
    energy_source =
    {
      type = "burner",
      effectivity = 1,
      fuel_inventory_size = 1,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 0.3
        }
      }
    },
    energy_usage = "90kW",
    ingredient_count = 2,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  }

data:extend{assembly_line1, assembly_line1_recipe, assembly_line1_obj}
