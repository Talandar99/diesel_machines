local item_sounds = require("__base__.prototypes.item_sounds")
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

local function diesel_inserter_crane_stack_base()
	return {
		north = {
			filename = "__diesel_machines__/graphics/inserters/diesel-stack-cargo-inserter-base-vertical.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			shift = util.by_pixel(0, 64),
			scale = 0.5,
		},
		west = {
			filename = "__diesel_machines__/graphics/inserters/diesel-stack-cargo-inserter-base-horizontal.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			shift = util.by_pixel(64, 0),
			scale = 0.5,
		},
		south = util.empty_sprite(),
		east = util.empty_sprite(),
	}
end
data:extend({

	{
		type = "item",
		name = "diesel-cargo-stack-inserter",
		icon = "__diesel_machines__/graphics/inserters/diesel_crane_stack_item_icon.png",
		subgroup = "diesel-inserter",
		color_hint = { text = "S" },
		order = "h[diesel-stack-cargo-inserter]",
		inventory_move_sound = item_sounds.wire_inventory_move,
		pick_sound = item_sounds.wire_inventory_pickup,
		drop_sound = item_sounds.wire_inventory_move,
		place_result = "diesel-cargo-stack-inserter",
		stack_size = 50,
		--default_import_location = "diesel_machines",
		weight = 20 * kg,
	},
	{
		type = "inserter",
		name = "diesel-cargo-stack-inserter",
		icon = "__diesel_machines__/graphics/inserters/diesel_crane_stack_item_icon.png",
		flags = { "placeable-neutral", "placeable-player", "player-creation" },
		bulk = true,
		grab_less_to_match_belt_stack = true,
		wait_for_full_hand = true,
		enter_drop_mode_if_held_stack_spoiled = true,
		max_belt_stack_size = 4,
		stack_size_bonus = 250 - 1,
		minable = { mining_time = 0.1, result = "diesel-cargo-stack-inserter" },
		max_health = 160,
		corpse = "diesel-bulk-cargo-inserter-remnants",
		dying_explosion = "fast-inserter-explosion",
		resistances = {
			{
				type = "fire",
				percent = 90,
			},
		},
		--collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } },
		--selection_box = { { -0.4, -0.35 }, { 0.4, 0.45 } },
		collision_box = { { -1.3, -0.15 }, { 1.3, 0.15 } },
		selection_box = { { -1.5, -0.5 }, { 1.5, 0.5 } },
		damaged_trigger_effect = hit_effects.entity(),
		starting_distance = 0.85,
		pickup_position = { 0, -1 },
		insert_position = { 0, 1.2 },
		energy_per_movement = "40kJ",
		energy_per_rotation = "40kJ",
		--energy_source = {
		--	type = "electric",
		--	usage_priority = "secondary-input",
		--	drain = "1kW",
		--},
		diesel_fuel_fluid_filter = true,
		energy_source = {

			type = "fluid",
			burns_fluid = true, -- fluid used as power
			scale_fluid_usage = true,
			fluid_box = {
				--pipe_covers = pipecoverspictures(),
				pipe_picture = diesel_inserter_crane_stack_base(),
				pipe_covers = diesel_inserter_pipecoverspictures(),
				always_draw_covers = false,
				volume = 100,
				pipe_connections = {
					--{ direction = defines.direction.north, position = { 0, 0 } },
					--{ direction = defines.direction.south, position = { 0, 0 } },
					{ direction = defines.direction.west, position = { -1, 0 } },
					{ direction = defines.direction.east, position = { 1, 0 } },
				},
				production_type = "input-output",
			},
			-- need to fix position on rotation
			smoke = {
				{
					name = "smoke",
					frequency = 3,
					position = { 0, 0 },
					starting_vertical_speed = 0.1, --base 0.08
					starting_frame_deviation = 60,
				},
			},
		},
		extension_speed = 0.1,
		--rotation_speed = 0.04,
		rotation_speed = 0.05,
		filter_count = 5,
		icon_draw_specification = {
			--shift = {0, -0.3},
			scale = 0.8,
			render_layer = "entity-info-icon-above",
		},
		fast_replaceable_group = "inserter",
		open_sound = sounds.inserter_open,
		close_sound = sounds.inserter_close,
		working_sound = sounds.inserter_fast,
		hand_base_picture = {
			filename = "__diesel_machines__/graphics/inserters/diesel_crane_stack_hand_base.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			scale = 0.4,
		},
		hand_closed_picture = {
			filename = "__diesel_machines__/graphics/inserters/diesel_crane_stack_hand_closed.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			scale = 0.4,
		},
		hand_open_picture = {
			filename = "__diesel_machines__/graphics/inserters/diesel_crane_stack_hand_open.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			scale = 0.4,
		},
		hand_base_shadow = {
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 32,
			height = 132,
			scale = 0.25,
		},
		hand_closed_shadow = {
			filename = "__base__/graphics/entity/bulk-inserter/bulk-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 100,
			height = 164,
			scale = 0.25,
		},
		hand_open_shadow = {
			filename = "__base__/graphics/entity/bulk-inserter/bulk-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 130,
			height = 164,
			scale = 0.25,
		},
		platform_picture = {
			north = {
				layers = {
					{
						filename = "__diesel_machines__/graphics/inserters/diesel-extra-long-handed-inserter-base.png",
						priority = "extra-high",
						width = 128,
						height = 128,
						scale = 0.01,
					},
					{
						filename = "__diesel_machines__/graphics/inserters/diesel-stack-cargo-inserter-base-horizontal.png",
						priority = "extra-high",
						width = 256,
						height = 256,
						shift = util.by_pixel(0, 0),
						scale = 0.48,
					},
				},
			},
			south = {
				layers = {
					{
						filename = "__diesel_machines__/graphics/inserters/diesel-extra-long-handed-inserter-base.png",
						priority = "extra-high",
						width = 128,
						height = 128,
						scale = 0.01,
					},
					{
						filename = "__diesel_machines__/graphics/inserters/diesel-stack-cargo-inserter-base-horizontal.png",
						priority = "extra-high",
						width = 256,
						height = 256,
						shift = util.by_pixel(0, 0),
						scale = 0.48,
					},
				},
			},
			east = {
				layers = {
					{
						filename = "__diesel_machines__/graphics/inserters/diesel-extra-long-handed-inserter-base.png",
						priority = "extra-high",
						width = 128,
						height = 128,
						scale = 0.01,
					},
					{
						filename = "__diesel_machines__/graphics/inserters/diesel-stack-cargo-inserter-base-vertical.png",
						priority = "extra-high",
						width = 256,
						height = 256,
						shift = util.by_pixel(0, 0),
						scale = 0.48,
					},
					{
						filename = "__diesel_machines__/graphics/inserters/diesel-bulk-cargo-inserter-base-vertical-shadow.png",
						priority = "high",
						width = 256,
						height = 256,
						shift = util.by_pixel(10, 0),
						scale = 0.5,
						draw_as_shadow = true,
					},
				},
			},
			west = {
				layers = {
					{
						filename = "__diesel_machines__/graphics/inserters/diesel-extra-long-handed-inserter-base.png",
						priority = "extra-high",
						width = 128,
						height = 128,
						scale = 0.01,
					},
					{
						filename = "__diesel_machines__/graphics/inserters/diesel-stack-cargo-inserter-base-vertical.png",
						priority = "extra-high",
						width = 256,
						height = 256,
						shift = util.by_pixel(0, 0),
						scale = 0.48,
					},
					{
						filename = "__diesel_machines__/graphics/inserters/diesel-bulk-cargo-inserter-base-vertical-shadow.png",
						priority = "high",
						width = 256,
						height = 256,
						shift = util.by_pixel(10, 0),
						scale = 0.5,
						draw_as_shadow = true,
					},
				},
			},
		},
		circuit_connector = circuit_connector_definitions["inserter"],
		circuit_wire_max_distance = inserter_circuit_wire_max_distance,
		default_stack_control_input_signal = inserter_default_stack_control_input_signal,
	},
})
