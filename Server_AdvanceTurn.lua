function Server_AdvanceTurn_Order(game, order, result, skipThisOrder, addNewOrder)
	local proxtype = order.proxyType
	if proxtype == 'GameOrderAttackTransfer' then
		if result.IsSuccessful and result.IsAttack then
			print(order.PlayerID)
			local playerGameData = Mod.PrivateGameData;
			local Taken = playerGameData.Taken;
			Taken[order.PlayerID] = Taken[order.PlayerID] + 1;
			playerGameData.Taken = Taken;
			Mod.PrivateGameData = playerGameData;
		end 
	end
end


function Server_AdvanceTurn_End(game, addNewOrder)
	local playerGameData = Mod.PrivateGameData;
	local Taken = playerGameData.Taken;
	local Multiplier = Mod.Settings.PlunderingAmount;
	for ID, Player in pairs(game.Game.PlayingPlayers) do
		IncomeMod = WL.IncomeMod.Create(ID, Multiplier * Taken[ID], 'You took ' .. Taken[ID] .. ' territories! You get ' .. Multiplier * Taken[ID] .. ' extra armies');
		addNewOrder(WL.GameOrderEvent.Create(ID, 'You took ' .. Taken[ID] .. ' territories! You get ' .. Multiplier * Taken[ID] .. ' extra armies', {}, {}, nil, {IncomeMod}));
		Taken[ID] = 0;
	end; 
	playerGameData.Taken = Taken;
	Mod.PrivateGameData = playerGameData;
end