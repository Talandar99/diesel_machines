require("__base__.prototypes.entity.pipecovers")
local item_sounds = require("__base__.prototypes.item_sounds")

local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({

	{
		type = "item",
		name = "diesel-assembling-machine",
		icon = "__diesel_machines__/graphics/diesel-assembling-machine/diesel-assembling-machine-icon.png",
		subgroup = "production-machine",
		color_hint = { text = "2" },
		order = "c[diesel-assembling-machine]",
		inventory_move_sound = item_sounds.mechanical_inventory_move,
		pick_sound = item_sounds.mechanical_inventory_pickup,
		drop_sound = item_sounds.mechanical_inventory_move,
		--default_import_location = "diesel_machines",
		weight = 40 * kg,
		place_result = "diesel-assembling-machine",
		stack_size = 50,
	},
	{
		type = "corpse",
		name = "diesel-assembling-machine-remnants",
		icon = "__diesel_machines__/graphics/diesel-assembling-machine/diesel-assembling-machine-icon.png",
		flags = { "placeable-neutral", "building-direction-8-way", "not-on-map" },
		hidden_in_factoriopedia = true,
		subgroup = "production-machine-remnants",
		order = "a-a-a",
		selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
		tile_width = 3,
		tile_height = 3,
		selectable_in_game = false,
		time_before_removed = 60 * 60 * 15, -- 15 minutes
		expires = false,
		final_render_layer = "remnants",
		remove_on_tile_placement = false,
		animation = {
			filename = "__diesel_machines__/graphics/diesel-assembling-machine/diesel_assembling_machine_remnants.png",
			line_length = 1,
			width = 320,
			height = 320,
			direction_count = 1,
			shift = util.by_pixel(0, 0),
			scale = 0.5,
		},
	},

	{
		type = "assembling-machine",
		name = "diesel-assembling-machine",
		icon = "__diesel_machines__/graphics/diesel-assembling-machine/diesel-assembling-machine-icon.png",
		flags = { "placeable-neutral", "placeable-player", "player-creation" },
		minable = { mining_time = 0.2, result = "diesel-assembling-machine" },
		max_health = 350,
		corpse = "diesel-assembling-machine-remnants",
		dying_explosion = "assembling-machine-3-explosion",
		icon_draw_specification = { shift = { 0, -0.3 } },
		circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
		circuit_connector = circuit_connector_definitions["assembling-machine"],
		alert_icon_shift = util.by_pixel(0, -12),
		resistances = {
			{
				type = "fire",
				percent = 70,
			},
		},
		fluid_boxes = {
			{
				production_type = "input",
				pipe_picture = diesel_assembling_machine_pipepictures_blue(),
				pipe_covers = pipecoverspictures(),
				volume = 1000,
				pipe_connections = {
					{ flow_direction = "input", direction = defines.direction.north, position = { 0, -1 } },
				},
				secondary_draw_orders = { north = -1 },
			},
			{
				production_type = "output",
				pipe_picture = diesel_assembling_machine_pipepictures_blue(),
				pipe_covers = pipecoverspictures(),
				volume = 1000,
				pipe_connections = {
					{ flow_direction = "output", direction = defines.direction.south, position = { 0, 1 } },
				},
				secondary_draw_orders = { north = -1 },
			},
		},
		fluid_boxes_off_when_no_fluid_recipe = true,
		collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
		selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
		damaged_trigger_effect = hit_effects.entity(),
		fast_replaceable_group = "assembling-machine",
		graphics_set = {
			animation = {
				layers = {
					{
						filename = "__diesel_machines__/graphics/diesel-assembling-machine/diesel-assembling-machine.png",
						priority = "high",
						width = 294,
						height = 294,
						frame_count = 32,
						line_length = 8,
						shift = util.by_pixel(0, 0),
						scale = 0.5,
					},
					{
						filename = "__diesel_machines__/graphics/diesel-assembling-machine/diesel_assembling_machine_shadow.png",
						priority = "high",
						width = 448,
						height = 448,
						frame_count = 1,
						line_length = 1,
						shift = util.by_pixel(0, 0),
						scale = 0.5,
						repeat_count = 32,
						draw_as_shadow = true,
					},
				},
			},
		},
		open_sound = sounds.machine_open,
		close_sound = sounds.machine_close,
		impact_category = "metal",
		working_sound = {
			sound = {
				filename = "__base__/sound/assembling-machine-t2-1.ogg",
				volume = 0.45,
				audible_distance_modifier = 0.5,
			},
			fade_in_ticks = 4,
			fade_out_ticks = 20,
		},
		crafting_categories = {
			"crafting",
			"advanced-crafting",
			"crafting-with-fluid",
			--"electronics",
			--"electronics-with-fluid",
			--"pressing",
			--"metallurgy-or-assembling",
			--"organic-or-hand-crafting",
			--"organic-or-assembling",
			--"electronics-or-assembling",
			--"cryogenics-or-assembling",
			--"crafting-with-fluid-or-metallurgy",
			--"barreling",
		},

		crafting_speed = 1.25,
		diesel_fuel_fluid_filter = true,
		energy_source = {
			type = "fluid",
			burns_fluid = true, -- fluid used as power
			scale_fluid_usage = true,
			fluid_box = {
				--pipe_covers = pipecoverspictures(),
				pipe_picture = diesel_assembling_machine_pipepictures_yellow(),
				pipe_covers = pipecoverspictures(),
				always_draw_covers = false,
				volume = 100,
				pipe_connections = {
					{ direction = defines.direction.west, position = { -1, 0 } },
					{ direction = defines.direction.east, position = { 1, 0 } },
				},
				production_type = "input-output",
			},
			-- need to fix position on rotation
			smoke = {
				{
					name = "smoke",
					frequency = 10,
					north_position = { 0.85, -2.25 },
					south_position = { 0.85, -2.25 },
					east_position = { 0.85, -2.25 },
					west_position = { 0.85, -2.25 },
					starting_vertical_speed = 0.08,
					starting_frame_deviation = 60,
				},
			},
			emissions_per_minute = { pollution = 10 }, --12 is burner drill ,10 is electric drill
		},
		energy_usage = "300kW",
		module_slots = 4,
		allowed_effects = { "consumption", "speed", "productivity", "pollution", "quality" },
	},
})
