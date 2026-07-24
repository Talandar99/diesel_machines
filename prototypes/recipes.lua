data.extend({
	{

		type = "recipe",
		name = "diesel-fast-inserter",
		enabled = false,
		ingredients = {
			{ type = "item", name = "pipe", amount = 4 },
			{ type = "item", name = "diesel-engine-unit", amount = 1 },
			{ type = "item", name = "steel-gear-wheel", amount = 1 },
			{ type = "item", name = "burner-inserter", amount = 1 },
		},
		results = { { type = "item", name = "diesel-fast-inserter", amount = 1 } },
	},
	{

		type = "recipe",
		name = "diesel-long-handed-inserter",
		enabled = false,
		ingredients = {
			{ type = "item", name = "pipe", amount = 4 },
			{ type = "item", name = "diesel-engine-unit", amount = 1 },
			{ type = "item", name = "steel-gear-wheel", amount = 1 },
			{ type = "item", name = "burner-inserter", amount = 1 },
		},
		results = { { type = "item", name = "diesel-long-handed-inserter", amount = 1 } },
	},
	{

		type = "recipe",
		name = "diesel-extra-long-handed-inserter",
		enabled = false,
		ingredients = {
			{ type = "item", name = "pipe", amount = 4 },
			{ type = "item", name = "diesel-engine-unit", amount = 1 },
			{ type = "item", name = "steel-gear-wheel", amount = 2 },
			{ type = "item", name = "burner-inserter", amount = 1 },
		},
		results = { { type = "item", name = "diesel-extra-long-handed-inserter", amount = 1 } },
	},
	{

		type = "recipe",
		name = "diesel-cargo-bulk-inserter",
		enabled = false,
		ingredients = {
			{ type = "item", name = "pipe", amount = 4 },
			{ type = "item", name = "diesel-engine-unit", amount = 2 },
			{ type = "item", name = "burner-inserter", amount = 1 },
			{ type = "item", name = "steel-gear-wheel", amount = 3 },
			{ type = "item", name = "steel-plate", amount = 5 },
		},
		results = { { type = "item", name = "diesel-cargo-bulk-inserter", amount = 1 } },
	},
	{
		type = "recipe",
		name = "diesel-assembling-machine",
		enabled = false,
		ingredients = {
			{ type = "item", name = "steel-plate", amount = 5 },
			{ type = "item", name = "iron-plate", amount = 15 },
			{ type = "item", name = "steel-gear-wheel", amount = 10 },
			{ type = "item", name = "iron-gear-wheel", amount = 10 },
			{ type = "item", name = "diesel-engine-unit", amount = 5 },
		},
		results = { { type = "item", name = "diesel-assembling-machine", amount = 1 } },
	},
	{
		type = "recipe",
		name = "diesel-pump",
		enabled = false,
		ingredients = {
			{ type = "item", name = "diesel-engine-unit", amount = 1 },
			{ type = "item", name = "steel-gear-wheel", amount = 3 },
			{ type = "item", name = "pipe", amount = 4 },
		},
		results = { { type = "item", name = "diesel-pump", amount = 1 } },
	},
	{
		type = "recipe",
		name = "diesel-miner",
		categories = { "advanced-crafting" },
		enabled = true,
		energy_required = 30,
		ingredients = {
			{ type = "item", name = "burner-mining-drill", amount = 6 },
			{ type = "item", name = "steel-plate", amount = 55 },
			{ type = "item", name = "iron-gear-wheel", amount = 40 },
			{ type = "item", name = "steel-gear-wheel", amount = 35 },
			{ type = "item", name = "diesel-engine-unit", amount = 20 },
			{ type = "item", name = "pipe", amount = 30 },
			{ type = "fluid", name = "lubricant", amount = 20 },
		},
		results = { { type = "item", name = "diesel-miner", amount = 1 } },
	},
})
if mods["space-age"] then
end
