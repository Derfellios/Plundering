function Client_PresentMenuUI(rootParent, setMaxSize, setScrollable, game, close)	
    if game.Us ~= nil then
	
		PlunderingAmount = 2;
		if Mod.Settings.PlunderingAmount ~= nil then
			PlunderingAmount = Mod.Settings.PlunderingAmount;
		end
	
		local vert = UI.CreateVerticalLayoutGroup(rootParent);
		
		UI.CreateLabel(vert).SetText('When capturing a territory, you get ' .. PlunderingAmount .. 'extra armies to deploy');
	end
end


