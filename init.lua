
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



--Mars plants

minetest.register_node(":mars:redgrass", {
	description = "Red Grass",
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.3,
	tiles = {"mars_redgrass.png"},
	inventory_image = "mars_redgrass.png",
	wield_image = "mars_redgrass.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy=3,flora=1,attached_node=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
})


minetest.register_node(":mars:redweed", {
	description = "Red Weed",
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.3,
	tiles = {"mars_redweed.png"},
	inventory_image = "mars_redweed.png",
	wield_image = "mars_redweed.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy=3,flora=1,attached_node=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
})


minetest.register_node(":mars:moss", {
	description = "Martian Moss",
	drawtype = "nodebox",
	tiles = {"mars_moss.png"},
	inventory_image = "mars_moss.png",
	wield_image = "mars_moss.png",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = false,
	node_box = {
		type = "fixed", 
		fixed = {-1/2, -1/2, -1/2, 1/2, -15/32, 1/2},
	},
	selection_box = {
		type = "fixed", 
		fixed = {-1/2, -1/2, -1/2, 1/2, -15/32, 1/2},
	},
	groups = {snappy=3,flora=1,attached_node=1},
	sounds = default.node_sound_leaves_defaults(),
})


--mars grass

minetest.register_node(":mars:grass_1", {
	description = "Martian Grass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"mars_grass_1.png"},
	inventory_image = "mars_grass_3.png",
	wield_image = "mars_grass_3.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy=3,flora=1,attached_node=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},

	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("mars:grass_"..math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("mars:grass_1 "..itemstack:get_count()-(1-ret:get_count()))
	end,
})

for i=2,5 do
	minetest.register_node(":mars:grass_"..i, {
		description = "Martian Grass",
		drawtype = "plantlike",
		waving = 1,
		tiles = {"mars_grass_"..i..".png"},
		inventory_image = "mars_grass_"..i..".png",
		wield_image = "mars_grass_"..i..".png",
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		buildable_to = true,
		drop = "mars:grass_1",
		groups = {snappy=3,flora=1,attached_node=1,not_in_creative_inventory=1},
		sounds = default.node_sound_leaves_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
		},
	})
end