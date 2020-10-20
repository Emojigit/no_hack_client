minetest.register_on_cheat(function(ObjectRef, cheat)
	local formspec = "size[4,6]"..
			"label[0,0;You are cheating.\nReason: "..(cheat.type or "Unknown").."\nPLEASE USE THE OFFICAL\nMINETEST CLIENT THAT\nCAN DOWNLOAD FROM\nminetest.net]"..
			"button_exit[0,4;3,2;;exit]"
	if ObjectRef:is_player() then
		minetest.show_formspec(ObjectRef:get_player_name(), "no_hack_client:main", formspec)
	end
end)
