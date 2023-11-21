local util = require("data-util")

bobmods.lib.recipe.add_ingredient("fast-road", { "road", 10 })

bobmods.lib.recipe.add_ingredient("rail", { "concrete", 2 })

if mods["big_power_poles_patched"] then
    bobmods.lib.recipe.remove_ingredient("bp_extreme_power_pole", "copper-plate")
    bobmods.lib.recipe.remove_ingredient("bp_extreme_power_pole", "steel-plate")
    bobmods.lib.recipe.add_ingredient("bp_extreme_power_pole", { "acsr-cable", 4 })
    bobmods.lib.recipe.add_ingredient("bp_extreme_power_pole", { "iron-stick", 16 })
    bobmods.lib.recipe.add_ingredient("bp_extreme_power_pole", { "galvanized-steel-plate", 8 })
    bobmods.lib.recipe.add_ingredient("bp_extreme_power_pole", { "lead-plate", 4 })
    bobmods.lib.recipe.add_ingredient("bp_extreme_power_pole", { "concrete", 2 })
end

-- wagons
data.raw["cargo-wagon"]["space-cargo-wagon"].inventory_size = 50
data.raw["cargo-wagon"]["gr_magnet_wagon_pre_entity"].inventory_size = 60
data.raw["cargo-wagon"]["gr_magnet_wagon_entity"].inventory_size = 70

data.raw["fluid-wagon"]["space-fluid-wagon"].capacity = 50000
data.raw["fluid-wagon"]["gr_magnet_tanker_pre_entity"].capacity = 75000
data.raw["fluid-wagon"]["gr_magnet_tanker_entity"].capacity = 100000

-- repairs pack
local _durability = 300
local _stack_size = 200
data.raw["repair-tool"]["copper-repair-pack"].durability = _durability
data.raw["repair-tool"]["copper-repair-pack"].speed = 3
data.raw["repair-tool"]["copper-repair-pack"].stack_size = _stack_size

data.raw["repair-tool"]["steel-repair-pack"].durability = _durability
data.raw["repair-tool"]["steel-repair-pack"].speed = 4
data.raw["repair-tool"]["steel-repair-pack"].stack_size = _stack_size

data.raw["repair-tool"]["field-repair-pack"].durability = _durability
data.raw["repair-tool"]["field-repair-pack"].speed = 5
data.raw["repair-tool"]["field-repair-pack"].stack_size = _stack_size

data.raw["repair-tool"]["multitool-repair-pack"].durability = _durability
data.raw["repair-tool"]["multitool-repair-pack"].speed = 6
data.raw["repair-tool"]["multitool-repair-pack"].stack_size = _stack_size

-- bz foundry
local allowed_effects = { "speed", "productivity", "consumption", "pollution" }
local module_specification = {
    module_info_icon_shift = {
        0,
        0.8
    },
    module_slots = 2
}

-- 1 tech ki
krastorio.technologies.removePrerequisite("el_ki_sup_1_tech", "fi_ki_eff_1_tech")
krastorio.technologies.removePrerequisite("el_ki_sup_1_tech", "el_ki_eff_1_tech")
krastorio.technologies.addPrerequisite("el_ki_sup_1_tech", "fi_ki_tech")
krastorio.technologies.removeResearchUnitIngredient("el_ki_sup_1_tech", "chemical-science-pack")
krastorio.technologies.removeResearchUnitIngredient("el_ki_sup_1_tech", "production-science-pack")
krastorio.technologies.addResearchUnitIngredient("el_ki_sup_1_tech", "chemical-science-pack", 1)
krastorio.technologies.addResearchUnitIngredient("el_ki_sup_1_tech", "se-rocket-science-pack", 1)
krastorio.technologies.setResearchUnitCount("el_ki_sup_1_tech", 2000)
-- 2 tech ki
krastorio.technologies.removePrerequisite("el_ki_sup_2_tech", "fu_ki_eff_1_tech")
krastorio.technologies.removePrerequisite("el_ki_sup_2_tech", "fi_ki_eff_2_tech")
krastorio.technologies.removePrerequisite("el_ki_sup_2_tech", "el_ki_eff_2_tech")
krastorio.technologies.removeResearchUnitIngredient("el_ki_sup_2_tech", "production-science-pack")
krastorio.technologies.removeResearchUnitIngredient("el_ki_sup_2_tech", "se-energy-science-pack-1")
krastorio.technologies.removeResearchUnitIngredient("el_ki_sup_2_tech", "se-material-science-pack-3")
krastorio.technologies.setResearchUnitCount("el_ki_sup_2_tech", 2000)

