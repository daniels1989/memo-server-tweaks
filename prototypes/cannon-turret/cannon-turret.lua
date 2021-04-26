local function cannon_turret_extension(inputs)
	return
	{
		filename = "__MemoServerTweaks__/graphics/entity/cannon-turret.png",
		priority = "medium",
		scale = 0.5,
		line_length = 1,
    width = 179,
    height = 132,
		direction_count = 8,
		frame_count = 1,
		run_mode = inputs.run_mode and inputs.run_mode or "forward",
		shift = {0.055, -0.7},
		axially_symmetrical = false
	}
end

local function cannon_turret_extension_mask(inputs)
	return
	{
    filename = "__MemoServerTweaks__/graphics/entity/cannon-turret-mask.png",
    scale = 0.5,
    flags = { "mask" },
    line_length = 8,
    width = 72,
    height = 66,
    frame_count = 1,
    axially_symmetrical = false,
    direction_count = 64,
    frame_count = 1,
    shift = {0.055, -0.73},
    apply_runtime_tint = true
	}
end

local function cannon_turret_extension_shadow(inputs)
	return
	{
		filename = "__MemoServerTweaks__/graphics/entity/cannon-turret-shadow.png",
		scale = 0.5,
    line_length = 1,
    width = 193,
    height = 134,
		frame_count = 1,
		draw_as_shadow = true,
		direction_count = 8,
		run_mode = inputs.run_mode and inputs.run_mode or "forward",
		shift = {0.9, 0.1},
		axially_symmetrical = false,
		draw_as_shadow = true
	}
end

local function cannon_turret_attack(inputs)
	return
	{
		layers =
		{
			{
				filename = "__MemoServerTweaks__/graphics/entity/cannon-turret.png",
				scale = 0.5,
 				line_length = 8,
        width = 179,
        height = 132,
				frame_count = 1,
				direction_count = 64,
				shift = {0.055, -0.75},
				animation_speed = 8
			},
			{
        filename = "__MemoServerTweaks__/graphics/entity/cannon-turret-mask.png",
        scale = 0.5,
        flags = { "mask" },
        line_length = 8,
        width = 72,
        height = 66,
        frame_count = 1,
        axially_symmetrical = false,
        direction_count = 64,
        frame_count = 1,
        shift = {0.055, -0.80},
        apply_runtime_tint = true
      },
			{
				filename = "__MemoServerTweaks__/graphics/entity/cannon-turret-shadow.png",
				scale = 0.5,
 				line_length = 8,
        width = 193,
        height = 134,
				frame_count = 1,
				draw_as_shadow = true,
				shift = {1, 0.1},
				direction_count = 64,
			}
		}
	}
end

local function cannon_turret_heavy(inputs)
  return
  {
    layers =
    {
      {
        filename = "__MemoServerTweaks__/graphics/entity/cannon-turret-heavy.png",
        priority = "medium",
        scale = 0.75,
        width = 128,
        height = 128,
        direction_count = inputs.direction_count and inputs.direction_count or 64,
        frame_count = 1,
        line_length = inputs.line_length and inputs.line_length or 8,
        axially_symmetrical = false,
        run_mode = inputs.run_mode and inputs.run_mode or "forward",
        shift = {0.25,-0.58},
      }
    }
  }
end

local function cannon_turret_heavy_mask(inputs)
  return
  {
    layers =
    {
      {
        filename = "__MemoServerTweaks__/graphics/entity/cannon-turret-heavy-mask.png",
        scale = 0.75,
        flags = { "mask" },
        width = 128,
        height = 128,
        direction_count = inputs.direction_count and inputs.direction_count or 64,
        frame_count = inputs.frame_count,
        line_length = inputs.line_length and inputs.line_length or 8,
        axially_symmetrical = false,
        run_mode = inputs.run_mode and inputs.run_mode or "forward",
        shift = {0.25,-0.58},
        apply_runtime_tint = true
      }
    }
  }
end

