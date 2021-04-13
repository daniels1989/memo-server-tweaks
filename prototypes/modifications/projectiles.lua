data.raw['projectile']['cannon-projectile'].force_condition = "not-same";
data.raw['projectile']['explosive-cannon-projectile'].force_condition = "not-same";
data.raw['projectile']['uranium-cannon-projectile'].force_condition = "not-same";
data.raw['projectile']['explosive-uranium-cannon-projectile'].force_condition = "not-same";

data.raw['ammo']['cannon-shell'].ammo_type.action.action_delivery.max_range = 48;
data.raw['ammo']['explosive-cannon-shell'].ammo_type.action.action_delivery.max_range = 48;
data.raw['ammo']['uranium-cannon-shell'].ammo_type.action.action_delivery.max_range = 48;
data.raw['ammo']['explosive-uranium-cannon-shell'].ammo_type.action.action_delivery.max_range = 48;

data.raw['ammo']['cannon-shell'].direction_only = false;
data.raw['ammo']['uranium-cannon-shell'].direction_only = false;

table.insert(
	data.raw['projectile']['explosive-cannon-projectile'].action.action_delivery.target_effects,
	{
		type = "create-entity",
		entity_name = "small-scorchmark",
		check_buildability = true
	}
);