for _, train in pairs(data.raw["locomotive"]) do
  if train.burner then
    util.add_fuel_category(train.burner, "vehicle-fuel")
  end
end

equipment.add_category_to_equipment("small-portable-generator", "generator-equipment")
equipment.add_category_to_equipment("portable-generator", "generator-equipment")
equipment.add_category_to_equipment("se-rtg-equipment", "generator-equipment")
equipment.add_category_to_equipment("se-rtg-equipment-2", "generator-equipment")
equipment.add_category_to_equipment("mk3-generator-rampant-arsenal", "generator-equipment")
equipment.add_category_to_equipment("nuclear-generator-rampant-arsenal", "generator-equipment")
equipment.add_category_to_equipment("nuclear-reactor-equipment", "generator-equipment")
equipment.add_category_to_equipment("fusion-reactor-equipment", "generator-equipment")
equipment.add_category_to_equipment("antimatter-reactor-equipment", "generator-equipment")

equipment.add_category_to_equipment("personal-submachine-laser-defense-mk1-equipment", "defense-equipment")
equipment.add_category_to_equipment("personal-submachine-laser-defense-mk2-equipment", "defense-equipment")
equipment.add_category_to_equipment("personal-submachine-laser-defense-mk3-equipment", "defense-equipment")
equipment.add_category_to_equipment("personal-submachine-laser-defense-mk4-equipment", "defense-equipment")
equipment.add_category_to_equipment("personal-laser-defense-equipment", "defense-equipment")
equipment.add_category_to_equipment("personal-laser-defense-mk2-equipment", "defense-equipment")
equipment.add_category_to_equipment("personal-laser-defense-mk3-equipment", "defense-equipment")
equipment.add_category_to_equipment("personal-laser-defense-mk4-equipment", "defense-equipment")
equipment.add_category_to_equipment("shotgun-passive-defense-rampant-arsenal", "defense-equipment")
equipment.add_category_to_equipment("cannon-passive-defense-rampant-arsenal", "defense-equipment")
equipment.add_category_to_equipment("lightning-passive-defense-rampant-arsenal", "defense-equipment")
equipment.add_category_to_equipment("bullets-passive-defense-rampant-arsenal", "defense-equipment")
equipment.add_category_to_equipment("slow-passive-defense-rampant-arsenal", "defense-equipment")

equipment.add_category_to_equipment("energy-shield-equipment", "transport-shield")
equipment.add_category_to_equipment("energy-shield-mk2-equipment", "transport-shield")
equipment.add_category_to_equipment("energy-shield-mk3-equipment", "transport-shield")
equipment.add_category_to_equipment("mk3-shield-rampant-arsenal", "transport-shield")
equipment.add_category_to_equipment("energy-shield-mk4-equipment", "transport-shield")
equipment.add_category_to_equipment("energy-shield-mk5-equipment", "transport-shield")
equipment.add_category_to_equipment("energy-shield-mk6-equipment", "transport-shield")

equipment.add_category_to_equipment("battery-equipment", "battery-equipment")
equipment.add_category_to_equipment("big-battery-equipment", "battery-equipment")
equipment.add_category_to_equipment("battery-mk2-equipment", "battery-equipment")
equipment.add_category_to_equipment("big-battery-mk2-equipment", "battery-equipment")
equipment.add_category_to_equipment("mk3-battery-rampant-arsenal", "battery-equipment")
equipment.add_category_to_equipment("battery-mk3-equipment", "battery-equipment")
equipment.add_category_to_equipment("big-battery-mk3-equipment", "battery-equipment")

equipment.add_category_to_equipment("solar-panel-equipment", "solar-equipment")
equipment.add_category_to_equipment("big-solar-panel-equipment", "solar-equipment")
equipment.add_category_to_equipment("imersite-solar-panel-equipment", "solar-equipment")
equipment.add_category_to_equipment("big-imersite-solar-panel-equipment", "solar-equipment")

local arr_categories_for_transport = { "solar-equipmen", "transport-shield", "battery-equipment", "defense-equipment",
    "generator-equipment" }
-- locomotives grid
data.raw["movement-bonus-equipment"]["el_train_equipment_accelerator_item"].movement_bonus = 0.25

