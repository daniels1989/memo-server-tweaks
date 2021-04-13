-- New cannon turret and its shell magazine ammo technology
data:extend(
{
  {
    type = "technology",
    name = "cannon-turret",
    icon_size = 128,
    icon = "__MemoServerTweaks__/graphics/technology/cannon-turret.png",
    effects =
    {
        {
          type = "unlock-recipe",
          recipe = "cannon-turret"
        },
      },
    prerequisites = {"gun-turret", "tank"},
    unit =
    {
      count = 150,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
      },
      time = 30,
    },
    upgrade = true,
    order = "e-c-c-a"
  },
  {
    type = "technology",
    name = "cannon-turret-heavy",
    icon_size = 128,
    icon = "__MemoServerTweaks__/graphics/technology/cannon-turret-heavy.png",
    effects =
    {
        {
          type = "unlock-recipe",
          recipe = "cannon-turret-heavy"
        },
      },
    prerequisites = {"cannon-turret"},
    unit =
    {
      count = 400,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
      },
      time = 30,
    },
    upgrade = true,
    order = "e-c-c-b"
  },
})
