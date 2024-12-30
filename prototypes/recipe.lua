data:extend(
{
  {
    type = "recipe-category",
    name = "augmenting"
  }
})


local ingredients
local surface_conditions = nil

if (mods["space-age"] ) then
  ingredients = {
    {type = "item", name = "processing-unit", amount = 20},
    {type = "item", name = "steel-plate", amount = 40},
    {type = "item", name = "iron-gear-wheel", amount = 40},
    {type = "item", name = "plastic-bar", amount =  25},
    {type = "item", name = "battery", amount =  100},
    {type = "item", name = "holmium-plate", amount =  50}
  }

  surface_conditions = {
    {
      property = "magnetic-field",
      min = 99,
      max = 99
    }
  }
else 
  ingredients = {
    {type = "item", name = "processing-unit", amount = 20},
    {type = "item", name = "steel-plate", amount = 40},
    {type = "item", name = "iron-gear-wheel", amount = 40},
    {type = "item", name = "plastic-bar", amount =  25},
    {type = "item", name = "battery", amount =  100}
  }
end

data:extend
({
  {
    type = "recipe",
    name = "augmentor",
    ingredients = ingredients,
    results = {{type="item", name="augmentor", amount=1}},
    energy_required = 20,
    enabled = false,
    surface_conditions = surface_conditions,
    maximum_productivity = 0
  }
})
