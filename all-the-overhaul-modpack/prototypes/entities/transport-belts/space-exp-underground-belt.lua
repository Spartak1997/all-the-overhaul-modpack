data:extend(
{
  {
    type = "item",
    name = "space-exp-underground-belt",
    icon = "__all-the-overhaul-modpack__/graphics/icons/underground-belt.png",
    icon_size = 32,
    subgroup = "belt",
    order = "b[underground-belt]-h[space-exp-underground-belt]",
    place_result = "space-exp-underground-belt",
    stack_size = 50
  },
  
  {
    type = "underground-belt",
    name = "space-exp-underground-belt",
    icon = "__all-the-overhaul-modpack__/graphics/icons/ultimate-underground-belt.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "space-exp-underground-belt"},
    max_health = 600,
    corpse = "small-remnants",
    max_distance = 10,
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    underground_remove_belts_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines-remove.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    resistances =
    {
      {
        type = "fire",
        percent = 60
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    animation_speed_coefficient = 32,
    belt_animation_set = data.raw["transport-belt"]["space-exp-transport-belt"].belt_animation_set,
    fast_replaceable_group = "transport-belt",
    speed = 0.5625,
    structure =
    {
      direction_in =
      {
        sheet =
        {
          filename = "__all-the-overhaul-modpack__/graphics/entity/space-exp-transport-belt/space-exp-underground-belt.png",
          priority = "extra-high",
          shift = {0.25, 0},
          width = 57,
          height = 43,
          y = 43,
          hr_version =
          {
            filename = "__all-the-overhaul-modpack__/graphics/entity/space-exp-transport-belt/hr-space-exp-underground-belt.png",
            priority = "extra-high",
            shift = {0.15625, 0.0703125},
            width = 106,
            height = 85,
            y = 85,
            scale = 0.5
          }
        }
      },
      direction_out =
      {
        sheet =
        {
          filename = "__all-the-overhaul-modpack__/graphics/entity/space-exp-transport-belt/space-exp-underground-belt.png",
          priority = "extra-high",
          shift = {0.25, 0},
          width = 57,
          height = 43,
          hr_version =
          {
            filename = "__all-the-overhaul-modpack__/graphics/entity/space-exp-transport-belt/hr-space-exp-underground-belt.png",
            priority = "extra-high",
            shift = {0.15625, 0.0703125},
            width = 106,
            height = 85,
            scale = 0.5
          }

        }

      }
    },
    ending_patch = ending_patch_prototype
  }
})