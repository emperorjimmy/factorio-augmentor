local sounds = require ("__Augmentor EJ Fork__.prototypes.entity.augmentor-sounds")
local graphics = require("__Augmentor EJ Fork__.prototypes.entity.augmentor-pictures")
local scale = graphics.scale
data:extend{
    {
      type = "furnace",
      name = "augmentor",
      icon = "__Augmentor EJ Fork__/graphics/augmentor-ej/augmentor-ej-icon.png",
      flags = {"placeable-neutral", "placeable-player", "player-creation"},
      fast_transfer_modules_into_module_slots_only = true,
      minable = {mining_time = 0.2, result = "augmentor"},
      max_health = 300,
      fast_replaceable_group = "augmentor",
      corpse = "medium-remnants",
      impact_category = "metal",
      working_sound = sounds.augmentor,
      resistances =
      {
        {
          type = "fire",
          percent = 80
        }
      },
      collision_box = { { -3 * scale + 0.1, -3 * scale + 0.1 }, { 3 * scale - 0.1, 3 * scale - 0.1 } },
      selection_box = { { -3 * scale, -3 * scale }, { 3 * scale, 3 * scale } },
      crafting_categories = {"augmenting"},
      result_inventory_size = 1,
      energy_usage = "5MW",
      crafting_speed = 1,
      source_inventory_size = 1,
      custom_input_slot_tooltip_key = "augmentor-input-slot-tooltip",
      energy_source =
      {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = { pollution = 2 }
      },
      module_slots = 4,
      icon_draw_specification = {shift = {0, -0.55}},
      icons_positioning =
      {
        {inventory_index = defines.inventory.furnace_modules, shift = {0, 0.2}}
      },
      allowed_effects = {"consumption", "speed", "pollution", "quality"},
      graphics_set = graphics.graphics_set, 
      cant_insert_at_source_message_key = "inventory-restriction.cant-be-augmented",
      show_recipe_icon = false,
      effect_receiver = { base_effect = { quality = settings.startup["augmentor-base-quality"].value / 10}}
    }
  }
  
