function diesel_asteroid_collector_pipepictures()
	return {
		north = {
			filename = "__diesel_machines__/graphics/diesel-asteroid-collector/pipe-cover-N.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			shift = util.by_pixel(0, 32),
			scale = 0.5,
		},
		east = {
			filename = "__diesel_machines__/graphics/diesel-asteroid-collector/pipe-cover-E.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			shift = util.by_pixel(-32, 0),
			scale = 0.5,
		},
		south = {
			filename = "__diesel_machines__/graphics/diesel-asteroid-collector/pipe-cover-S.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			shift = util.by_pixel(0, -32),
			scale = 0.5,
		},
		west = {
			filename = "__diesel_machines__/graphics/diesel-asteroid-collector/pipe-cover-W.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			shift = util.by_pixel(32, 0),
			scale = 0.5,
		},
	}
end
function diesel_assembling_machine_pipepictures_blue()
	return {
		north = {
			filename = "__diesel_machines__/graphics/diesel-assembling-machine/diesel_assembling_machine_pipe_n_blue.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			shift = util.by_pixel(0, 16),
			scale = 0.5,
		},
		east = {
			filename = "__diesel_machines__/graphics/diesel-assembling-machine/diesel_assembling_machine_pipe_e_blue.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			shift = util.by_pixel(-16, 0),
			scale = 0.5,
		},
		south = {
			filename = "__diesel_machines__/graphics/diesel-assembling-machine/diesel_assembling_machine_pipe_s_blue.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			shift = util.by_pixel(0, -16),
			scale = 0.5,
		},
		west = {
			filename = "__diesel_machines__/graphics/diesel-assembling-machine/diesel_assembling_machine_pipe_w_blue.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			shift = util.by_pixel(16, 0),
			scale = 0.5,
		},
	}
end
function diesel_assembling_machine_pipepictures_yellow()
	return {
		north = {
			filename = "__diesel_machines__/graphics/diesel-assembling-machine/diesel_assembling_machine_pipe_n_yellow.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			shift = util.by_pixel(0, 16),
			scale = 0.5,
		},
		east = {
			filename = "__diesel_machines__/graphics/diesel-assembling-machine/diesel_assembling_machine_pipe_e_yellow.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			shift = util.by_pixel(-16, 0),
			scale = 0.5,
		},
		south = {
			filename = "__diesel_machines__/graphics/diesel-assembling-machine/diesel_assembling_machine_pipe_s_yellow.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			shift = util.by_pixel(0, -16),
			scale = 0.5,
		},
		west = {
			filename = "__diesel_machines__/graphics/diesel-assembling-machine/diesel_assembling_machine_pipe_w_yellow.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			shift = util.by_pixel(16, 0),
			scale = 0.5,
		},
	}
end

function diesel_miner_pipepictures()
	return {
		north = {
			filename = "__diesel_machines__/graphics/diesel-miner/diesel-miner-pipe-N.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			shift = util.by_pixel(0, 16),
			scale = 0.5,
		},
		east = {
			filename = "__diesel_machines__/graphics/diesel-miner/diesel-miner-pipe-E.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			shift = util.by_pixel(-16, 0),
			scale = 0.5,
		},
		south = {
			filename = "__diesel_machines__/graphics/diesel-miner/diesel-miner-pipe-S.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			shift = util.by_pixel(0, -16),
			scale = 0.5,
		},
		west = {
			filename = "__diesel_machines__/graphics/diesel-miner/diesel-miner-pipe-W.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			shift = util.by_pixel(16, 0),
			scale = 0.5,
		},
	}
end

function diesel_inserter_pipecoverspictures()
	return {
		north = {
			layers = {
				{
					filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
					priority = "extra-high",
					width = 128,
					height = 128,
					scale = 0.5,
				},
				{
					filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north-shadow.png",
					priority = "extra-high",
					width = 128,
					height = 128,
					scale = 0.5,
					draw_as_shadow = true,
				},
			},
		},
		east = {
			layers = {
				{
					filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
					priority = "extra-high",
					width = 128,
					height = 128,
					scale = 0.5,
				},
				{
					filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east-shadow.png",
					priority = "extra-high",
					width = 128,
					height = 128,
					scale = 0.5,
					draw_as_shadow = true,
				},
			},
		},
		south = {
			layers = {
				{
					filename = "__diesel_machines__/graphics/pipe_covers/pipe-cover-south.png",
					priority = "extra-high",
					width = 128,
					height = 128,
					scale = 0.5,
				},
				{
					filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south-shadow.png",
					priority = "extra-high",
					width = 128,
					height = 128,
					scale = 0.5,
					draw_as_shadow = true,
				},
			},
		},
		west = {
			layers = {
				{
					filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
					priority = "extra-high",
					width = 128,
					height = 128,
					scale = 0.5,
				},
				{
					filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west-shadow.png",
					priority = "extra-high",
					width = 128,
					height = 128,
					scale = 0.5,
					draw_as_shadow = true,
				},
			},
		},
	}
end
