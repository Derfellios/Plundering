 function Client_PresentSettingsUI(rootParent)
	local vert = UI.CreateVerticalLayoutGroup(rootParent);
	local PlunderingAmount = Mod.Settings.PlunderingAmount;
    UI.CreateLabel(vert).SetText('When capturing a territory, you get ' .. PlunderingAmount .. 'extra armies to deploy');
end
