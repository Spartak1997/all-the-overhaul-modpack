-- final fixes prototypes
if mods["RampantArsenal"] then
    require("prototypes/rampant-arsenal-final")
end

require("prototypes/common-final")
require("prototypes/recipe")
require("prototypes/technology")
require("prototypes/sorting/sorter")

data.raw["transport-belt"]["space-exp-transport-belt"].se_allow_in_space = true
data.raw["splitter"]["space-exp-splitter"].se_allow_in_space = true
data.raw["underground-belt"]["space-exp-underground-belt"].se_allow_in_space = true

--data.raw["transport-belt"]["express-transport-belt"].next_upgrade = "ultra-fast-belt"
--data.raw["underground-belt"]["express-underground-belt"].next_upgrade = "ultra-fast-underground-belt"
--data.raw["splitter"]["express-splitter"].next_upgrade = "ultra-fast-splitter"
