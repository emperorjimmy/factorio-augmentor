local animationSpeed = 1.5

-- default graphics is for 6x6 tiles
local default_graphics_tiles = 6
local graphics_tiles = 4
local scale = graphics_tiles / default_graphics_tiles

-- offset of the original graphics 6x6
local original_size = 410
local offset_pixel = -16 -- make it a bit smaller so it fits in the 6x6 box
local new_width_scale = (original_size + offset_pixel) / original_size
local graphics_scale = scale * new_width_scale

return {
    graphics_set =
    {
      animation = {
          layers = {
              {
                  filename = "__augmentor__/graphics/quantum-stabilizer/quantum-stabilizer-hr-shadow.png",
                  priority = "high",
                  width = 900,
                  height = 420,
                  frame_count = 1,
                  line_length = 1,
                  repeat_count = 100,
                  animation_speed = animationSpeed,
                  shift = util.by_pixel_hr(0, -16),
                  draw_as_shadow = true,
                  scale = 0.5 * graphics_scale,
              },
              {
                  priority = "high",
                  width = original_size,
                  height = original_size,
                  frame_count = 100,
                  shift = util.by_pixel_hr(0, -16),
                  animation_speed = animationSpeed,
                  scale = 0.5 * graphics_scale,
                  stripes = {
                      {
                          filename = "__augmentor__/graphics/quantum-stabilizer/quantum-stabilizer-hr-animation-1.png",
                          width_in_frames = 8,
                          height_in_frames = 8,
                      },
                      {
                          filename = "__augmentor__/graphics/quantum-stabilizer/quantum-stabilizer-hr-animation-2.png",
                          width_in_frames = 8,
                          height_in_frames = 8,
                      },
                  },
              },
          },
      },
      working_visualisations = {
          {
              fadeout = true,
              secondary_draw_order = 1,
              animation = {
                  priority = "high",
                  size = { original_size, original_size },
                  shift = util.by_pixel_hr(0, -16),
                  frame_count = 100,
                  draw_as_glow = true,
                  scale = 0.5 * graphics_scale,
                  animation_speed = animationSpeed,
                  blend_mode = "additive",
                  stripes = {
                      {
                          filename = "__augmentor__/graphics/quantum-stabilizer/quantum-stabilizer-hr-animation-emission-1.png",
                          width_in_frames = 8,
                          height_in_frames = 8,
                      },
                      {
                          filename = "__augmentor__/graphics/quantum-stabilizer/quantum-stabilizer-hr-animation-emission-2.png",
                          width_in_frames = 8,
                          height_in_frames = 8,
                      },
                  },
              },
              apply_recipe_tint = "none",
          }
      },
      reset_animation_when_frozen = true
    },
    scale = scale
  }