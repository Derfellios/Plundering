function Client_PresentConfigureUI(rootParent)
    if Mod.Settings.PlunderingAmount == nil then initial0 = 2; else initial0 = Mod.Settings.PlunderingAmount end

    local vert = UI.CreateVerticalLayoutGroup(rootParent);
    local horz = UI.CreateHorizontalLayoutGroup(vert);
    PlunderingAmountSlider = UI.CreateNumberInputField(horz)
		.SetSliderMinValue(1)
		.SetSliderMaxValue(5)
		.SetValue(initial0);
		UI.CreateLabel(horz).SetText('Number of armies you get for every territory you capture');
end