-- kr-locomotive-grid
data.raw["equipment-grid"]["kr-locomotive-grid"].width = 6
data.raw["equipment-grid"]["kr-locomotive-grid"].height = 6
equipment.clear_categories_from_grid("kr-locomotive-grid")
equipment.add_category_to_grid("kr-locomotive-grid", "el_train_equipment")
equipment.add_category_to_grid("kr-locomotive-grid", "fi_train_equipment")
equipment.add_categories_to_grid("kr-locomotive-grid", arr_categories_for_transport)

-- el_train_equipment_grid
data.raw["locomotive"]["el_diesel_train_entity"].max_power = "3000kW"
data.raw["equipment-grid"]["el_train_equipment_grid"].width = 9
data.raw["equipment-grid"]["el_train_equipment_grid"].height = 6
equipment.add_categories_to_grid("el_train_equipment_grid", arr_categories_for_transport)

-- kr-nuclear-locomotive-grid
data.raw["locomotive"]["kr-nuclear-locomotive"].max_power = "4000kW"
data.raw["locomotive"]["kr-nuclear-locomotive"].equipment_grid = "kr-nuclear-locomotive-grid"
data.raw["equipment-grid"]["kr-nuclear-locomotive-grid"].width = 12
data.raw["equipment-grid"]["kr-nuclear-locomotive-grid"].height = 6
equipment.add_category_to_grid("kr-nuclear-locomotive-grid", "el_train_equipment")
equipment.add_category_to_grid("kr-nuclear-locomotive-grid", "fi_train_equipment")
equipment.add_categories_to_grid("kr-nuclear-locomotive-grid", arr_categories_for_transport)

-- nuclear-train-grid-rampant-arsenal
data.raw["locomotive"]["nuclear-train-vehicle-rampant-arsenal"].max_power = "4000kW"
data.raw["equipment-grid"]["nuclear-train-grid-rampant-arsenal"].width = 12
data.raw["equipment-grid"]["nuclear-train-grid-rampant-arsenal"].height = 6
equipment.clear_categories_from_grid("nuclear-train-grid-rampant-arsenal")
equipment.add_category_to_grid("nuclear-train-grid-rampant-arsenal", "el_train_equipment")
equipment.add_category_to_grid("nuclear-train-grid-rampant-arsenal", "fi_train_equipment")
equipment.add_categories_to_grid("nuclear-train-grid-rampant-arsenal", arr_categories_for_transport)

-- space-locomotive-grid
data.raw["locomotive"]["space-locomotive"].max_power = "5000kW"
data.raw["locomotive"]["space-locomotive"].equipment_grid = "space-locomotive-grid"
data.raw["equipment-grid"]["space-locomotive-grid"].width = 15
data.raw["equipment-grid"]["space-locomotive-grid"].height = 6
equipment.add_category_to_grid("space-locomotive-grid", "el_train_equipment")
equipment.add_category_to_grid("space-locomotive-grid", "fi_train_equipment")
equipment.add_categories_to_grid("space-locomotive-grid", arr_categories_for_transport)

-- gr_magnet_train_pre_grid
data.raw["locomotive"]["gr_magnet_train_pre_entity"].equipment_grid = "gr_magnet_train_pre_grid"
data.raw["equipment-grid"]["gr_magnet_train_pre_grid"].width = 15
data.raw["equipment-grid"]["gr_magnet_train_pre_grid"].height = 9
equipment.add_category_to_grid("gr_magnet_train_pre_grid", "fi_train_equipment")
equipment.add_categories_to_grid("gr_magnet_train_pre_grid", arr_categories_for_transport)

-- gr_magnet_train_grid
data.raw["locomotive"]["gr_magnet_train_entity"].equipment_grid = "gr_magnet_train_grid"
data.raw["equipment-grid"]["gr_magnet_train_grid"].width = 15
data.raw["equipment-grid"]["gr_magnet_train_grid"].height = 12
equipment.add_category_to_grid("gr_magnet_train_grid", "fi_train_equipment")
equipment.add_categories_to_grid("gr_magnet_train_grid", arr_categories_for_transport)

-- wagons
data.raw["equipment-grid"]["kr-wagons-grid"].width = 10
data.raw["equipment-grid"]["kr-wagons-grid"].height = 10
equipment.clear_categories_from_grid("kr-wagons-grid")
equipment.add_categories_to_grid("kr-wagons-grid", arr_categories_for_transport)

data.raw["cargo-wagon"]["gr_magnet_wagon_pre_entity"].equipment_grid = "kr-wagons-grid"
data.raw["cargo-wagon"]["gr_magnet_wagon_entity"].equipment_grid = "kr-wagons-grid"