-- entity
data:extend(
{
  {
    type = "ammo-turret",
    name = "cannon-turret",
    icon = "__MemoServerTweaks__/graphics/icons/cannon-turret-icon.png",
    icon_size = 64,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "cannon-turret"},
    max_health = 1500,
    corpse = "medium-remnants",
    collision_box = {{-0.7, -0.7 }, {0.7, 0.7}},
    selection_box = {{-1, -1 }, {1, 1}},
    rotation_speed = 0.003,
    preparing_speed = 0.04,
    folding_speed = 0.04,
    dying_explosion = "medium-explosion",
    inventory_size = 1,
    automated_ammo_count = 10,
    attacking_speed = 0.5,

    alert_when_attacking = true,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },

    turret_base_has_direction = true,

    folded_animation =
    {
      layers =
      {
        cannon_turret_extension{},
        cannon_turret_extension_mask{},
        cannon_turret_extension_shadow{},
      }
    },
    preparing_animation =
    {
      layers =
      {
        cannon_turret_extension{},
        cannon_turret_extension_mask{},
        cannon_turret_extension_shadow{}
      }
    },
    prepared_animation = cannon_turret_attack{},
    attacking_animation = cannon_turret_attack{},
    folding_animation =
    {
      layers =
      {
        cannon_turret_extension{},
        cannon_turret_extension_mask{},
        cannon_turret_extension_shadow{}
      }
    },
    base_picture =
    {
      layers =
      {
        {
          filename = "__MemoServerTweaks__/graphics/entity/cannon-turret-base.png",
          scale = 0.5,
          priority = "high",
          width = 150,
          height = 118,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = {0.0625, -0.046875},
        },
        {
          filename = "__MemoServerTweaks__/graphics/entity/cannon-turret-base-mask.png",
          scale = 0.5,
          flags = { "mask" },
          line_length = 1,
          width = 122,
          height = 102,
          frame_count = 1,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = {0.05, -0.15},
          apply_runtime_tint = true
        }
      }
    },

    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },

    attack_parameters =
    {
      type = "projectile",
      ammo_category = "cannon-shell",
      cooldown = 90,
      projectile_creation_distance = 2,
      projectile_center = {0, 0},
      damage_modifier = 1,
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0},
        creation_distance = -1.925,
        starting_frame_speed = 0.2,
        starting_frame_speed_deviation = 0.1
      },
      range = 30,
      min_range = 8,
      prepare_range = 35,
      shoot_in_prepare_state = false,
      sound =
      {
        {
            filename = "__base__/sound/fight/tank-cannon.ogg",
            volume = 1.0
        }
      },
    },
    call_for_help_radius = 46
  },
  {
    type = "ammo-turret",
    name = "cannon-turret-heavy",
    icon = "__MemoServerTweaks__/graphics/icons/cannon-turret-heavy-icon.png",
    icon_size = 64,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "cannon-turret-heavy"},
    max_health = 2500,
    corpse = "medium-remnants",
    collision_box = {{-0.7, -0.7 }, {0.7, 0.7}},
    selection_box = {{-1, -1 }, {1, 1}},
    rotation_speed = 0.0015,
    preparing_speed = 0.1,
    folding_speed = 0.1,
    dying_explosion = "medium-explosion",
    inventory_size = 1,
    automated_ammo_count = 10,
    attacking_speed = 0.5,

    alert_when_attacking = true,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },

    turret_base_has_direction = true,

    folded_animation = {
      layers =
      {
        cannon_turret_heavy{},
        cannon_turret_heavy_mask{}
      }
    },
    preparing_animation = {
      layers =
      {
        cannon_turret_heavy{},
        cannon_turret_heavy_mask{}
      }
    },
    prepared_animation = {
      layers =
      {
        cannon_turret_heavy{},
        cannon_turret_heavy_mask{}
      }
    },
    attacking_animation = {
      layers =
      {
        cannon_turret_heavy{},
        cannon_turret_heavy_mask{}
      }
    },
    folding_animation = {
      layers =
      {
        cannon_turret_heavy{},
        cannon_turret_heavy_mask{}
      }
    },

    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },

    attack_parameters =
    {
      type = "projectile",
      ammo_category = "cannon-shell",
      cooldown = 240,
      projectile_creation_distance = 2,
      projectile_center = {0, 0},
      damage_modifier = 2.5,
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.15,
        speed = 0.35,
        speed_deviation = 0.03,
        center = {0, 0},
        creation_distance = -1.925,
        starting_frame_speed = 0.2,
        starting_frame_speed_deviation = 0.1
      },
      range = 48,
      min_range = 16,
      prepare_range = 56,
      shoot_in_prepare_state = false,
      turn_range = 11.0 / 40.0,
      sound =
      {
        {
            filename = "__base__/sound/fight/tank-cannon.ogg",
            volume = 1.0
        }
      },
    },
    call_for_help_radius = 46
  },
})

--item
data:extend({
  {
    type = "item",
    name = "cannon-turret",
    icon = "__MemoServerTweaks__/graphics/icons/cannon-turret-icon.png",
    icon_size = 64,
    subgroup = "defensive-structure",
    order = "b[turret]-c[base]-a[cannon-turret]",
    place_result = "cannon-turret",
    stack_size = 20,
  },
  {
    type = "item",
    name = "cannon-turret-heavy",
    icon = "__MemoServerTweaks__/graphics/icons/cannon-turret-heavy-icon.png",
    icon_size = 64,
    subgroup = "defensive-structure",
    order = "b[turret]-c[base]-b[cannon-turret]",
    place_result = "cannon-turret-heavy",
    stack_size = 20,
  },
})

--recipe
data:extend({
  {
    type = "recipe",
    name = "cannon-turret",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"gun-turret", 2},
      {"steel-plate", 30},
      {"electronic-circuit", 2}
    },
    result = "cannon-turret",
  },
  {
    type = "recipe",
    name = "cannon-turret-heavy",
    enabled = false,
    energy_required = 40,
    ingredients =
    {
      {"cannon-turret", 1},
      {"steel-plate", 50},
      {"advanced-circuit", 10}
    },
    result = "cannon-turret-heavy",
  },
})
