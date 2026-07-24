require("prototypes.pipe-connectors")
-- machines
require("prototypes.diesel-assembling-machine")
require("prototypes.diesel-miner")
require("prototypes/diesel-pump-connector")
require("prototypes/diesel-pump")
require("prototypes/portable-diesel-generator")
if mods["space-age"] then
	require("prototypes/diesel-asteroid-collector")
end
-- inserters
--
--
require("prototypes.inserters.diesel-inserter-subgroup")
require("prototypes.inserters.diesel-fast-inserter")
require("prototypes.inserters.diesel-long-handed-inserter")
require("prototypes.inserters.diesel-extra-long-handed-inserter")
require("prototypes.inserters.diesel-cargo-bulk-inserter")
if mods["space-age"] then
	require("prototypes.inserters.diesel-cargo-stack-inserter")
	require("prototypes.diesel-agricultural-tower")
end
-- other
require("prototypes/recipes")
require("prototypes/technologies")
