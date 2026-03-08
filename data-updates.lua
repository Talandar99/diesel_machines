local base_categories = data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories
local diesel_categories = table.deepcopy(base_categories)

data.raw["assembling-machine"]["diesel-assembling-machine"].crafting_categories = diesel_categories

if mods["lignumis"] then
	if data.raw["inserter"]["steam-inserter"] then
		data.raw["inserter"]["steam-inserter"].next_upgrade = "fast-diesel-inserter"
	end
	if data.raw["inserter"]["long-handed-steam-inserter"] then
		data.raw["inserter"]["long-handed-steam-inserter"].next_upgrade = "long-handed-diesel-inserter"
	end
end

if mods["offshore_pump_require_power"] then
	require("prototypes.diesel-offshore-pump")
end
