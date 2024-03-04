local config = {
    name = "brass",
    order = "c",
    enableAtStart = true,
    itemNames = {
        plate = "brass-plate",
        molten = "atom-brass-molten"
    },
    icons = {
        ore = atom.refining.config.copper.icons.ore,
        dust = atom.refining.config.copper.icons.dust,
        ingot = atom.refining.config.copper.icons.ingot,
        "plate", "molten"
    },
    additionalIngredient = {},
    additionalResults = {},
    unlockedBy = {}
}

createIcons(config)

local _oreToPlateRecipe = oreToPlateRecipe(config)
_oreToPlateRecipe.ingredients = {
    { "copper-ore", 3 },
    { "zinc-ore", 3 }
}
table.insert(_oreToPlateRecipe.icons, createSmallIconRight(atom.refining.config.zinc.icons.ore))

local _dustToPlateRecipe = dustToPlateRecipe(config)
_dustToPlateRecipe.ingredients = {
    { "5d-copper-dust", 6 },
    { "atom-zinc-dust", 6 }
}
table.insert(_dustToPlateRecipe.icons, createSmallIconRight(atom.refining.config.zinc.icons.dust))

local _ingotToPlateRecipe = ingotToPlateRecipe(config)
_ingotToPlateRecipe.ingredients = {
    { name = "se-copper-ingot", amount = 1 },
    { name = "zinc-ingot", amount = 1 }
}
table.insert(_ingotToPlateRecipe.icons, createSmallIconRight(atom.refining.config.zinc.icons.ingot))

local _ingotToMoltenRecipe = ingotToMoltenRecipe(config)
_ingotToMoltenRecipe.ingredients = {
    { name = "se-copper-ingot", amount = 1 },
    { name = "zinc-ingot", amount = 1 }
}
table.insert(_ingotToMoltenRecipe.icons, createSmallIconRight(atom.refining.config.zinc.icons.ingot))

data:extend({
    _oreToPlateRecipe,
    _dustToPlateRecipe,
    _ingotToPlateRecipe,
    _ingotToMoltenRecipe,
    moltenToPlateRecipe(config),
    {
        type = "fluid",
        name = "atom-" .. config.name .. "-molten",
        default_temperature = 232, -- TODO
        max_temperature = 232, -- TODO
        base_color = { r = 255, g = 160, b = 60 }, -- TODO
        flow_color = { r = 255, g = 160, b = 60 }, -- TODO
        icons = { config.icons.molten },
        order = "a[molten]-b",
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
        auto_barrel = false,
        subgroup = "fluid"
    }
})

setItemIcons(config)
setStackSizes(config)
setSubGroup(config)

return config