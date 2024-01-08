-- final fixes prototypes
if mods["RampantArsenal"] then
    require("prototypes/rampant-arsenal-final")
end

require("prototypes/common-final")
require("prototypes/recipe")
require("prototypes/technology")
require("prototypes/sorting/sorter")


data.raw["item"]["fu_tech_sign_item"].icon = "__all-the-overhaul-modpack__/graphics/icons/fusion-catalogue-2.png"
data.raw["item"]["fu_tech_sign_item"].icon_size = 128

function table.contains(table, element)
    for _, table_element in pairs(table) do
        if table_element == element then
            return true
        end
    end
    return false
end

--Science packs in labs
table.insert(data.raw.lab['kr-singularity-lab'].inputs, "fusion-science-pack-1")
if(table.contains(data.raw.lab["se-space-science-lab"].inputs, "fusion-science-pack-1") == false) then
    table.insert(data.raw.lab["se-space-science-lab"].inputs, "fusion-science-pack-1")
end

table.insert(data.raw.lab['kr-singularity-lab'].inputs, "fusion-science-pack-2")
if(table.contains(data.raw.lab["se-space-science-lab"].inputs, "fusion-science-pack-2") == false) then
    table.insert(data.raw.lab["se-space-science-lab"].inputs, "fusion-science-pack-2")
end

table.insert(data.raw.lab['kr-singularity-lab'].inputs, "fusion-science-pack-3")
if(table.contains(data.raw.lab["se-space-science-lab"].inputs, "fusion-science-pack-3") == false) then
    table.insert(data.raw.lab["se-space-science-lab"].inputs, "fusion-science-pack-3")
end

table.insert(data.raw.lab['kr-singularity-lab'].inputs, "fusion-science-pack-4")
if(table.contains(data.raw.lab["se-space-science-lab"].inputs, "fusion-science-pack-4") == false) then
    table.insert(data.raw.lab["se-space-science-lab"].inputs, "fusion-science-pack-4")
end

data.raw.lab["fu_lab_entity"].inputs = util.table.deepcopy(data.raw.lab["kr-singularity-lab"].inputs)

local research_rate = 1.0

for i = 1, 4 do
    if i == 1 then
        data.raw.lab["lab"].inputs = util.table.deepcopy(data.raw.lab["5d-lab-02"].inputs)
        table.insert(data.raw.lab["lab"].inputs, 1, "basic-tech-card")
    elseif i < 4 then
        local lab_name = "5d-lab-" .. (i < 10 and "0" or "") .. i
        table.insert(data.raw.lab[lab_name].inputs, 1, "basic-tech-card")
        data.raw.lab[lab_name].researching_speed = research_rate
    else
        data.raw.lab["biusart-lab"].researching_speed = research_rate
    end
    research_rate = research_rate + 0.25
end

data.raw.lab["5d-lab-03"].next_upgrade = nil

for i = 4, 10 do
    local lab_name = "5d-lab-" .. (i < 10 and "0" or "") .. i
    data.raw.lab[lab_name].inputs = util.table.deepcopy(data.raw.lab["biusart-lab"].inputs)
    data.raw.lab[lab_name].researching_speed = research_rate
    research_rate = research_rate + 0.25
end