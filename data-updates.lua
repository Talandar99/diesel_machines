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
if mods["pelagos"] then
	data.raw["item"]["portable-diesel-generator"].default_import_location = "pelagos"
end

-- diesel assembling-machine recipes
--local base_categories = data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories
--local diesel_categories = table.deepcopy(base_categories)
--if mods["barreling_machines"] then
--	table.insert(diesel_categories, "barreling")
--end
--if mods["cargo_crates"] then
--	table.insert(diesel_categories, "cargo-crates")
--end
--if mods["pelagos"] then
--	table.insert(diesel_categories, "diesel-rocket-parts")
--end
--data.raw["assembling-machine"]["diesel-assembling-machine"].crafting_categories = diesel_categories
