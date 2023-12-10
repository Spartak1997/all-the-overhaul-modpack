local util = require("data-util")
--LDS 248k Recipe fix
util.replace_or_add_ingredient("fi_low-density-structure_recipe", nil, "titanium-plate", 8, false)
util.replace_or_add_ingredient("fi_low-density-structure_recipe", nil, "diamond", 4, false)
util.replace_or_add_ingredient("fi_low-density-structure_recipe", nil, "zirconia", 20, false)
util.replace_or_add_ingredient("fi_low-density-structure_recipe", nil, "carbon-fiber", 20, false)
--Adjust basic electronic components to require more ingredients
util.replace_or_add_ingredient("basic-electronic-components", "copper-cable", "copper-cable", 5, false)
util.replace_or_add_ingredient("basic-electronic-components", "graphite", "graphite", 5, false)
--Adjust Electronic circuits recipies to use less electronic components
util.replace_or_add_ingredient("electronic-circuit", "basic-electronic-components", "basic-electronic-components", 2,
    false)
util.replace_or_add_ingredient("electronic-circuit-silver", "basic-electronic-components", "silver-wire", 4, false)
--Add Mysterious energy crystals to Prod 1
util.replace_or_add_ingredient("productivity-module", "glass", "el_energy_crystal_item", 10, false)
--Adjust Artificial energy crystals to be use more.
util.replace_or_add_ingredient("big-battery-equipment", nil, "fi_energy_crystal_item", 4, false)
util.replace_or_add_ingredient("se-rtg-equipment", nil, "fi_energy_crystal_item", 4, false)
util.replace_or_add_ingredient("big-solar-panel-equipment", nil, "fi_energy_crystal_item", 4, false)
util.replace_or_add_ingredient("productivity-module-2", "glass", "fi_energy_crystal_item", 10, false)
--Adjust Refined Crystals to be used more
util.replace_or_add_ingredient("productivity-module-3", "mlcc", "fu_materials_refined_crystal", 4, false)
util.replace_or_add_ingredient("big-battery-mk2-equipment", nil, "fu_materials_refined_crystal", 4, false)
util.replace_or_add_ingredient("big-imersite-solar-panel-equipment", nil, "fu_materials_refined_crystal", 4, false)
--Adding Neodymium to some recipes
util.replace_or_add_ingredient("se-space-hypercooler", nil, "fi_materials_neodym", 15, false)
util.replace_or_add_ingredient("se-space-radiator", nil, "fi_materials_neodym", 15, false)
util.replace_or_add_ingredient("se-space-radiator-2", nil, "fi_materials_neodym", 15, false)
--Adjust 248k recipes to be better balanced
util.replace_or_add_ingredient("steel-plate", "iron-plate", "iron-plate", 10, false)
util.replace_or_add_ingredient("el_purify_iron_recipe", "iron-ore", "iron-ore", 13, false)
util.replace_or_add_ingredient("el_purify_copper_recipe", "copper-ore", "copper-ore", 13, false)
--Changed quantum processors to use hcp instead of blue curcuits
util.replace_or_add_ingredient("se-quantum-processor","processing-unit","gr_materials_circuit", 4 ,false)

--Disable wooden rails and rail conversions
bobmods.lib.recipe.hide("bi-rail-wood")
bobmods.lib.recipe.hide("bi-rail-wood-to-concrete")
bobmods.lib.recipe.hide("bi-plastic-1")
bobmods.lib.recipe.hide("bi-plastic-2")

