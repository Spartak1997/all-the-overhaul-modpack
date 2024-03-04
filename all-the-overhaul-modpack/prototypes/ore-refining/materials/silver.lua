local config = {
    name = "silver",
    order = "j",
    itemNames = {
        ore = "silver-ore",
        plate = "silver-plate",
        dust = "atom-silver-dust",
        ingot = "silver-ingot",
        molten = "molten-silver",
        enriched = "enriched-silver",
        pure = "atom-silver-pure",
        pellets = "atom-silver-pellets"
    },
    icons = {
        ore = { icon = "__bzgold__/graphics/icons/silver-ore.png", icon_size = 128 },
        "pure", "plate", "dust", "ingot", "molten", "enriched", "pellets"
    },
    unlockedBy = {
        oreToPlate = "silver-processing"
    }
}

createIcons(config)

data:extend(createRefiningData(config))

setItemIcons(config)
setStackSizes(config)
setSubGroup(config)

return config