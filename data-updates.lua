local augmenting = require("prototypes.augmenting")

for type_name in pairs(defines.prototypes.item) do
  if data.raw[type_name] then
    for k, item in pairs(data.raw[type_name]) do
      if not data.raw.recipe[item.name .. "-augmenting"] then
        if not string.find(item.name, "-barrel") then
        augmenting.generate_self_augmenting_recipe(item)
        end
      end
    end
  end
end

table.insert(
        data.raw.technology["recycling"].effects,
        {
            type = "unlock-recipe",
            recipe = "augmentor"
        }
)