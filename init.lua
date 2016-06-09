
--[[
Red flowers and plants because there is not enough red in the world. Especially if the world is Mars.
If you want them to grow naturally, you will have to do that part. This just adds their existence
]]



--Red flowers (default recolours)

minetest.register_node("redflowers:reddaisy", {
	description = "Red Daisy",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"redflowers_reddaisy.png"},
	inventory_image = "redflowers_reddaisy.png",
	wield_image = "redflowers_reddaisy.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	stack_max = 99,
	groups = {snappy = 3, flammable = 2, flower = 1, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.2, 0.5},
		}
	})

minetest.register_node("redflowers:redtulip", {
	description = "Red Tulip",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"redflowers_redtulip.png"},
	inventory_image = "redflowers_redtulip.png",
	wield_image = "redflowers_redtulip.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	stack_max = 99,
	groups = {snappy = 3, flammable = 2, flower = 1, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.15, -0.5, -0.15, 0.15, 0.2, 0.15},
		}
	})
