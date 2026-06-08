data:extend({
	{
		type = "technology",
		name = "diesel-automation",
		icon = "__diesel_machines__/graphics/diesel-assembling-machine/diesel-automation.png",
		icon_size = 256,
		effects = {
			{ type = "unlock-recipe", recipe = "fast-diesel-inserter" },
			{ type = "unlock-recipe", recipe = "long-handed-diesel-inserter" },
			{ type = "unlock-recipe", recipe = "diesel-inserter" },
			{ type = "unlock-recipe", recipe = "crane-bulk-diesel-inserter" },
			{ type = "unlock-recipe", recipe = "diesel-assembling-machine" },
			{ type = "unlock-recipe", recipe = "diesel-pump" },
			{ type = "unlock-recipe", recipe = "diesel-mining-drill" },
		},
		prerequisites = {
			"automation-2",
			"electric-mining-drill",
			"bulk-inserter",
			"oil-processing",
		},
		unit = {
			count_formula = "200",
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
			},
			time = 30,
		},
	},
	{
		type = "technology",
		name = "portable-diesel-generator",
		icons = util.technology_icon_constant_equipment("__diesel_machines__/graphics/portable-diesel-generator.png"),
		icon_size = 256,
		effects = {
			{ type = "unlock-recipe", recipe = "portable-diesel-generator" },
		},
		prerequisites = {
			"diesel-automation",
			--	"automation-2", -- important for any planet start
			"power-armor",
			"utility-science-pack",
		},
		unit = {
			count_formula = "500",
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
				{ "utility-science-pack", 1 },
			},
			time = 60,
		},
	},
})
data:extend({
	{
		type = "technology",
		name = "diesel-asteroid-collector",
		icon = "__diesel_machines__/graphics/diesel-asteroid-collector/asteroid-collector.png",
		icon_size = 64,
		effects = {
			{ type = "unlock-recipe", recipe = "diesel-asteroid-collector" },
		},
		prerequisites = { "diesel-automation", "space-platform", "space-diesel" },
		unit = {
			count_formula = "1000",
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
				{ "space-science-pack", 1 },
			},
			time = 60,
		},
	},
})
if mods["calciner"] then
	table.insert(data.raw["technology"]["calciner"].prerequisites, "diesel-automation")
end
