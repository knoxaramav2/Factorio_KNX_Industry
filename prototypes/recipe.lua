--local data_util = require("data-util")
--local sounds = require("__base__.prototypes.entity.sounds")

local assembly_line_1 = {
    name = "assembly_line_1",
    type = "recipe",
    ingredients = {
        {name="inserter", count=3},
        {name="transport-belt", count=6},
        {name="assembling-machine-1", count=3}
    },
    result = "assembly_line_1",
    energy_required = 3
}

data:extend({
    assembly_line_1
})