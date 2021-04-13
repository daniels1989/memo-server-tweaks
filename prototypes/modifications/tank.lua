data.raw['gun']["tank-flamethrower"].attack_parameters.range = 20;
data.raw['car']["tank"].max_health = 2500;
data.raw['stream']["tank-flamethrower-fire-stream"].action =
{
  {
    type = "area",
    radius = 5,
    action_delivery =
    {
      type = "instant",
      target_effects =
      {
        {
          type = "create-sticker",
          sticker = "fire-sticker"
        },
        {
          type = "damage",
          damage = { amount = 7, type = "fire" },
          apply_damage_to_trees = false
        }
      }
    }
  },
  {
    type = "direct",
    action_delivery =
    {
      type = "instant",
      target_effects =
      {
        {
          type = "create-fire",
          entity_name = "fire-flame",
          show_in_tooltip = true
        }
      }
    }
  }
};