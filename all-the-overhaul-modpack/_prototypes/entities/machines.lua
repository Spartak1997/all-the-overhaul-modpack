-- Modified AAI drill
local miner_aai = data.raw["mining-drill"]["area-mining-drill"]
miner_aai.mining_speed = 1.5

-- Modified K2 machines
if mods["Krastorio2"] then
    data.raw["assembling-machine"]["kr-advanced-assembling-machine"].module_specification = {
        module_slots = 6, module_info_icon_shift = { 0, 0.8 }, module_info_icon_scale = 0.5
    }

    data.raw["assembling-machine"]["kr-advanced-chemical-plant"].module_specification = {
        module_slots = 6, module_info_icon_shift = { 0, 0.8 }, module_info_icon_scale = 0.5
    }

    data.raw["assembling-machine"]["kr-filtration-plant"].module_specification = {
        module_slots = 4, module_info_icon_shift = { 0, 0.8 }, module_info_icon_scale = 0.5
    }

    data.raw["assembling-machine"]["kr-filtration-plant"].crafting_speed = 1.75
    data.raw["assembling-machine"]["kr-filtration-plant"].energy_usage = "625kW"

    data.raw["assembling-machine"]["kr-electrolysis-plant"].module_specification = {
        module_slots = 4, module_info_icon_shift = { 0, 0.8 }, module_info_icon_scale = 0.5
    }
    
    data.raw["assembling-machine"]["kr-electrolysis-plant"].crafting_speed = 1.75
    data.raw["assembling-machine"]["kr-electrolysis-plant"].energy_usage = "3.125MW"

    data.raw["assembling-machine"]["kr-advanced-furnace"].module_specification = {
        module_slots = 8, module_info_icon_shift = { 0, 0.8 }, module_info_icon_scale = 0.5
    }

    data.raw["assembling-machine"]["kr-advanced-furnace"].crafting_speed = 384
    data.raw["assembling-machine"]["kr-advanced-furnace"].energy_usage = "300MW"
    data.raw["assembling-machine"]["kr-advanced-furnace"].energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 192,
    }
end