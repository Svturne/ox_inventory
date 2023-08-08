return {
	{
		coords = vec3(362.46539306641, -1595.2403564453, 25.451725006104),
		target = {
			loc = vec3(362.46539306641, -1595.2403564453, 30.451725006104),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = 'Casier personnel'
		},
		name = 'policelocker',
		label = 'Casier personnel',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = shared.police
	},

	{
		coords = vec3(301.3, -600.23, 43.28),
		target = {
			loc = vec3(301.82, -600.99, 43.29),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = 'Casier personnel'
		},
		name = 'emslocker',
		label = 'Casier personnel',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = {['ambulance'] = 0}
	},
}
