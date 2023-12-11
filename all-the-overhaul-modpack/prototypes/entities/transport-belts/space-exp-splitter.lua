 data:extend(
{
	{
    type = "item",
    name = "space-exp-splitter",
    icon = "__all-the-overhaul-modpack__/graphics/icons/splitter.png",
    icon_size = 32,
    subgroup = "belt",
    order = "c[splitter]-h[space-exp-splitter]",
    place_result = "space-exp-splitter",
    stack_size = 50
	},
	{
    type = "splitter",
    name = "space-exp-splitter",
    icon = "__all-the-overhaul-modpack__/graphics/icons/splitter.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "space-exp-splitter"},
    max_health = 600,
    corpse = "medium-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 60
      }
    },
    collision_box = {{-0.9, -0.4}, {0.9, 0.4}},
    selection_box = {{-0.9, -0.5}, {0.9, 0.5}},
    animation_speed_coefficient = 32,
    structure_animation_speed_coefficient = 0.7,
    structure_animation_movement_cooldown = 10,
    belt_animation_set = data.raw["transport-belt"]["space-exp-transport-belt"].belt_animation_set,
    fast_replaceable_group = "transport-belt",
    speed = 0.5625,
    structure =
    {
      north =
      {
        filename = "__all-the-overhaul-modpack__/graphics/entity/space-exp-splitter/space-exp-splitter-north.png",
        frame_count = 32,
        line_length = 16,
        priority = "extra-high",
        width = 83,
        height = 36,
        shift = {0.265625, 0},
        hr_version =
        {
          filename = "__all-the-overhaul-modpack__/graphics/entity/space-exp-splitter/hr-space-exp-splitter-north.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 164,
          height = 70,
          shift = {0.25, 0.046875},
          scale = 0.5
        }
      },
      east =
      {
        filename = "__all-the-overhaul-modpack__/graphics/entity/space-exp-splitter/space-exp-splitter-east.png",
        frame_count = 32,
        line_length = 16,
        priority = "extra-high",
        width = 51,
        height = 80,
        shift = {0.109375, -0.03125},
        hr_version =
        {
          filename = "__all-the-overhaul-modpack__/graphics/entity/space-exp-splitter/hr-space-exp-splitter-east.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 93,
          height = 157,
          shift = {0.148438, -0.179688},
          scale = 0.5
        }
      },
      south =
      {
        filename = "__all-the-overhaul-modpack__/graphics/entity/space-exp-splitter/space-exp-splitter-south.png",
        frame_count = 32,
        line_length = 16,
        priority = "extra-high",
        width = 85,
        height = 35,
        shift = {0.140625, -0.015625},
        hr_version =
        {
          filename = "__all-the-overhaul-modpack__/graphics/entity/space-exp-splitter/hr-space-exp-splitter-south.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 168,
          height = 67,
          shift = {0.140625, 0.0234375},
          scale = 0.5
        }
      },
      west =
      {
        filename = "__all-the-overhaul-modpack__/graphics/entity/space-exp-splitter/space-exp-splitter-west.png",
        frame_count = 32,
        line_length = 16,
        priority = "extra-high",
        width = 51,
        height = 78,
        shift = {0.296875, -0.03125},
        hr_version =
        {
          filename = "__all-the-overhaul-modpack__/graphics/entity/space-exp-splitter/hr-space-exp-splitter-west.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 94,
          height = 154,
          shift = {0.203125, -0.109375},
          scale = 0.5
        }
      },
    },
    ending_patch = ending_patch_prototype
  }
 }
)