data.raw["fluid-wagon"]["gr_magnet_tanker_pre_entity"].equipment_grid = "kr-wagons-grid"
data.raw["fluid-wagon"]["gr_magnet_tanker_entity"].equipment_grid = "kr-wagons-grid"

-- car
data.raw["car"]["car"].consumption = "500kW"
data.raw["equipment-grid"]["kr-car-grid"].width = 6
data.raw["equipment-grid"]["kr-car-grid"].height = 6
equipment.clear_categories_from_grid("kr-car-grid")
equipment.add_category_to_grid("kr-car-grid", "vehicle-motor")
equipment.add_categories_to_grid("kr-car-grid", arr_categories_for_transport)

-- advanced car rampant arsenal
data.raw["car"]["advanced-car-vehicle-rampant-arsenal"].consumption = "2500kW"
data.raw["equipment-grid"]["advanced-car-grid-rampant-arsenal"].width = 9
data.raw["equipment-grid"]["advanced-car-grid-rampant-arsenal"].height = 9
equipment.clear_categories_from_grid("advanced-car-grid-rampant-arsenal")
equipment.add_category_to_grid("advanced-car-grid-rampant-arsenal", "vehicle-motor")
equipment.add_categories_to_grid("advanced-car-grid-rampant-arsenal", arr_categories_for_transport)

-- nuclear car rampant arsenal
data.raw["car"]["nuclear-car-vehicle-rampant-arsenal"].consumption = "5000kW"
data.raw["equipment-grid"]["nuclear-car-grid-rampant-arsenal"].width = 12
data.raw["equipment-grid"]["nuclear-car-grid-rampant-arsenal"].height = 12
equipment.clear_categories_from_grid("nuclear-car-grid-rampant-arsenal")
equipment.add_category_to_grid("nuclear-car-grid-rampant-arsenal", "vehicle-motor")
equipment.add_categories_to_grid("nuclear-car-grid-rampant-arsenal", arr_categories_for_transport)

-- tank
data.raw["car"]["tank"].consumption = "1000kW"
data.raw["equipment-grid"]["kr-tank-grid-2"].width = 12
data.raw["equipment-grid"]["kr-tank-grid-2"].height = 12
equipment.clear_categories_from_grid("kr-tank-grid-2")
equipment.add_category_to_grid("kr-tank-grid-2", "vehicle-motor")
equipment.add_categories_to_grid("kr-tank-grid-2", arr_categories_for_transport)

-- advanced tank rampant arsenal
data.raw["car"]["advanced-tank-vehicle-rampant-arsenal"].consumption = "5000kW"
data.raw["equipment-grid"]["advanced-tank-grid-rampant-arsenal"].width = 15
data.raw["equipment-grid"]["advanced-tank-grid-rampant-arsenal"].height = 15
equipment.clear_categories_from_grid("advanced-tank-grid-rampant-arsenal")
equipment.add_category_to_grid("advanced-tank-grid-rampant-arsenal", "vehicle-motor")
equipment.add_categories_to_grid("advanced-tank-grid-rampant-arsenal", arr_categories_for_transport)

-- nuclear tank rampant arsenal
data.raw["car"]["nuclear-tank-vehicle-rampant-arsenal"].consumption = "15000kW"
data.raw["equipment-grid"]["nuclear-tank-grid-rampant-arsenal"].width = 18
data.raw["equipment-grid"]["nuclear-tank-grid-rampant-arsenal"].height = 18
equipment.clear_categories_from_grid("nuclear-tank-grid-rampant-arsenal")
equipment.add_category_to_grid("nuclear-tank-grid-rampant-arsenal", "vehicle-motor")
equipment.add_categories_to_grid("nuclear-tank-grid-rampant-arsenal", arr_categories_for_transport)

-- kr advanced tank
data.raw["car"]["kr-advanced-tank"].consumption = "15000kW"
data.raw["equipment-grid"]["kr-advanced-tank-grid"].width = 18
data.raw["equipment-grid"]["kr-advanced-tank-grid"].height = 18
data.raw["car"]["kr-advanced-tank"].equipment_grid = "kr-advanced-tank-grid"
equipment.clear_categories_from_grid("kr-advanced-tank-grid")
equipment.add_category_to_grid("kr-advanced-tank-grid", "vehicle-motor")
equipment.add_categories_to_grid("kr-advanced-tank-grid", arr_categories_for_transport)