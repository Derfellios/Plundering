function Server_StartGame(game, standing)
	local playerGameData = Mod.PrivateGameData;
	local Taken = {};
	for ID, _ in pairs(game.Game.PlayingPlayers) do
		Taken[ID] = 0;
	end; 
	playerGameData.Taken = Taken;
	Mod.PrivateGameData = playerGameData;
end
