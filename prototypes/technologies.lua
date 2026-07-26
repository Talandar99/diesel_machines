data:extend({
	{
		type = "technology",
		name = "diesel-automation",
		icon = "__diesel_machines__/graphics/diesel-assembling-machine/diesel_assembling_machine_technology.png",
		icon_size = 320,
		effects = {
			{ type = "unlock-recipe", recipe = "diesel-fast-inserter" },
			{ type = "unlock-recipe", recipe = "diesel-long-handed-inserter" },
			{ type = "unlock-recipe", recipe = "diesel-extra-long-handed-inserter" },
			{ type = "unlock-recipe", recipe = "diesel-cargo-bulk-inserter" },
			{ type = "unlock-recipe", recipe = "diesel-assembling-machine" },
			{ type = "unlock-recipe", recipe = "diesel-pump" },
		},
		prerequisites = {
			"automation-2",
			"electric-mining-drill",
			"bulk-inserter",
			"oil-processing",
			"diesel-engine",
		},
		unit = {
			count = 200,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
			},
			time = 30,
		},
	},

	{
		type = "technology",
		name = "diesel-miner",
		icon = "__diesel_machines__/graphics/diesel-miner/diesel-miner-technology.png",
		icon_size = 512,
		effects = {
			{ type = "unlock-recipe", recipe = "diesel-miner" },
		},
		prerequisites = {
			"diesel-automation",
			"production-science-pack",
		},
		unit = {
			count = 800,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
				{ "production-science-pack", 1 },
			},
			time = 60,
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
			-- "automation-2", -- important for any planet start
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

if mods["space-age"] then
	data:extend({
		{
			type = "technology",
			name = "diesel-asteroid-collector",
			icon = "__diesel_machines__/graphics/diesel-asteroid-collector/diesel-asteroid-collector-tech.png",
			icon_size = 256,
			effects = {
				{ type = "unlock-recipe", recipe = "diesel-asteroid-collector" },
			},
			prerequisites = { "diesel-automation", "space-platform", "space-diesel", "carbon-fiber" },
			unit = {
				count = 1000,
				ingredients = {
					{ "automation-science-pack", 1 },
					{ "logistic-science-pack", 1 },
					{ "chemical-science-pack", 1 },
					{ "space-science-pack", 1 },
					{ "agricultural-science-pack", 1 },
				},
				time = 60,
			},
		},
		{
			type = "technology",
			name = "diesel-agricultural-tower",
			icon = "__diesel_machines__/graphics/diesel-agricultural-tower/diesel_agricultural_tower_technology.png",
			icon_size = 256,
			effects = {
				{ type = "unlock-recipe", recipe = "diesel-agricultural-tower" },
			},
			prerequisites = { "diesel-automation", "agriculture", "agricultural-science-pack" },
			unit = {
				count = 1000,
				ingredients = {
					{ "automation-science-pack", 1 },
					{ "logistic-science-pack", 1 },
					{ "chemical-science-pack", 1 },
					{ "agricultural-science-pack", 1 },
				},
				time = 60,
			},
		},

		{
			type = "technology",
			name = "diesel-cargo-stack-inserter",
			icon = "__diesel_machines__/graphics/inserters/diesel_stack_cargo_inserter_technology.png",
			icon_size = 512,
			effects = {
				{ type = "unlock-recipe", recipe = "diesel-cargo-stack-inserter" },
			},
			prerequisites = {
				"diesel-automation",
				"stack-inserter",
			},
			unit = {
				count = 1500,
				ingredients = {
					{ "automation-science-pack", 1 },
					{ "logistic-science-pack", 1 },
					{ "chemical-science-pack", 1 },
					{ "production-science-pack", 1 },
					{ "agricultural-science-pack", 1 },
				},
				time = 60,
			},
		},
	})
end

if mods["calciner"] then
	table.insert(data.raw["technology"]["calciner"].prerequisites, "diesel-automation")
end