--Change bismuth ammo to output rifle magazines
data.raw.recipe["rifle-magazine-bismuth"].results = { { "rifle-magazine", 1} }
data.raw.recipe["rifle-magazine-bismuth"].main_product = "rifle-magazine"
data.raw.recipe["pistol-magazine-bismuth"].results = { { "firearm-magazine", 1} }
data.raw.recipe["pistol-magazine-bismuth"].main_product = "firearm-magazine"
--change localized name of a few items that have similar names
data.raw.recipe["fu_carbon_fiber_recipe"].localised_name = "Graphite fiber"
data.raw.recipe["fu_KFK_recipe"].localised_name = "Graphite fiber reinforced plastic"
data.raw.recipe["el_lithium_ore_recipe"].localised_name = "Lithium crystal"
data.raw.recipe["el_purify_iron_recipe"].localised_name = "Cloudy water"
data.raw.recipe["el_purify_copper_recipe"].localised_name = "Cloudy water"
data.raw.recipe["el_purify_aluminum_recipe"].localised_name = "Cloudy water"
data.raw.recipe["el_purify_stone_recipe"].localised_name = "Cloudy water"
data.raw.recipe["fi_dirty_solution_unpack_recipe"].localised_name = "Cloudy water"
data.raw.recipe["fu_treat_slag_recipe"].localised_name = "Cloudy water"
data.raw.recipe["fi_dirty_solution_pack_recipe"].localised_name = "Cloudy water container"

--Change pcb solder(Bismuth) ingredients to solder(BZTIN) and adjust recipe and remove PCB-Solder
--Until I can find a better way to remove pcb solder from recipes that have both, i'm doing this
util.replace_or_add_ingredient("roboport", "pcb-solder", "battery", 50, false)
util.find_and_replace_ingredients({ ["pcb-solder"] = "solder" })
data.raw.recipe["pcb-solder"].localised_name = "Lead Free Solder"
util.replace_or_add_ingredient("pcb-solder", "tin-plate", "tin-plate", 3, false)
util.replace_or_add_ingredient("pcb-solder", "bismuth-plate", "bismuth-plate", 3, false)
data.raw.recipe["pcb-solder"].results = { { "solder", 6 }, { type = "item", name = "silver-ore", amount = 1, catalyst_amount = 1, probability = 0.8 } }
data.raw.recipe["pcb-solder"].main_product = "solder"
data.raw.technology["pcb-solder"].localised_name = "Lead free solder"
data.raw.recipe["pcb-solder"].allow_as_intermediate = false

-- remove the alternate singularity card
bobmods.lib.recipe.hide("singularity-tech-card-alt")

-- recipese
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

--Advanced Furnaces 2

if mods['Load-Furn-2'] then
--1
bobmods.lib.recipe.add_new_ingredient("furnace-pro-01", { "temperature-sensor", 1 })
bobmods.lib.recipe.add_new_ingredient("furnace-pro-01", { "crucible", 1 })
bobmods.lib.recipe.add_new_ingredient("furnace-pro-01", { "hardened-hull", 10 })
bobmods.lib.recipe.add_new_ingredient("furnace-pro-01", { "zirconium-plate", 10 })
if mods["IfNickel"] then
bobmods.lib.recipe.replace_ingredient("furnace-pro-01", "steel-plate", "nitinol-plate")
else 
bobmods.lib.recipe.replace_ingredient("furnace-pro-01", "steel-plate", "tungsten-plate")
end
--2
bobmods.lib.recipe.add_new_ingredient("furnace-pro-02", { "temperature-sensor", 1 })
bobmods.lib.recipe.add_new_ingredient("furnace-pro-02", { "crucible", 1 })
bobmods.lib.recipe.add_new_ingredient("furnace-pro-02", { "hardened-hull", 20 })
bobmods.lib.recipe.add_new_ingredient("furnace-pro-02", { "zirconium-plate", 20 })
bobmods.lib.recipe.replace_ingredient("furnace-pro-02", "steel-plate", "titanium-plate")
--3
bobmods.lib.recipe.add_new_ingredient("furnace-pro-03", { "temperature-sensor", 1 })
bobmods.lib.recipe.add_new_ingredient("furnace-pro-03", { "graphite", 10 })
--4
bobmods.lib.recipe.add_new_ingredient("furnace-pro-04", { "temperature-sensor", 1 })
bobmods.lib.recipe.add_new_ingredient("furnace-pro-04", { "imersium-plate", 10 })
--5
bobmods.lib.recipe.add_new_ingredient("furnace-pro-05", { "temperature-sensor", 1 })
bobmods.lib.recipe.add_new_ingredient("furnace-pro-05", { "se-heavy-girder", 10 })

--Add Furnace MK5 in Krastorio's furnace
bobmods.lib.recipe.add_new_ingredient("kr-advanced-furnace", "furnace-pro-05")

