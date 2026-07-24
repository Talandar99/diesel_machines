return {
	animation = {
		north = {
			layers = {
				{
					filename = "__diesel_machines__/graphics/diesel-asteroid-collector/asteroid-collector-top-N.png",
					width = 256,
					height = 256,
					frame_count = 16,
					line_length = 4,
					scale = 0.5,
					animation_speed = 10,
				},
				{
					filename = "__diesel_machines__/graphics/diesel-asteroid-collector/asteroid-collector-shadow-N.png",
					width = 256,
					height = 256,
					scale = 0.5,
					frame_count = 1,
					repeat_count = 16,
					draw_as_shadow = true,
					shift = util.by_pixel(15, 0),
				},
			},
		},
		east = {
			layers = {
				{
					filename = "__diesel_machines__/graphics/diesel-asteroid-collector/asteroid-collector-top-E.png",
					width = 256,
					height = 256,
					frame_count = 16,
					line_length = 4,
					scale = 0.5,
					animation_speed = 10,
				},
				{
					filename = "__diesel_machines__/graphics/diesel-asteroid-collector/asteroid-collector-shadow-E.png",
					width = 256,
					height = 256,
					scale = 0.5,
					frame_count = 1,
					repeat_count = 16,
					draw_as_shadow = true,
					shift = util.by_pixel(10, 0),
				},
			},
		},
		south = {
			layers = {
				{
					filename = "__diesel_machines__/graphics/diesel-asteroid-collector/asteroid-collector-top-S.png",
					width = 256,
					height = 256,
					frame_count = 16,
					line_length = 4,
					scale = 0.5,
					animation_speed = 10,
				},
				{
					filename = "__diesel_machines__/graphics/diesel-asteroid-collector/asteroid-collector-shadow-S.png",
					width = 256,
					height = 256,
					scale = 0.5,
					frame_count = 1,
					repeat_count = 16,
					draw_as_shadow = true,
					shift = util.by_pixel(15, 0),
				},
			},
		},
		west = {
			layers = {
				{
					filename = "__diesel_machines__/graphics/diesel-asteroid-collector/asteroid-collector-top-W.png",
					width = 256,
					height = 256,
					frame_count = 16,
					line_length = 4,
					scale = 0.5,
					animation_speed = 10,
				},
				{
					filename = "__diesel_machines__/graphics/diesel-asteroid-collector/asteroid-collector-shadow-W.png",
					width = 256,
					height = 256,
					scale = 0.5,
					frame_count = 1,
					repeat_count = 16,
					draw_as_shadow = true,
					shift = util.by_pixel(-3, 0),
				},
			},
		},
	},
	status_lamp_picture_on = util.sprite_load(
		"__diesel_machines__/graphics/diesel-asteroid-collector/asteroid-collector-status-lamp",
		{
			tint = { 0, 1, 0, 1 },
			blend_mode = "additive",
			draw_as_glow = true,
			direction_count = 4,
			scale = 0.5,
		}
	),
	status_lamp_picture_full = util.sprite_load(
		"__diesel_machines__/graphics/diesel-asteroid-collector/asteroid-collector-status-lamp",
		{
			tint = { 1, 0.5, 0, 1 },
			blend_mode = "additive",
			draw_as_glow = true,
			direction_count = 4,
			scale = 0.5,
		}
	),
	status_lamp_picture_off = util.sprite_load(
		"__diesel_machines__/graphics/diesel-asteroid-collector/asteroid-collector-status-lamp",
		{
			tint = { 0.7, 0, 0, 1 },
			blend_mode = "additive",
			draw_as_glow = true,
			direction_count = 4,
			scale = 0.5,
		}
	),
	below_arm_pictures = {
		layers = {
			{
				filename = "__diesel_machines__/graphics/diesel-asteroid-collector/diesel-asteroid-collector-bottom.png",
				width = 256,
				height = 256,
				direction_count = 4,
				scale = 0.5,
			},
		},
	},

	--below_ground_pictures = {
	--	layers = {
	--		util.sprite_load("__space-age__/graphics/entity/asteroid-collector/asteroid-collector-bottom", {
	--			direction_count = 4,
	--			scale = 0.5,
	--		}),
	--	},
	--},
	arm_head_animation = util.sprite_load(
		"__diesel_machines__/graphics/diesel-asteroid-collector/asteroid-collector-head",
		{
			frame_count = 5,
			direction_count = 32,
			scale = 0.7,
		}
	),
	arm_head_top_animation = util.sprite_load(
		"__diesel_machines__/graphics/diesel-asteroid-collector/asteroid-collector-head-top",
		{
			frame_count = 5,
			direction_count = 32,
			scale = 0.7,
		}
	),
	arm_link = util.sprite_load("__diesel_machines__/graphics/diesel-asteroid-collector/asteroid-collector-link", {
		direction_count = 64,
		scale = 0.45,
	}),
}
