local util = require("util")

local function get_prototype(base_type, name)
  for type_name in pairs(defines.prototypes[base_type]) do
    local prototypes = data.raw[type_name]
    if prototypes and prototypes[name] then
      return prototypes[name]
    end
  end
end

local function get_item_localised_name(name)
  local item = get_prototype("item", name)
  if not item then return end
  if item.localised_name then
    return item.localised_name
  end
  local prototype
  local type_name = "item"
  if item.place_result then
    prototype = get_prototype("entity", item.place_result)
    type_name = "entity"
  elseif item.place_as_equipment_result then
    prototype = get_prototype("equipment", item.place_as_equipment_result)
    type_name = "equipment"
  elseif item.place_as_tile then
    -- Tiles with variations don't have a localised name
    local tile_prototype = data.raw.tile[item.place_as_tile.result]
    if tile_prototype and tile_prototype.localised_name then
      prototype = tile_prototype
      type_name = "tile"
    end
  end
  return prototype and prototype.localised_name or {type_name.."-name."..name}
end

function generate_augmenting_recipe_icons_from_item(item)
  local icons = {}
  if item.icons == nil then
    icons =
    {
      {
        icon = "__quality__/graphics/icons/recycling.png"
      },
      {
        icon = item.icon,
        icon_size = item.icon_size,
        scale = (0.5 * defines.default_icon_size / (item.icon_size or defines.default_icon_size)) * 0.8,
      },
      {
        icon = "__quality__/graphics/icons/recycling-top.png"
      },
    }
  else
    icons =
    {
      {
        icon = "__quality__/graphics/icons/recycling.png"
      }
    }
    for i = 1, #item.icons do
      local icon = table.deepcopy(item.icons[i]) -- we are gonna change the scale, so must copy the table
      icon.scale = ((icon.scale == nil) and (0.5 * defines.default_icon_size / (icon.icon_size or defines.default_icon_size)) or icon.scale) * 0.8
      icon.shift = util.mul_shift(icon.shift, 0.8)
      icons[#icons + 1] = icon
    end
    icons[#icons + 1] =
    {
      icon = "__quality__/graphics/icons/recycling-top.png"
    }
  end
  return icons
end

local recipes = data.raw.recipe


local function generate_self_augmenting_recipe(item)
  local icons = generate_augmenting_recipe_icons_from_item(item)

  data:extend({
    {
      type = "recipe",
      name = item.name .. "-augmenting",
      localised_name = {"recipe-name.augmenting", get_item_localised_name(item.name)},
      icon = nil,
      icons = icons,
      subgroup = item.subgroup,
      category = "augmenting",
      hidden = true,
      enabled = true,
      unlock_results = false,
      ingredients = {{type = "item", name = item.name, amount = 1, ignored_by_stats = 1}},
      results = {{type = "item", name = item.name, amount = 1, probability = settings.startup["augmentor-result-chance"].value / 100, ignored_by_stats = 1}}, -- Will show as consumed when item is destroyed
      energy_required = settings.startup["augmentor-base-crafting-speed"].value
    }
  })
end

local lib = {}

lib.generate_self_augmenting_recipe = generate_self_augmenting_recipe
return lib