end

-- TA Miners
-- Crust Extractor
bobmods.lib.recipe.remove_ingredient("crust_extractor", "pipe")
bobmods.lib.recipe.remove_ingredient("crust_extractor", "speed-module")
bobmods.lib.recipe.remove_ingredient("crust_extractor", "electric-motor")
bobmods.lib.recipe.remove_ingredient("crust_extractor", "engine-unit")
bobmods.lib.recipe.remove_ingredient("crust_extractor", "steel-plate")
bobmods.lib.recipe.remove_ingredient("crust_extractor", "se-vulcanite-block")
bobmods.lib.recipe.remove_ingredient("crust_extractor", "kr-steel-pipe")
bobmods.lib.recipe.add_new_ingredient("crust_extractor", { "fi_materials_upgrade", 1 })
bobmods.lib.recipe.add_new_ingredient("crust_extractor", { "area-mining-drill", 1 })
bobmods.lib.recipe.add_new_ingredient("crust_extractor", { "elite-gearbox", 5 })
bobmods.lib.recipe.add_new_ingredient("crust_extractor", { "se-dynamic-emitter", 5 })
bobmods.lib.recipe.add_new_ingredient("crust_extractor", { "industrial-drill-head", 10 })
bobmods.lib.recipe.add_new_ingredient("crust_extractor", { "speed-module-4", 20 })
bobmods.lib.recipe.add_new_ingredient("crust_extractor", { "se-heavy-composite", 50 })
bobmods.lib.recipe.add_new_ingredient("crust_extractor", { "se-heavy-bearing", 50 })
bobmods.lib.recipe.add_new_ingredient("crust_extractor", { "se-space-pipe", 100 })
-- Moho Extractor
bobmods.lib.recipe.remove_ingredient("moho_extractor", "pipe")
bobmods.lib.recipe.remove_ingredient("moho_extractor", "speed-module-2")
bobmods.lib.recipe.remove_ingredient("moho_extractor", "electric-engine-unit")
bobmods.lib.recipe.remove_ingredient("moho_extractor", "steel-plate")
bobmods.lib.recipe.remove_ingredient("moho_extractor", "se-cryonite-rod")
bobmods.lib.recipe.remove_ingredient("moho_extractor", "se-beryllium-ingot")
bobmods.lib.recipe.remove_ingredient("moho_extractor", "se-iridium-ingot")
bobmods.lib.recipe.remove_ingredient("moho_extractor", "kr-steel-pipe")
bobmods.lib.recipe.add_new_ingredient("moho_extractor", { "fu_materials_upgrade", 1 })
bobmods.lib.recipe.add_new_ingredient("moho_extractor", { "crust_extractor", 1 })
bobmods.lib.recipe.add_new_ingredient("moho_extractor", { "se-heavy-assembly", 10 })
bobmods.lib.recipe.add_new_ingredient("moho_extractor", { "se-dynamic-emitter", 10 })
bobmods.lib.recipe.add_new_ingredient("moho_extractor", { "industrial-drill-head", 20 })
bobmods.lib.recipe.add_new_ingredient("moho_extractor", { "speed-module-5", 20 })
bobmods.lib.recipe.add_new_ingredient("moho_extractor", { "imersium-beam", 100 })
bobmods.lib.recipe.add_new_ingredient("moho_extractor", { "se-heavy-bearing", 100 })
bobmods.lib.recipe.add_new_ingredient("moho_extractor", { "se-space-pipe", 200 })
-- Mantle Extractor
bobmods.lib.recipe.remove_ingredient("mantle_extractor", "pipe")
bobmods.lib.recipe.remove_ingredient("mantle_extractor", "speed-module-3")
bobmods.lib.recipe.remove_ingredient("mantle_extractor", "flying-robot-frame")
bobmods.lib.recipe.remove_ingredient("mantle_extractor", "steel-plate")
bobmods.lib.recipe.remove_ingredient("mantle_extractor", "imersium-beam")
bobmods.lib.recipe.remove_ingredient("mantle_extractor", "imersium-plate")
bobmods.lib.recipe.remove_ingredient("mantle_extractor", "se-cryonite-rod")
bobmods.lib.recipe.remove_ingredient("mantle_extractor", "se-beryllium-plate")
bobmods.lib.recipe.remove_ingredient("mantle_extractor", "se-iridium-plate")
bobmods.lib.recipe.remove_ingredient("mantle_extractor", "kr-steel-pipe")
bobmods.lib.recipe.add_new_ingredient("mantle_extractor", { "gr_materials_upgrade", 1 })
bobmods.lib.recipe.add_new_ingredient("mantle_extractor", { "moho_extractor", 1 })
bobmods.lib.recipe.add_new_ingredient("mantle_extractor", { "se-heavy-assembly", 20 })
bobmods.lib.recipe.add_new_ingredient("mantle_extractor", { "se-dynamic-emitter", 20 })
bobmods.lib.recipe.add_new_ingredient("mantle_extractor", { "industrial-drill-head", 40 })
bobmods.lib.recipe.add_new_ingredient("mantle_extractor", { "speed-module-6", 20 })
bobmods.lib.recipe.add_new_ingredient("mantle_extractor", { "se-naquium-plate", 100 })
bobmods.lib.recipe.add_new_ingredient("mantle_extractor", { "se-heavy-bearing", 200 })
bobmods.lib.recipe.add_new_ingredient("mantle_extractor", { "se-space-pipe", 300 })

