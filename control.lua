-------------------------------------------------------------------------------
-- diesel asteroid collector: manage paired engine
-------------------------------------------------------------------------------

local function on_built_collector(event)
	local collector = event.entity or event.created_entity or event.target_entity
	if not (collector and collector.valid and collector.name == "diesel-asteroid-collector") then
		return
	end

	storage.diesel_machines_diesel_collectors = storage.diesel_machines_diesel_collectors or {}
	if not storage.diesel_machines_diesel_collectors[collector.unit_number] then
		storage.diesel_machines_diesel_collectors[collector.unit_number] = { collector = collector, engine = nil }
	end
end

local function on_removed_collector(event)
	local e = event.entity
	if not (e and e.valid and e.name == "diesel-asteroid-collector") then
		return
	end

	local data = storage.diesel_machines_diesel_collectors and storage.diesel_machines_diesel_collectors[e.unit_number]
	if data and data.engine and data.engine.valid then
		data.engine.destroy()
	end
	if storage.diesel_machines_diesel_collectors then
		storage.diesel_machines_diesel_collectors[e.unit_number] = nil
	end
end

-------------------------------------------------------------------------------
-- every 1 second: ensure engine exists + sync active state
-------------------------------------------------------------------------------
script.on_nth_tick(60, function()
	if not storage.diesel_machines_diesel_collectors then
		return
	end

	for id, data in pairs(storage.diesel_machines_diesel_collectors) do
		local collector = data.collector
		if not (collector and collector.valid) then
			if data.engine and data.engine.valid then
				data.engine.destroy()
			end
			storage.diesel_machines_diesel_collectors[id] = nil
		else
			local engine = data.engine

			if not (engine and engine.valid) then
				local new_engine = collector.surface.create_entity({
					name = "diesel-asteroid-collector-hidden-engine",
					position = collector.position,
					direction = collector.direction,
					force = collector.force,
					create_build_effect_smoke = false,
					move_stuck_players = true,
				})
				if new_engine then
					new_engine.destructible = false
					new_engine.operable = false
					local recipe = "diesel-asteroid-collector-working"
					if new_engine.set_recipe and new_engine.force.recipes[recipe] then
						new_engine.set_recipe(recipe)
						new_engine.recipe_locked = true
						new_engine.disabled_by_script = false
					end

					data.engine = new_engine
				end
			end

			if data.engine and data.engine.valid then
				local engine = data.engine
				local collector = data.collector
				local has_fuel = false
				if engine.get_fluid_contents then
					for _, amount in pairs(engine.get_fluid_contents()) do
						if amount > 0 then
							has_fuel = true
							break
						end
					end
				end
				local working = (engine.is_crafting() or engine.energy > 0) and has_fuel

				if collector.active ~= working then
					collector.disabled_by_script = not working
				end
			end
		end
	end
end)
-------------------------------------------------------------------------------
-- Storage Ingegrity
-------------------------------------------------------------------------------
local function ensure_storage_integrity()
	if not storage then
		return
	end
	storage.diesel_machines_diesel_collectors = storage.diesel_machines_diesel_collectors or {}
end
-------------------------------------------------------------------------------
-- Define the initial machine groups and allowed tiles for each group.
-------------------------------------------------------------------------------
local function on_init(event)
	storage.diesel_machines_diesel_collectors = storage.diesel_machines_diesel_collectors or {}
end
script.on_init(on_init)

local function on_configuration_changed(event)
	storage.diesel_machines_diesel_collectors = storage.diesel_machines_diesel_collectors or {}
end
script.on_configuration_changed(on_configuration_changed)
-------------------------------------------------------------------------------
-- on place calls
-------------------------------------------------------------------------------
script.on_event(defines.events.on_script_trigger_effect, function(event)
	if event.effect_id == "diesel-collector-built" then
		ensure_storage_integrity()
		on_built_collector(event)
	end
end)
-------------------------------------------------------------------------------
-- on remove calls
-------------------------------------------------------------------------------
local remove_events = {
	defines.events.on_entity_died,
	defines.events.on_player_mined_entity,
	defines.events.on_robot_mined_entity,
	defines.events.script_raised_destroy,
}

script.on_event(remove_events, function(event)
	on_removed_collector(event)
end)
-------------------------------------------------------------------------------
