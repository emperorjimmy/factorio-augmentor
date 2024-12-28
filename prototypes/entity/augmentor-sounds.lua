require("sound-util")
local sounds = {}
sounds.test =
{
  main_sounds =
  {
    {
      sound = {filename = "__space-age__/sound/entity/electromagnetic-plant/electromagnetic-plant-warmup.ogg", volume = 0.6},
      play_for_working_visualisations = {"warm-up"},
    },
    {
      sound = {filename = "__space-age__/sound/entity/electromagnetic-plant/electromagnetic-plant-loop.ogg", volume = 0.6},
      play_for_working_visualisations = {"rotation", "rotation-continue"},
      fade_in_ticks = 4,
      fade_out_ticks = 20,
    },
    {
      sound = {filename = "__space-age__/sound/entity/electromagnetic-plant/electromagnetic-plant-cooldown.ogg", volume = 0.8},
      play_for_working_visualisations = {"cool-down"},
    },
  },
  sound_accents =
  {
    {
      sound = {filename = "__space-age__/sound/entity/electromagnetic-plant/emp-arm-retract.ogg", volume = 0.35},
      play_for_working_visualisation = "warm-up",
      frame = 11,
      audible_distance_modifier = 0.4
    },
    {
      sound = sound_variations("__space-age__/sound/entity/electromagnetic-plant/emp-coil", 2, 0.6),
      play_for_working_visualisation = "rotation",
      frame = 1,
      audible_distance_modifier = 0.4
    },
    {
      sound = sound_variations("__space-age__/sound/entity/electromagnetic-plant/emp-coil", 2, 0.6),
      play_for_working_visualisation = "rotation",
      frame = 40,
      audible_distance_modifier = 0.4
    },
    {
      sound = sound_variations("__space-age__/sound/entity/electromagnetic-plant/emp-coil", 2, 0.4),
      play_for_working_visualisation = "rotation",
      frame = 102,
      audible_distance_modifier = 0.4
    },
    {
      sound = sound_variations("__space-age__/sound/entity/electromagnetic-plant/emp-riser-stop", 2, 0.6),
      play_for_working_visualisation = "rotation",
      frame = 93,
      audible_distance_modifier = 0.4
    },
    {
      sound = {filename = "__space-age__/sound/entity/electromagnetic-plant/emp-bridge-close.ogg", volume = 0.4},
      play_for_working_visualisation = "rotation",
      frame = 33,
      audible_distance_modifier = 0.4
    },
    {
      sound = {filename = "__space-age__/sound/entity/electromagnetic-plant/emp-bridge-open.ogg", volume = 0.4},
      play_for_working_visualisation = "rotation",
      frame = 50,
      audible_distance_modifier = 0.4
    },
    {
      sound = sound_variations("__space-age__/sound/entity/electromagnetic-plant/emp-electric", 5, 0.4),
      play_for_working_visualisation = "rotation",
      frame = 35, --electric sparks to match bridge section close
      audible_distance_modifier = 0.4
    },
    {
      sound = sound_variations("__space-age__/sound/entity/electromagnetic-plant/emp-electric", 5, 0.5),
      play_for_working_visualisation = "rotation",
      frame = 58,
      audible_distance_modifier = 0.5
    },
    {
      sound = sound_variations("__space-age__/sound/entity/electromagnetic-plant/emp-slide-stop", 2, 0.4),
      play_for_working_visualisation = "rotation",
      frame = 102,
      audible_distance_modifier = 0.4
    },
    {
      sound = sound_variations("__space-age__/sound/entity/electromagnetic-plant/emp-riser-stop", 2, 0.4),
      play_for_working_visualisation = "rotation-continue",
      frame = 14,
      audible_distance_modifier = 0.4
    },
    {
      sound = sound_variations("__space-age__/sound/entity/electromagnetic-plant/emp-slide-stop", 2, 0.4),
      play_for_working_visualisation = "rotation-continue",
      frame = 3,
      audible_distance_modifier = 0.4
    },
    {
      sound = sound_variations("__space-age__/sound/entity/electromagnetic-plant/emp-riser-stop", 2, 0.2),
      play_for_working_visualisation = "cool-down",
      frame = 31,
      audible_distance_modifier = 0.4
    },
    {
      sound = {filename = "__space-age__/sound/entity/electromagnetic-plant/emp-arm-stop.ogg", volume = 0.45},
      play_for_working_visualisation = "cool-down",
      frame = 12,
      audible_distance_modifier = 0.4
    },
    {
      sound = {filename = "__space-age__/sound/entity/electromagnetic-plant/emp-arm-extend.ogg", volume = 0.5},
      play_for_working_visualisation = "cool-down",
      frame = 1,
      audible_distance_modifier = 0.4
    },
    {
      sound = {filename = "__space-age__/sound/entity/electromagnetic-plant/emp-arm-weld.ogg", volume = 0.9},
      play_for_working_visualisation = "cool-down-lights",
      frame = 12,
      audible_distance_modifier = 0.4
    },
  },
  audible_distance_modifier = 0.6,
  max_sounds_per_type = 2
}

sounds.test_augmentor = 
{
    sound = { filename = "__space-age__/sound/entity/electromagnetic-plant/electromagnetic-plant-loop.ogg", volume = 0.7 },
    sound_accents =
    {
      { sound = { variations = sound_variations("__space-age__/sound/entity/electromagnetic-plant/emp-coil", 2, 0.4)}, frame = 14, audible_distance_modifier = 0.2 },
      { sound = { variations = sound_variations("__space-age__/sound/entity/electromagnetic-plant/emp-electric", 5, 0.4)}, frame = 60, audible_distance_modifier = 0.2 }
    },
    max_sounds_per_type = 2,
    fade_in_ticks = 4,
    fade_out_ticks = 20
  }
  
sounds.augmentor = 
{
    sound = { filename = "__space-age__/sound/entity/electromagnetic-plant/electromagnetic-plant-loop.ogg", volume = 0.7 },
    sound_accents =
    {
      { sound = { variations = sound_variations("__space-age__/sound/entity/electromagnetic-plant/emp-coil", 2, 0.4)}, frame = 14, audible_distance_modifier = 0.2 },
      { sound = { variations = sound_variations("__space-age__/sound/entity/electromagnetic-plant/emp-electric", 5, 0.4)}, frame = 60, audible_distance_modifier = 0.2 }
    },
    max_sounds_per_type = 2,
    fade_in_ticks = 4,
    fade_out_ticks = 20
  }
return sounds
