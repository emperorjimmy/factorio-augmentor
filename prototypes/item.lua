local item_sounds = require("__base__.prototypes.item_sounds")

data:extend
({
  {
    type = "item",
    name = "augmentor",
    icon = "__augmentor__/graphics/augmentor-ej/augmentor-ej-icon.png",
    subgroup = "smelting-machine",
    order = "d[recycler]",
    inventory_move_sound = item_sounds.metal_large_inventory_move,
    pick_sound = item_sounds.metal_large_inventory_pickup,
    drop_sound = item_sounds.metal_large_inventory_move,
    place_result = "augmentor",
    stack_size = 20,
    weight = 100 * kg,
  },
})
