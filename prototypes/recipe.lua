data:extend(
{
  {
    type = "recipe-category",
    name = "augmenting"
  }
})


data:extend
({
  {
    type = "recipe",
    name = "augmentor",
    ingredients =
    {
      {type = "item", name = "processing-unit", amount = 20},
      {type = "item", name = "steel-plate", amount = 40},
      {type = "item", name = "iron-gear-wheel", amount = 40},
      {type = "item", name = "plastic-bar", amount =  25},
      {type = "item", name = "battery", amount =  100},
      {type = "item", name = "holmium-plate", amount =  50}
    },
    results = {{type="item", name="augmentor", amount=1}},
    energy_required = settings.startup["augmentor-base-crafting-speed"].value,
    enabled = false,
    surface_conditions =
    {
      {
        property = "magnetic-field",
        min = 99,
        max = 99
      }
    },
    maximum_productivity = 0
  }
})
