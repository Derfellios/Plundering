function Client_SaveConfigureUI(alert)
	Mod.Settings.PlunderingAmount = math.min(math.max(-20, PlunderingAmountSlider.GetValue()), 20);
end