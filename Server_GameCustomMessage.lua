function Server_GameCustomMessage(game, playerID, payload, setReturnTable)
	if payload.Message == "InitialPopupPlunderingDisplayed" then
		local playerGameData = Mod.PlayerGameData;
		if (playerGameData[playerID] == nil) then
			playerGameData[playerID] = { };
		end;
		playerGameData[playerID].InitialPopupPlunderingDisplayed = true;
		Mod.PlayerGameData = playerGameData;
	end
end