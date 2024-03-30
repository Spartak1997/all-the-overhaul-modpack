atom.util.recipe.removeByNamePattern("^%a+%-plate%-dust$")
atom.util.recipe.removeByNamePattern("^%a+%-%a+%-industrial%-%a+$")
atom.util.recipe.removeByName("tin-plate")
atom.util.recipe.removeByName("molten-tin")
atom.util.recipe.removeByName("lead-plate")
atom.util.recipe.removeByName("molten-lead")
atom.util.recipe.removeByName("lead-ingot")
atom.util.recipe.removeByName("lead-dust")
atom.util.recipe.removeByName("rare-metals-1")
atom.util.recipe.removeByName("rare-metals-2")
atom.util.recipe.removeByName("tungsten-dust")
atom.util.recipe.removeByName("tungsten-plate")
atom.util.recipe.removeByName("alumina")
atom.util.recipe.removeByName("aluminum-plate")
atom.util.recipe.removeByName("aluminum-ingot")
atom.util.recipe.removeByName("molten-aluminum")
atom.util.recipe.removeByName("silver-plate")
atom.util.recipe.removeByName("silver-ingot")
atom.util.recipe.removeByName("silver-ingot-to-plate")
atom.util.recipe.removeByName("molten-silver")
atom.util.recipe.removeByName("molten-gold")
atom.util.recipe.removeByName("gold-ingot")
atom.util.recipe.removeByName("gold-ingot-casting")
atom.util.recipe.removeByName("enriched-gold-ingot")
atom.util.recipe.removeByName("platinum-ingot")
atom.util.recipe.removeByName("palladium-ingot")
atom.util.recipe.removeByName("graphite-5d")
atom.util.recipe.removeByName("zirconia")
atom.util.recipe.removeByName("enriched-zirconia-smelting")
atom.util.recipe.removeByName("molten-zirconium")
atom.util.recipe.removeByName("molten-titanium")
atom.util.item.removeByName("tungsten-powder")

local util = require("_data-util")

util.tech_add_prerequisites("cobalt-chemistry", "cobalt-refining")

-- TODO: Add a replacement for tungsten-carbide-casting to the new processing