-- 248K research balance
-- Rename Fusion tech to Fusion catalogue
data.raw.technology["fu_energy_tech"].localised_name = "Fusion catalogue 2"
data.raw.item["fu_tech_sign_item"].localised_name = "Broad fusion catalogue"
-- Hige the recipe
bobmods.lib.recipe.hide("fu_tech_sign_item")
-- Fix Portable fusion reactor recipe
bobmods.lib.recipe.remove_ingredient("fusion-reactor-equipment", "se-fusion-test-data")
bobmods.lib.recipe.add_new_ingredient("fusion-reactor-equipment", { "fusion-data-248", 50 })

data:extend({
--Alt recipe of Tritium
	{
        type = "recipe",
        name = "248k-krastorio2-tritium",
        category = "chemistry",
        energy_required = 1,
        ingredients = {{type="fluid", name="fu_tritium", amount=3}},
        result = "tritium",
        enabled = true
    },
--Data
	{
        type = "recipe",
        name = "fusion-stable-data",
		ingredients = {
            { "fu_materials_fusion_card", 1},
            { "se-empty-data", 1},
            { type = "fluid", name = "se-ion-stream", amount=100},
        },
		results = {
			{ name = "fusion-stable-data", amount = 1},
			{ name = "se-contaminated-scrap", amount = 8},
		},
        energy_required = 2,
		main_product = "fusion-stable-data",
		category = "space-collider",
		enabled = false,
		always_show_made_in = true,
    },
	{
        type = "recipe",
		name = "fusion-speed-data",
        ingredients = {
			{ "se-material-testing-pack", 1},
			{ "dt-fuel", 1},
			{ "fu_materials_fusion_card", 1},
			{ "se-atomic-data", 1},
			{ "se-entanglement-data", 1},
			{ "se-empty-data", 1},
			{ type = "fluid", name = "se-ion-stream", amount=100},
        },
        results = {
			{ name = "fusion-speed-data", amount = 3},
			{ "dt-fuel", 1},
			{ name = "se-contaminated-scrap", amount = 4},
		},
        energy_required = 2,
		main_product = "fusion-speed-data",
		category = "space-collider",
        enabled = "false",
        always_show_made_in = true,
    },
	{
        type = "recipe",
		name = "fusion-accuracy-data",
        ingredients = {
			{ "nickel-electromagnet", 1},
			{ "fu_materials_charged_container", 1},
			{ "fu_materials_fusion_card", 1},
			{ "se-pressure-containment-data", 1},
			{ "se-quantum-phenomenon-data", 1},
			{ "se-empty-data", 1},
			{ type = "fluid", name = "se-ion-stream", amount=20},
			{ type = "fluid", name = "se-space-coolant-supercooled", amount=10},
        },
        results = {
			{ name = "fusion-accuracy-data", amount_min = 1, amount_max = 3, probability = 0.5},
			{ "fu_materials_charged_container", 1},
			{ name = "se-junk-data", amount_min = 1, amount_max = 1, probability = 0.5},
			{ name = "nickel-electromagnet", amount_min = 1, amount_max = 1, probability = 0.75},
			{ name = "se-scrap", amount_min = 1, amount_max = 1, probability = 0.25},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
        energy_required = 4,
		main_product = "fusion-accuracy-data",
		category = "space-collider",
        enabled = "false",
        always_show_made_in = true,
    },
	
	{
        type = "recipe",
        name = "laser-heating-data",
		ingredients = {
            { "fu_materials_laser_card", 1},
            { "fu_materials_TIM", 1},
			{ "se-empty-data", 1},
            { type = "fluid", name = "se-space-coolant-supercooled", amount=10},
        },
		results = {
			{ name = "laser-heating-data", amount = 1},
			{ name = "se-contaminated-scrap", amount = 2},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
        energy_required = 10,
		main_product = "laser-heating-data",
		category = "space-laser",
		enabled = false,
		always_show_made_in = true,
    },
	{
        type = "recipe",
        name = "laser-calculation-data",
		ingredients = {
			{ "scanner", 1},
            { "se-material-testing-pack", 1},
            { "se-explosion-shielding-data", 1},
			{ "fu_materials_laser_card", 1},
			{ "se-empty-data", 1},
            { type = "fluid", name = "se-space-coolant-supercooled", amount=10},
        },
		results = {
			{ name = "laser-calculation-data", amount = 2},
			{ name = "se-contaminated-scrap", amount = 2},
			{ name = "scanner", amount_min = 1, amount_max = 1, probability = 0.95},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
        energy_required = 5,
		main_product = "laser-calculation-data",
		category = "space-laser",
		enabled = false,
		always_show_made_in = true,
    },
	{
		type = "recipe",
		name = "laser-decay-data",
		ingredients = {
			{ "spectroscope", 1},
			{ "se-space-mirror", 2},
			{ "se-forcefield-data", 1},
			{ "se-particle-beam-shielding-data", 1},
			{ "fu_materials_laser_card", 1},
			{ "se-empty-data", 2},
			{ type = "fluid", name = "se-space-coolant-supercooled", amount=10},
        },
		results = {
			{ name = "laser-decay-data", amount = 3},
			{ name = "se-junk-data", amount = 1},
			{ name = "se-scrap", amount = 2},
			{ name = "spectroscope", amount_min = 1, amount_max = 1, probability = 0.99},
			{ name = "se-scrap", amount_min = 1, amount_max = 3, probability = 0.25},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
        energy_required = 5,
		main_product = "laser-decay-data",
		category = "space-laser",
		enabled = false,
		always_show_made_in = true,
    },
	
	
	{
        type = "recipe",
        name = "magnet-stabilazer-data",
		ingredients = {
			{ "nickel-electromagnet", 1},
			{ "niobium-plate", 1},
            { "fu_materials_magnet_card", 1},
            { "se-empty-data", 1},
			{ type = "fluid", name = "se-ion-stream", amount=50},
            { type = "fluid", name = "se-space-coolant-cold", amount=10},
        },
		results = {
			{ name = "magnet-stabilazer-data", amount_min = 1, amount_max = 1, probability = 0.95},
			{ name = "se-junk-data", amount_min = 1, amount_max = 1, probability = 0.04},
			{ name = "niobium-plate", amount_min = 1, amount_max = 1, probability = 0.95},
			{ name = "nickel-electromagnet", amount_min = 1, amount_max = 1, probability = 0.75},
			{ name = "se-scrap", amount_min = 1, amount_max = 1, probability = 0.1},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
        energy_required = 10,
		main_product = "magnet-stabilazer-data",
		category = "space-electromagnetics",
		enabled = false,
		always_show_made_in = true,
    },
	{
        type = "recipe",
        name = "magnet-trajectory-data",
		ingredients = {
			{ "nickel-electromagnet", 1},
			{ "se-electromagnetic-field-data", 1},
			{ "se-polarisation-data", 1},
			{ "fu_materials_magnet", 1},
            { "fu_materials_magnet_card", 1},
            { "se-empty-data", 1},
            { type = "fluid", name = "se-space-coolant-cold", amount=10},
        },
		results = {
			{ name = "magnet-trajectory-data", amount = 3},
			{ name = "nickel-electromagnet", amount_min = 1, amount_max = 1, probability = 0.75},
			{ name = "se-scrap", amount_min = 1, amount_max = 1, probability = 0.25},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
        energy_required = 10,
		main_product = "magnet-trajectory-data",
		category = "space-electromagnetics",
		enabled = false,
		always_show_made_in = true,
    },
	{
        type = "recipe",
        name = "magnet-contain-data",
		ingredients = {
			{ "nickel-electromagnet", 1},
			{ "se-experimental-alloys-data", 1},
			{ "se-superconductivity-data", 1},
			{ "highenergy-data-248", 1},
            { "fu_materials_magnet_card", 1},
            { "se-empty-data", 1},
			{ type = "fluid", name = "se-ion-stream", amount=50},
            { type = "fluid", name = "se-space-coolant-cold", amount=10},
        },
		results = {
			{ name = "magnet-contain-data", amount = 3},
			{ name = "se-junk-data", amount_min = 1, amount_max = 1, probability = 0.95},
			{ name = "nickel-electromagnet", amount_min = 1, amount_max = 1, probability = 0.75},
			{ name = "se-scrap", amount_min = 1, amount_max = 1, probability = 0.25},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
        energy_required = 10,
		main_product = "magnet-contain-data",
		category = "space-electromagnetics",
		enabled = false,
		always_show_made_in = true,
    },
	
	
	{
        type = "recipe",
        name = "plasma-rotating-data",
		ingredients = {
			{ "nickel-electromagnet", 1},
			{ "fu_materials_plasma_card", 1},
            { "se-empty-data", 1},
			{ type = "fluid", name = "se-proton-stream", amount=20},
            { type = "fluid", name = "se-space-coolant-supercooled", amount=10},
        },
		results = {
			{ name = "plasma-rotating-data", amount_min = 1, amount_max = 1, probability = 0.7},
			{ name = "se-junk-data", amount_min = 1, amount_max = 1, probability = 0.29},
			{ name = "nickel-electromagnet", amount_min = 1, amount_max = 1, probability = 0.75},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
        energy_required = 5,
		main_product = "plasma-rotating-data",
		category = "space-collider",
		enabled = false,
		always_show_made_in = true,
    },
	{
        type = "recipe",
        name = "plasma-spinning-data",
		ingredients = {
			{ "nickel-electromagnet", 1},
			{ "se-quantum-phenomenon-data", 1},
			{ "fu_materials_plasma_card", 1},
            { "se-empty-data", 1},
			{ type = "fluid", name = "se-ion-stream", amount=20},
            { type = "fluid", name = "se-space-coolant-supercooled", amount=10},
        },
		results = {
			{ name = "plasma-spinning-data", amount_min = 1, amount_max = 2, probability = 0.6},
			{ name = "se-junk-data", amount_min = 1, amount_max = 1, probability = 0.39},
			{ name = "nickel-electromagnet", amount_min = 1, amount_max = 1, probability = 0.75},
			{ name = "se-scrap", amount_min = 1, amount_max = 1, probability = 0.25},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
        energy_required = 5,
		main_product = "plasma-spinning-data",
		category = "space-collider",
		enabled = false,
		always_show_made_in = true,
    },
	{
        type = "recipe",
        name = "plasma-star-data",
		ingredients = {
			{ "se-magnetic-canister", 5},
			{ "se-hot-thermodynamics-data", 1},
			{ "se-gravitational-lensing-data", 1},
			{ "se-fusion-test-data", 1},
			{ "fu_materials_plasma_card", 1},
            { "se-empty-data", 1},
			{ type = "fluid", name = "se-particle-stream", amount=100},
        },
		results = {
			{ name = "plasma-star-data", amount_min = 3, amount_max = 3, probability = 0.6},
			{ name = "se-junk-data", amount_min = 1, amount_max = 1, probability = 0.39},
			{ name = "se-scrap", amount = 15},
			{ name = "se-contaminated-scrap", amount = 10},
		},
        main_product = "plasma-star-data",
		category = "space-materialisation",
		enabled = false,
		always_show_made_in = true,
    },
	
	{
        type = "recipe",
        name = "highenergy-data-248",
		ingredients = {
			{ "nickel-electromagnet", 1},
			{ "fi_energy_crystal_charged_item", 1},
            { "se-empty-data", 1},
            { type = "fluid", name = "se-space-coolant-cold", amount=10},
        },
		results = {
			{ name = "highenergy-data-248", amount = 1},
			{ name = "fi_energy_crystal_charged_item", amount_min = 1, amount_max = 1, probability = 0.99},
			{ name = "nickel-electromagnet", amount_min = 1, amount_max = 1, probability = 0.75},
			{ name = "se-contaminated-scrap", amount = 1},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
        energy_required = 10,
		main_product = "highenergy-data-248",
		category = "space-electromagnetics",
		enabled = false,
		always_show_made_in = true,
    },
	{
        type = "recipe",
        name = "radioisotop-data-248",
		ingredients = {
			{ "fi_plutonium239_item", 1},
			{ "se-empty-data", 1},
        },
		results = {
			{ name = "radioisotop-data-248", amount = 1},
			{ name = "fi_plutonium239_item", amount_min = 1, amount_max = 1, probability = 0.99},
		},
        energy_required = 8,
		main_product = "radioisotop-data-248",
		category = "space-radiation",
		enabled = false,
		always_show_made_in = true,
    },
	{
        type = "recipe",
        name = "star-data-248",
		ingredients = {
			{ "scanner", 1},
			{ "se-visible-observation-data", 1},
			{ "se-uv-observation-data", 1},
			{ "se-infrared-observation-data", 1},
			{ "se-empty-data", 1},
        },
		results = {
			{ name = "star-data-248", amount = 4},
			{ name = "scanner", amount_min = 1, amount_max = 1, probability = 0.99},
			{ name = "se-scrap", amount_min = 1, amount_max = 1, probability = 0.1},
		},
        energy_required = 8,
		main_product = "star-data-248",
		category = "space-astrometrics",
		enabled = false,
		always_show_made_in = true,
    },
	{
        type = "recipe",
        name = "structural-data-248",
		ingredients = {
			{ "se-material-testing-pack", 3},
			{ "inconel-718", 1},
			{ "low-density-structure", 1},
			{ "aluminum-6061", 1},
			{ "se-empty-data", 3},
			{ type = "fluid", name = "lubricant", amount = 5},
        },
		results = {
			{ name = "structural-data-248", amount = 3},
			{ name = "se-scrap", amount = 6},
			{ type = "fluid", name = "se-contaminated-space-water", amount = 1},
		},
        energy_required = 10,
		main_product = "structural-data-248",
		category = "space-mechanical",
		enabled = false,
		always_show_made_in = true,
    },

	{
		type = "recipe",
		name = "fusion-catalogue-1",
		allow_productivity = true,
		ingredients = {
			{ "highenergy-data-248", 1 },
			{ "radioisotop-data-248", 1 },
			{ "star-data-248", 1 },
			{ "structural-data-248", 1 },
			{ type = "fluid", name = "se-space-coolant-cold", amount=10},
		},
		results = {
			{ name = "fusion-catalogue-1", amount = 1},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
		energy_required = 20,
		main_product = "fusion-catalogue-1",
		category = "catalogue-creation-1",
		enabled = false,
		always_show_made_in = true,
	},
	{
		type = "recipe",
		name = "fusion-catalogue-2",
		allow_productivity = true,
		ingredients = {
			{ "fusion-stable-data", 1 },
			{ "laser-heating-data", 1 },
			{ "magnet-stabilazer-data", 1 },
			{ "plasma-rotating-data", 1 },
			{ type = "fluid", name = "se-space-coolant-cold", amount=10},
		},
		results = {
			{ name = "fu_tech_sign_item", amount = 1},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
		energy_required = 20,
		main_product = "fu_tech_sign_item",
		category = "catalogue-creation-1",
		enabled = false,
		always_show_made_in = true,
	},
	{
		type = "recipe",
		name = "fusion-catalogue-3",
		allow_productivity = true,
		ingredients = {
			{ "fusion-speed-data", 1 },
			{ "laser-calculation-data", 1 },
			{ "magnet-trajectory-data", 1 },
			{ "plasma-spinning-data", 1 },
			{ type = "fluid", name = "se-space-coolant-cold", amount=10},
		},
		results = {
			{ name = "fusion-catalogue-3", amount = 1},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
		energy_required = 20,
		main_product = "fusion-catalogue-3",
		category = "catalogue-creation-1",
		enabled = false,
		always_show_made_in = true,
	},
	{
		type = "recipe",
		name = "fusion-catalogue-4",
		allow_productivity = true,
		ingredients = {
			{ "fusion-accuracy-data", 1 },
			{ "laser-decay-data", 1 },
			{ "magnet-contain-data", 1 },
			{ "plasma-star-data", 1 },
			{ type = "fluid", name = "se-space-coolant-cold", amount=10},
		},
		results = {
			{ name = "fusion-catalogue-4", amount = 1},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
		energy_required = 20,
		main_product = "fusion-catalogue-4",
		category = "catalogue-creation-1",
		enabled = false,
		always_show_made_in = true,
	},
	
	{
        type = "recipe",
        name = "fusion-science-pack-1",
        allow_productivity = true,
		ingredients = {
          { "fusion-catalogue-1", 1 },
          { "chromium-plate", 20 },
          { "se-significant-data", 1 },
          { type = "fluid", name = "se-space-coolant-cold", amount = 20},
        },
        results = {
          { name = "fusion-science-pack-1", amount = 2},
          { name = "se-junk-data", amount = 6},
          { type = "fluid", name = "se-space-coolant-hot", amount = 20},
        },
		energy_required = 30,
        main_product = "fusion-science-pack-1",
        category = "science-pack-creation-1",
		enabled = false,
		always_show_made_in = true,
    },
	{
        type = "recipe",
        name = "fusion-science-pack-2",
        allow_productivity = true,
		ingredients = {
		  { "se-significant-data", 1 },
          { "fu_tech_sign_item", 1 },
          { "fusion-science-pack-1", 2 },
          
          { type = "fluid", name = "se-space-coolant-cold", amount = 20},
        },
        results = {
          { name = "fusion-science-pack-2", amount = 4},
          { name = "se-junk-data", amount = 6},
          { type = "fluid", name = "se-space-coolant-hot", amount = 20},
        },
		energy_required = 30,
        main_product = "fusion-science-pack-2",
        category = "science-pack-creation-1",
		enabled = false,
		always_show_made_in = true,
    },
	{
        type = "recipe",
        name = "fusion-science-pack-3",
        allow_productivity = true,
		ingredients = {
		  { "se-significant-data", 1 },
		  { "fu_materials_magnet", 1},
          { "fusion-catalogue-3", 1 },
		  { "fusion-science-pack-2", 4 },
          
          { type = "fluid", name = "se-space-coolant-cold", amount = 20},
        },
        results = {
          { name = "fusion-science-pack-3", amount = 6},
          { name = "se-junk-data", amount = 6},
          { type = "fluid", name = "se-space-coolant-hot", amount = 20},
        },
		energy_required = 30,
        main_product = "fusion-science-pack-3",
        category = "science-pack-creation-1",
		enabled = false,
		always_show_made_in = true,
    },
	{
        type = "recipe",
        name = "fusion-science-pack-4",
        allow_productivity = true,
		ingredients = {
		  { "se-significant-data", 1 },
		  { "tritium", 1},
          { "fusion-catalogue-4", 1 },
		  { "fusion-science-pack-3", 6 },
          
          { type = "fluid", name = "se-space-coolant-cold", amount = 20},
        },
        results = {
          { name = "fusion-science-pack-4", amount = 8},
          { name = "se-junk-data", amount = 6},
          { type = "fluid", name = "se-space-coolant-hot", amount = 20},
        },
		energy_required = 30,
        main_product = "fusion-science-pack-4",
        category = "science-pack-creation-1",
		enabled = false,
		always_show_made_in = true,
    },
	
})
