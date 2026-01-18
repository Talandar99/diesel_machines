local base_categories = data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories
local diesel_categories = table.deepcopy(base_categories)
data.raw["assembling-machine"]["diesel-assembling-machine"].crafting_categories = diesel_categories
