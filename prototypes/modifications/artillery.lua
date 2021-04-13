data.raw['ammo']['artillery-shell'].stack_size = 10;
data.raw['recipe']['artillery-wagon'].enabled = false;
data.raw['recipe']['artillery-targeting-remote'].enabled = false;
data.raw['technology']['artillery'].effects =
{
  {
	  type = "unlock-recipe",
	  recipe = "artillery-turret"
  },
  {
	  type = "unlock-recipe",
	  recipe = "artillery-shell"
  }
};

data.raw['artillery-turret']['artillery-turret'].ammo_stack_limit = 25;

data.raw['gun']['artillery-wagon-cannon'].attack_parameters.min_range = 4 * 32;
data.raw['gun']['artillery-wagon-cannon'].attack_parameters.range = 10 * 32;
data.raw['technology']['artillery-shell-range-1'].effects =
{
  {
	  type = "artillery-range",
	  modifier = 0.2
  }
};


table.insert(data.raw['technology']['artillery'].prerequisites,"cannon-turret-heavy");