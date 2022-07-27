function Client_GameRefresh(game)

	if game.Us ~= nil and not Mod.PlayerGameData.InitialPopupPlunderingDisplayed then
		local PlunderingAmount = Mod.Settings.PlunderingAmount;
		UI.Alert("This game includes Plundering. Get extra " .. PlunderingAmount .. " armies for each territory you capture!")
		local payload = {};
		payload.Message = "InitialPopupPlunderingDisplayed";
		game.SendGameCustomMessage("Please wait... ", payload, function(reply)end);
	end
end