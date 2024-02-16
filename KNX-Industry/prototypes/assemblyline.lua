

local assembly_line1 = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-1"])

assembly_line_1_name = "assembly-line-1"

assembly_line1.name = assembly_line_1_name
assembly_line1.icons = {
    {
        icon = "__knx-industry__/graphics/icon/assembly_one.png",
        icon_size = assembly_line.icon_size
    }
}

local assembly_line_recipe = {
    type = "recipe",
    name = assembly_line_1_name,
    enabled = true,
    energy_required = 12,
    ingredients = {
        {name="assembling-machine-1", count=5},
        {name="inserter", count=12},
        {name="transport-belt", count=12},
        result = assembly_line_1_name
    }
}

data:extend{assembly_line1, assembly_line_recipe}
