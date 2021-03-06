StaticPopup_DisplayedFrames = { };

STATICPOPUP_NUMDIALOGS = 4;
STATICPOPUP_TIMEOUT = 60;
STATICPOPUP_TEXTURE_ALERT = "Interface\\DialogFrame\\UI-Dialog-Icon-AlertNew";
STATICPOPUP_TEXTURE_ALERTGEAR = "Interface\\DialogFrame\\UI-Dialog-Icon-AlertOther";
StaticPopupDialogs = { };

StaticPopupDialogs["CONFIRM_OVERWRITE_EQUIPMENT_SET"] = {
	text = CONFIRM_OVERWRITE_EQUIPMENT_SET,
	button1 = YES,
	button2 = NO,
	OnAccept = function (self) C_EquipmentSet.SaveEquipmentSet(self.data, self.selectedIcon); GearManagerDialogPopup:Hide(); end,
	OnCancel = function (self) end,
	OnHide = function (self) self.data = nil; self.selectedIcon = nil; end,
	hideOnEscape = 1,
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
}

StaticPopupDialogs["CONFIRM_SAVE_EQUIPMENT_SET"] = {
	text = CONFIRM_SAVE_EQUIPMENT_SET,
	button1 = YES,
	button2 = NO,
	OnAccept = function (self) C_EquipmentSet.SaveEquipmentSet(self.data); end,
	OnCancel = function (self) end,
	OnHide = function (self) self.data = nil; end,
	hideOnEscape = 1,
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
}


StaticPopupDialogs["ERROR_CINEMATIC"] = {
	text = ERROR_CINEMATIC,
	button1 = OKAY,
	button2 = nil,
	timeout = 0,
	OnAccept = function()
	end,
	OnCancel = function()
	end,
	whileDead = 1,
	hideOnEscape = 1,
}

StaticPopupDialogs["ERR_SOR_STARTING_EXPERIENCE_INCOMPLETE"] = {
	text = ERR_SOR_STARTING_EXPERIENCE_INCOMPLETE,
	button1 = OKAY,
	button2 = nil,
	timeout = 0,
	OnAccept = function()
	end,
	OnCancel = function()
	end,
	whileDead = 1,
	hideOnEscape = 1,
	showAlert = 1,
}

StaticPopupDialogs["ERR_AUTH_CHALLENGE_UI_INVALID"] = {
	text = ERR_AUTH_CHALLENGE_UI_INVALID,
	button1 = OKAY,
	button2 = nil,
	timeout = 0,
	OnAccept = function()
	end,
	OnCancel = function()
	end,
	whileDead = 1,
	hideOnEscape = 1,
	showAlert = 1,
	exclusive = 1,
}

StaticPopupDialogs["CONFIRM_DELETE_EQUIPMENT_SET"] = {
	text = CONFIRM_DELETE_EQUIPMENT_SET,
	button1 = YES,
	button2 = NO,
	OnAccept = function (self) C_EquipmentSet.DeleteEquipmentSet(self.data); end,
	OnCancel = function (self) end,
	hideOnEscape = 1,
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
}

StaticPopupDialogs["CONFIRM_GLYPH_PLACEMENT"] = {
	text = "",
	button1 = YES,
	button2 = NO,
	OnAccept = function (self) AttachGlyphToSpell(self.data.id); end,
	OnCancel = function (self)
	end,
	OnShow = function(self)
		self.text:SetFormattedText(CONFIRM_GLYPH_PLACEMENT_NO_COST, self.data.name, self.data.currentName);
	end,
	hideOnEscape = 1,
	timeout = 0,
	exclusive = 1,
}

StaticPopupDialogs["CONFIRM_GLYPH_REMOVAL"] = {
	text = "",
	button1 = YES,
	button2 = NO,
	OnAccept = function (self) AttachGlyphToSpell(self.data.id); end,
	OnCancel = function (self)
	end,
	OnShow = function(self)
		self.text:SetFormattedText(CONFIRM_GLYPH_REMOVAL, self.data.name);
	end,
	hideOnEscape = 1,
	timeout = 0,
	exclusive = 1,
}

StaticPopupDialogs["CONFIRM_RESET_VIDEO_SETTINGS"] = {
	text = CONFIRM_RESET_SETTINGS,
	button1 = ALL_SETTINGS,
	button3 = CURRENT_SETTINGS,
	button2 = CANCEL,
	OnAccept = function ()
		VideoOptionsFrame_SetAllToDefaults();
	end,
	OnAlt = function ()
		VideoOptionsFrame_SetCurrentToDefaults();
	end,
	OnCancel = function() end,
	showAlert = 1,
	timeout = 0,
	exclusive = 1,
	hideOnEscape = 1,
	whileDead = 1,
}

StaticPopupDialogs["CONFIRM_RESET_AUDIO_SETTINGS"] = {
	text = CONFIRM_RESET_SETTINGS,
	button1 = ALL_SETTINGS,
	button3 = CURRENT_SETTINGS,
	button2 = CANCEL,
	OnAccept = function ()
		AudioOptionsFrame_SetAllToDefaults();
	end,
	OnAlt = function ()
		AudioOptionsFrame_SetCurrentToDefaults();
	end,
	OnCancel = function() end,
	showAlert = 1,
	timeout = 0,
	exclusive = 1,
	hideOnEscape = 1,
	whileDead = 1,
}

StaticPopupDialogs["CONFIRM_RESET_INTERFACE_SETTINGS"] = {
	text = CONFIRM_RESET_INTERFACE_SETTINGS,
	button1 = ALL_SETTINGS,
	button3 = CURRENT_SETTINGS,
	button2 = CANCEL,
	OnAccept = function ()
		InterfaceOptionsFrame_SetAllToDefaults();
	end,
	OnAlt = function ()
		InterfaceOptionsFrame_SetCurrentToDefaults();
	end,
	OnCancel = function() end,
	timeout = 0,
	exclusive = 1,
	hideOnEscape = 1,
	whileDead = 1,
}

StaticPopupDialogs["CONFIRM_REDOCK_CHAT"] = {
	text = CONFIRM_REDOCK_CHAT,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function ()
		RedockChatWindows();
	end,
	OnCancel = function() end,
	timeout = 0,
	exclusive = 1,
	hideOnEscape = 1,
	whileDead = 1,
}

StaticPopupDialogs["MAC_OPEN_UNIVERSAL_ACCESS"] = {
	text = MAC_OPEN_UNIVERSAL_ACCESS,
	button1 = YES,
	button2 = NO,
	OnAccept = function ()
		MacOptions_OpenUniversalAccess();
		ShowUIPanel(MacOptionsFrame);
	end,
	OnCancel = function()
		ShowUIPanel(MacOptionsFrame);
	end,
	OnShow = function(self)
		if (MacOptions_HasNewStyleUniversalAccess() and MAC_OPEN_UNIVERSAL_ACCESS1090 ~= nil) then
			self.text:SetFormattedText(MAC_OPEN_UNIVERSAL_ACCESS1090, MacOptions_GetGameBundleName());
		else
			self.text:SetText(MAC_OPEN_UNIVERSAL_ACCESS);
		end
	end,
	showAlert = 1,
	timeout = 0,
	exclusive = 1,
	hideOnEscape = 1,
	whileDead = 1,
}


StaticPopupDialogs["CONFIRM_PURCHASE_TOKEN_ITEM"] = {
	text = CONFIRM_PURCHASE_TOKEN_ITEM,
	button1 = YES,
	button2 = NO,
	OnAccept = function()
		BuyMerchantItem(MerchantFrame.itemIndex, MerchantFrame.count);
	end,
	OnCancel = function()

	end,
	OnShow = function()

	end,
	OnHide = function()

	end,
	timeout = 0,
	hideOnEscape = 1,
	hasItemFrame = 1,
}

StaticPopupDialogs["CONFIRM_PURCHASE_NONREFUNDABLE_ITEM"] = {
	text = CONFIRM_PURCHASE_NONREFUNDABLE_ITEM,
	button1 = YES,
	button2 = NO,
	OnAccept = function()
		BuyMerchantItem(MerchantFrame.itemIndex, MerchantFrame.count);
	end,
	OnCancel = function()

	end,
	OnShow = function()

	end,
	OnHide = function()

	end,
	timeout = 0,
	hideOnEscape = 1,
	hasItemFrame = 1,
}

StaticPopupDialogs["CONFIRM_UPGRADE_ITEM"] = {
	text = CONFIRM_UPGRADE_ITEM,
	button1 = YES,
	button2 = NO,
	OnAccept = function()
		UpgradeItem();
		PlaySoundKitID(23291);
	end,
	OnCancel = function()
		ItemUpgradeFrame_Update();
	end,
	OnShow = function()

	end,
	OnHide = function()

	end,
	timeout = 0,
	hideOnEscape = 1,
	hasItemFrame = 1,
}

StaticPopupDialogs["CONFIRM_REFUND_TOKEN_ITEM"] = {
	text = CONFIRM_REFUND_TOKEN_ITEM,
	button1 = YES,
	button2 = NO,
	OnAccept = function()
		ContainerRefundItemPurchase(MerchantFrame.refundBag, MerchantFrame.refundSlot, MerchantFrame.refundItemEquipped);
		StackSplitFrame:Hide();
	end,
	OnCancel = function()
		ClearCursor();
	end,
	OnShow = function(self)
		if(MerchantFrame.price ~= 0) then
			MoneyFrame_Update(self.moneyFrame, MerchantFrame.price);
		end
	end,
	OnHide = function()
		MerchantFrame_ResetRefundItem();
	end,
	timeout = 0,
	hideOnEscape = 1,
	hasItemFrame = 1,
}

StaticPopupDialogs["CONFIRM_REFUND_MAX_HONOR"] = {
	text = CONFIRM_REFUND_MAX_HONOR,
	button1 = YES,
	button2 = NO,
	OnAccept = function()
		ContainerRefundItemPurchase(MerchantFrame.refundBag, MerchantFrame.refundSlot);
		StackSplitFrame:Hide();
	end,
	OnCancel = function()
		ClearCursor();
	end,
	OnShow = function()

	end,
	OnHide = function()
		MerchantFrame_ResetRefundItem();
	end,
	timeout = 0,
	hideOnEscape = 1,
}

StaticPopupDialogs["CONFIRM_REFUND_MAX_ARENA_POINTS"] = {
	text = CONFIRM_REFUND_MAX_ARENA_POINTS,
	button1 = YES,
	button2 = NO,
	OnAccept = function()
		ContainerRefundItemPurchase(MerchantFrame.refundBag, MerchantFrame.refundSlot);
		StackSplitFrame:Hide();
	end,
	OnCancel = function()
		ClearCursor();
	end,
	OnShow = function()

	end,
	OnHide = function()
		MerchantFrame_ResetRefundItem();
	end,
	timeout = 0,
	hideOnEscape = 1,
}

StaticPopupDialogs["CONFIRM_REFUND_MAX_HONOR_AND_ARENA"] = {
	text = CONFIRM_REFUND_MAX_HONOR_AND_ARENA,
	button1 = YES,
	button2 = NO,
	OnAccept = function()
		ContainerRefundItemPurchase(MerchantFrame.refundBag, MerchantFrame.refundSlot);
		StackSplitFrame:Hide();
	end,
	OnCancel = function()
		ClearCursor();
	end,
	OnShow = function()

	end,
	OnHide = function()
		MerchantFrame_ResetRefundItem();
	end,
	timeout = 0,
	hideOnEscape = 1,
}

StaticPopupDialogs["CONFIRM_HIGH_COST_ITEM"] = {
	text = CONFIRM_HIGH_COST_ITEM,
	button1 = YES,
	button2 = NO,
	OnAccept = function()
		BuyMerchantItem(MerchantFrame.itemIndex, MerchantFrame.count);
	end,
	OnCancel = function()

	end,
	OnShow = function(self)
		MoneyFrame_Update(self.moneyFrame, MerchantFrame.price*MerchantFrame.count);
	end,
	OnHide = function()

	end,
	timeout = 0,
	hideOnEscape = 1,
	hasMoneyFrame = 1,
}

StaticPopupDialogs["CONFIRM_COMPLETE_EXPENSIVE_QUEST"] = {
	text = CONFIRM_COMPLETE_EXPENSIVE_QUEST,
	button1 = COMPLETE_QUEST,
	button2 = CANCEL,
	OnAccept = function()
		GetQuestReward(QuestInfoFrame.itemChoice);
		PlaySound("igQuestListComplete");
	end,
	OnCancel = function()
		DeclineQuest();
		PlaySound("igQuestCancel");
	end,
	OnShow = function()
		QuestInfoFrame.acceptButton:Disable();
	end,
	timeout = 0,
	hideOnEscape = 1,
	hasMoneyFrame = 1,
};
StaticPopupDialogs["CONFIRM_ACCEPT_PVP_QUEST"] = {
	text = CONFIRM_ACCEPT_PVP_QUEST,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function()
		AcceptQuest();
	end,
	OnCancel = function()
		DeclineQuest();
		PlaySound("igQuestCancel");
	end,
	OnShow = function()
		QuestFrameAcceptButton:Disable();
		QuestFrameDeclineButton:Disable();
	end,
	OnHide = function()
		QuestFrameAcceptButton:Enable();
		QuestFrameDeclineButton:Enable();
	end,
	timeout = 0,
	hideOnEscape = 1,
};
StaticPopupDialogs["USE_GUILDBANK_REPAIR"] = {
	text = USE_GUILDBANK_REPAIR,
	button1 = USE_PERSONAL_FUNDS,
	button2 = OKAY,
	OnAccept = function()
		RepairAllItems();
		PlaySound("ITEM_REPAIR");
	end,
	OnCancel = function ()
		RepairAllItems(true);
		PlaySound("ITEM_REPAIR");
	end,
	timeout = 0,
	hideOnEscape = 1
};
StaticPopupDialogs["GUILDBANK_WITHDRAW"] = {
	text = GUILDBANK_WITHDRAW,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self)
		WithdrawGuildBankMoney(MoneyInputFrame_GetCopper(self.moneyInputFrame));
	end,
	OnHide = function(self)
		MoneyInputFrame_ResetMoney(self.moneyInputFrame);
	end,
	EditBoxOnEnterPressed = function(self)
		local parent = self:GetParent():GetParent();
		WithdrawGuildBankMoney(MoneyInputFrame_GetCopper(parent.moneyInputFrame));
		parent:Hide();
	end,
	hasMoneyInputFrame = 1,
	timeout = 0,
	hideOnEscape = 1
};
StaticPopupDialogs["GUILDBANK_DEPOSIT"] = {
	text = GUILDBANK_DEPOSIT,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self)
		DepositGuildBankMoney(MoneyInputFrame_GetCopper(self.moneyInputFrame));
	end,
	OnHide = function(self)
		MoneyInputFrame_ResetMoney(self.moneyInputFrame);
	end,
	EditBoxOnEnterPressed = function(self)
		local parent = self:GetParent():GetParent();
		DepositGuildBankMoney(MoneyInputFrame_GetCopper(parent.moneyInputFrame));
		parent:Hide();
	end,
	hasMoneyInputFrame = 1,
	timeout = 0,
	hideOnEscape = 1
};
StaticPopupDialogs["CONFIRM_BUY_GUILDBANK_TAB"] = {
	text = CONFIRM_BUY_GUILDBANK_TAB,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		BuyGuildBankTab();
	end,
	OnShow = function(self)
		MoneyFrame_Update(self.moneyFrame, GetGuildBankTabCost());
	end,
	hasMoneyFrame = 1,
	timeout = 0,
	hideOnEscape = 1
};
StaticPopupDialogs["CONFIRM_BUY_REAGENTBANK_TAB"] = {
	text = CONFIRM_BUY_REAGNETBANK_TAB,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		BuyReagentBank();
	end,
	OnShow = function(self)
		MoneyFrame_Update(self.moneyFrame, GetReagentBankCost());
	end,
	hasMoneyFrame = 1,
	timeout = 0,
	hideOnEscape = 1
};

StaticPopupDialogs["TOO_MANY_LUA_ERRORS"] = {
	text = TOO_MANY_LUA_ERRORS,
	button1 = DISABLE_ADDONS,
	button2 = IGNORE_ERRORS,
	OnAccept = function(self)
		DisableAllAddOns();
		ReloadUI();
	end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["CONFIRM_ACCEPT_SOCKETS"] = {
	text = CONFIRM_ACCEPT_SOCKETS,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		AcceptSockets();
		PlaySound("JewelcraftingFinalize");
	end,
	timeout = 0,
	showAlert = 1,
	hideOnEscape = 1,
};

StaticPopupDialogs["TAKE_GM_SURVEY"] = {
	text = TAKE_GM_SURVEY,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		GMSurveyFrame_LoadUI();
		ShowUIPanel(GMSurveyFrame);
		TicketStatusFrame:Hide();
	end,
	OnCancel = function(self)
		TicketStatusFrame.hasGMSurvey = false;
		TicketStatusFrame:Hide();
	end,
	timeout = 0,
	hideOnEscape = 1,
};

StaticPopupDialogs["CONFIRM_RESET_INSTANCES"] = {
	text = CONFIRM_RESET_INSTANCES,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		ResetInstances();
	end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1,
};

StaticPopupDialogs["CONFIRM_RESET_CHALLENGE_MODE"] = {
	text = CONFIRM_RESET_CHALLENGE_MODE,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		C_ChallengeMode.Reset();
	end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1,
};

StaticPopupDialogs["CONFIRM_GUILD_DISBAND"] = {
	text = CONFIRM_GUILD_DISBAND,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		GuildDisband();
	end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1,
};

StaticPopupDialogs["CONFIRM_BUY_BANK_SLOT"] = {
	text = CONFIRM_BUY_BANK_SLOT,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		PurchaseSlot();
	end,
	OnShow = function(self)
		MoneyFrame_Update(self.moneyFrame, BankFrame.nextSlotCost);
	end,
	hasMoneyFrame = 1,
	timeout = 0,
	hideOnEscape = 1,
};

StaticPopupDialogs["MACRO_ACTION_FORBIDDEN"] = {
	text = MACRO_ACTION_FORBIDDEN,
	button1 = OKAY,
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["ADDON_ACTION_FORBIDDEN"] = {
	text = ADDON_ACTION_FORBIDDEN,
	button1 = DISABLE,
	button2 = IGNORE_DIALOG,
	OnAccept = function(self, data)
		DisableAddOn(data);
		ReloadUI();
	end,
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["CONFIRM_LOOT_DISTRIBUTION"] = {
	text = CONFIRM_LOOT_DISTRIBUTION,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self, data)
		if ( data == "LootWindow" ) then
			MasterLooterFrame_GiveMasterLoot();
		elseif ( data == "LootHistory" ) then
			LootHistoryDropDown_GiveMasterLoot();
		end
	end,
	timeout = 0,
	hideOnEscape = 1,
};

StaticPopupDialogs["CONFIRM_BATTLEFIELD_ENTRY"] = {
	text = CONFIRM_BATTLEFIELD_ENTRY,
	button1 = ENTER_BATTLE,
	button2 = LEAVE_QUEUE,
	OnShow = function(self, data)
		local status, mapName, teamSize, registeredMatch = GetBattlefieldStatus(data);
		if ( teamSize == 0 ) then
			self.button2:Enable();
		else
			self.button2:Disable();
		end
	end,
	OnAccept = function(self, data)
		if ( not AcceptBattlefieldPort(data, true) ) then
			return 1;
		end
		if( StaticPopup_Visible( "DEATH" ) ) then
			StaticPopup_Hide( "DEATH" );
		end
	end,
	OnCancel = function(self, data)
		if ( not AcceptBattlefieldPort(data, false) ) then	--Actually declines the battlefield port.
			return 1;
		end
	end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1,
	noCancelOnEscape = 1,
	noCancelOnReuse = 1,
	multiple = 1,
	closeButton = 1,
	closeButtonIsHide = 1,
};

StaticPopupDialogs["BFMGR_CONFIRM_WORLD_PVP_QUEUED"] = {
	text = WORLD_PVP_QUEUED,
	button1 = OKAY,
	timeout = 0,
	whileDead = 1,
};

StaticPopupDialogs["BFMGR_CONFIRM_WORLD_PVP_QUEUED_WARMUP"] = {
	text = WORLD_PVP_QUEUED_WARMUP,
	button1 = OKAY,
	timeout = 0,
	whileDead = 1,
};

StaticPopupDialogs["BFMGR_DENY_WORLD_PVP_QUEUED"] = {
	text = WORLD_PVP_FAIL,
	button1 = OKAY,
	timeout = 0,
	whileDead = 1,
};

StaticPopupDialogs["BFMGR_INVITED_TO_QUEUE"] = {
	text = WORLD_PVP_INVITED,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self, battleID)
		BattlefieldMgrQueueInviteResponse(battleID,1);
	end,
	OnCancel = function(self, battleID)
		BattlefieldMgrQueueInviteResponse(battleID,0);
	end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1,
	multiple = 1
};

StaticPopupDialogs["BFMGR_INVITED_TO_QUEUE_WARMUP"] = {
	text = WORLD_PVP_INVITED_WARMUP;
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self, battleID)
		BattlefieldMgrQueueInviteResponse(battleID,1);
	end,
	OnCancel = function(self, battleID)
		BattlefieldMgrQueueInviteResponse(battleID,0);
	end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1,
	multiple = 1
};

StaticPopupDialogs["BFMGR_INVITED_TO_ENTER"] = {
	text = WORLD_PVP_ENTER,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnShow = function(self)
		for i = 1, MAX_WORLD_PVP_QUEUES do
			local status, mapName, queueID, timeleft = GetWorldPVPQueueStatus(i);
			if ( queueID == self.data ) then
				self.timeleft = timeleft;
			end
		end
	end,
	OnAccept = function(self, battleID)
		BattlefieldMgrEntryInviteResponse(battleID, true);
	end,
	OnCancel = function(self, battleID)
		BattlefieldMgrEntryInviteResponse(battleID, false);
	end,
	timeout = 0,
	timeoutInformationalOnly = 1;
	whileDead = 1,
	hideOnEscape = 1,
	multiple = 1,
	sound = "PVPTHROUGHQUEUE",
};

StaticPopupDialogs["BFMGR_EJECT_PENDING"] = {
	text = WORLD_PVP_PENDING,
	button1 = OKAY,
	showAlert = 1,
	timeout = 0,
	whileDead = 1,
};

StaticPopupDialogs["BFMGR_EJECT_PENDING_REMOTE"] = {
	text = WORLD_PVP_PENDING_REMOTE,
	button1 = OKAY,
	showAlert = 1,
	timeout = 0,
	whileDead = 1,
};

StaticPopupDialogs["BFMGR_PLAYER_EXITED_BATTLE"] = {
	text = WORLD_PVP_EXITED_BATTLE,
	button1 = OKAY,
	showAlert = 1,
	timeout = 0,
	whileDead = 1,
};

StaticPopupDialogs["BFMGR_PLAYER_LOW_LEVEL"] = {
	text = WORLD_PVP_LOW_LEVEL,
	button1 = OKAY,
	showAlert = 1,
	timeout = 0,
	whileDead = 1,
};

StaticPopupDialogs["BFMGR_PLAYER_NOT_WHILE_IN_RAID"] = {
	text = WORLD_PVP_NOT_WHILE_IN_RAID,
	button1 = OKAY,
	showAlert = 1,
	timeout = 0,
	whileDead = 1,
};

StaticPopupDialogs["BFMGR_PLAYER_DESERTER"] = {
	text = WORLD_PVP_DESERTER,
	button1 = OKAY,
	showAlert = 1,
	timeout = 0,
	whileDead = 1,
};

StaticPopupDialogs["CONFIRM_GUILD_LEAVE"] = {
	text = CONFIRM_GUILD_LEAVE,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self)
		GuildLeave();
	end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["CONFIRM_GUILD_PROMOTE"] = {
	text = CONFIRM_GUILD_PROMOTE,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self, name)
		GuildSetLeader(name);
	end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["RENAME_GUILD"] = {
	text = RENAME_GUILD_LABEL,
	button1 = ACCEPT,
	button2 = CANCEL,
	hasEditBox = 1,
	maxLetters = 24,
	OnAccept = function(self)
		local text = self.editBox:GetText();
		RenamePetition(text);
	end,
	EditBoxOnEnterPressed = function(self)
		local text = self:GetParent().editBox:GetText();
		RenamePetition(text);
		self:GetParent():Hide();
	end,
	OnShow = function(self)
		self.editBox:SetFocus();
	end,
	OnHide = function(self)
		ChatEdit_FocusActiveWindow();
		self.editBox:SetText("");
	end,
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["HELP_TICKET_QUEUE_DISABLED"] = {
	text = HELP_TICKET_QUEUE_DISABLED,
	button1 = OKAY,
	showAlert = 1,
	timeout = 0,
}

StaticPopupDialogs["CLIENT_RESTART_ALERT"] = {
	text = CLIENT_RESTART_ALERT,
	button1 = OKAY,
	showAlert = 1,
	timeout = 0,
	whileDead = 1,
};

StaticPopupDialogs["CLIENT_LOGOUT_ALERT"] = {
	text = CLIENT_LOGOUT_ALERT,
	button1 = OKAY,
	showAlert = 1,
	timeout = 0,
	whileDead = 1,
};

StaticPopupDialogs["COD_ALERT"] = {
	text = COD_INSUFFICIENT_MONEY,
	button1 = CLOSE,
	timeout = 0,
	hideOnEscape = 1
};

StaticPopupDialogs["COD_CONFIRMATION"] = {
	text = COD_CONFIRMATION,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self)
		TakeInboxItem(InboxFrame.openMailID, OpenMailFrame.lastTakeAttachment);
	end,
	OnShow = function(self)
		MoneyFrame_Update(self.moneyFrame, OpenMailFrame.cod);
	end,
	hasMoneyFrame = 1,
	timeout = 0,
	hideOnEscape = 1
};

StaticPopupDialogs["COD_CONFIRMATION_AUTO_LOOT"] = {
	text = COD_CONFIRMATION,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self, index)
		AutoLootMailItem(index);
	end,
	OnShow = function(self)
		MoneyFrame_Update(self.moneyFrame, OpenMailFrame.cod);
	end,
	hasMoneyFrame = 1,
	timeout = 0,
	hideOnEscape = 1
};

StaticPopupDialogs["DELETE_MAIL"] = {
	text = DELETE_MAIL_CONFIRMATION,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self)
		DeleteInboxItem(InboxFrame.openMailID);
		InboxFrame.openMailID = nil;
		HideUIPanel(OpenMailFrame);
	end,
	showAlert = 1,
	timeout = 0,
	hideOnEscape = 1
};

StaticPopupDialogs["DELETE_MONEY"] = {
	text = DELETE_MONEY_CONFIRMATION,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self)
		DeleteInboxItem(InboxFrame.openMailID);
		InboxFrame.openMailID = nil;
		HideUIPanel(OpenMailFrame);
	end,
	OnShow = function(self)
		MoneyFrame_Update(self.moneyFrame, OpenMailFrame.money);
	end,
	hasMoneyFrame = 1,
	showAlert = 1,
	timeout = 0,
	hideOnEscape = 1
};

StaticPopupDialogs["CONFIRM_REPORT_SPAM_CHAT"] = {
	text = REPORT_SPAM_CONFIRMATION,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self, lineID)
		ReportPlayer(PLAYER_REPORT_TYPE_SPAM, lineID);
		--ComplainChat(lineID);
	end,
	timeout = 0,
	whileDead = 1,
	exclusive = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["CONFIRM_REPORT_BATTLEPET_NAME"] = {
	text = REPORT_BATTLEPET_NAME_CONFIRMATION,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self)
		ReportPlayer(PLAYER_REPORT_TYPE_BAD_BATTLEPET_NAME, "pending");
	end,
	timeout = 0,
	whileDead = 1,
	exclusive = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["CONFIRM_REPORT_PET_NAME"] = {
	text = REPORT_PET_NAME_CONFIRMATION,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self)
		ReportPlayer(PLAYER_REPORT_TYPE_BAD_PET_NAME, "pending");
	end,
	timeout = 0,
	whileDead = 1,
	exclusive = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["CONFIRM_REPORT_BAD_LANGUAGE_CHAT"] = {
	text = REPORT_BAD_LANGUAGE_CONFIRMATION,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self, lineID)
		ReportPlayer(PLAYER_REPORT_TYPE_LANGUAGE, lineID);
	end,
	timeout = 0,
	whileDead = 1,
	exclusive = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["CONFIRM_REPORT_SPAM_MAIL"] = {
	text = REPORT_SPAM_CONFIRMATION,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self, index)
		ComplainInboxItem(index);
	end,
	OnCancel = function(self, index)
		OpenMailReportSpamButton:Enable();
	end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["JOIN_CHANNEL"] = {
	text = ADD_CHANNEL,
	button1 = ACCEPT,
	button2 = CANCEL,
	hasEditBox = 1,
	maxLetters = 31,
	whileDead = 1,
	OnAccept = function(self)
		local channel = self.editBox:GetText();
		JoinPermanentChannel(channel, nil, FCF_GetCurrentChatFrameID(), 1);
		ChatFrame_AddChannel(FCF_GetCurrentChatFrame(), channel);
		self.editBox:SetText("");
	end,
	timeout = 0,
	EditBoxOnEnterPressed = function(self)
		local parent = self:GetParent();
		local editBox = parent.editBox;
		local channel = editBox:GetText();
		JoinPermanentChannel(channel, nil, FCF_GetCurrentChatFrameID(), 1);
		ChatFrame_AddChannel(FCF_GetCurrentChatFrame(), channel);
		editBox:SetText("");
		parent:Hide();
	end,
	EditBoxOnEscapePressed = function(self)
		self:GetParent():Hide();
	end,
	hideOnEscape = 1
};

StaticPopupDialogs["CHANNEL_INVITE"] = {
	text = CHANNEL_INVITE,
	button1 = ACCEPT_ALT,
	button2 = CANCEL,
	hasEditBox = 1,
	autoCompleteParams = AUTOCOMPLETE_LIST.CHANINVITE,
	maxLetters = 31,
	whileDead = 1,
	OnHide = function(self)
		ChatEdit_FocusActiveWindow();
		self.editBox:SetText("");
	end,
	OnAccept = function(self, data)
		local name = self.editBox:GetText();
		ChannelInvite(data, name);
		self.editBox:SetText("");
	end,
	timeout = 0,
	EditBoxOnEnterPressed = function(self, data)
		local parent = self:GetParent();
		local editBox = parent.editBox;
		ChannelInvite(data, editBox:GetText());
		editBox:SetText("");
		parent:Hide();
	end,
	EditBoxOnEscapePressed = function(self)
		self:GetParent():Hide();
	end,
	hideOnEscape = 1
};

StaticPopupDialogs["CHANNEL_PASSWORD"] = {
	text = CHANNEL_PASSWORD,
	button1 = ACCEPT_ALT,
	button2 = CANCEL,
	hasEditBox = 1,
	maxLetters = 31,
	whileDead = 1,
	OnHide = function(self)
		ChatEdit_FocusActiveWindow();
		self.editBox:SetText("");
	end,
	OnAccept = function(self, data)
		local password = self.editBox:GetText();
		SetChannelPassword(data, password);
		self.editBox:SetText("");
	end,
	timeout = 0,
	EditBoxOnEnterPressed = function(self, data)
		local parent = self:GetParent();
		local editBox = parent.editBox
		local password = editBox:GetText();
		SetChannelPassword(data, password);
		editBox:SetText("");
		parent:Hide();
	end,
	EditBoxOnEscapePressed = function(self)
		self:GetParent():Hide();
	end,
	hideOnEscape = 1
};

StaticPopupDialogs["NAME_CHAT"] = {
	text = NAME_CHAT_WINDOW,
	button1 = ACCEPT,
	button2 = CANCEL,
	hasEditBox = 1,
	maxLetters = 31,
	whileDead = 1,
	OnAccept = function(self, renameID)
		local name = self.editBox:GetText();
		if ( renameID ) then
			FCF_SetWindowName(_G["ChatFrame"..renameID], name);
		else
			local frame = FCF_OpenNewWindow(name);
			FCF_CopyChatSettings(frame, DEFAULT_CHAT_FRAME);
		end
		self.editBox:SetText("");
		FCF_DockUpdate();
	end,
	timeout = 0,
	EditBoxOnEnterPressed = function(self, renameID)
		local parent = self:GetParent();
		local editBox = parent.editBox
		local name = editBox:GetText();
		if ( renameID ) then
			FCF_SetWindowName(_G["ChatFrame"..renameID], name);
		else
			local frame = FCF_OpenNewWindow(name);
			FCF_CopyChatSettings(frame, DEFAULT_CHAT_FRAME);
		end
		editBox:SetText("");
		FCF_DockUpdate();
		parent:Hide();
	end,
	EditBoxOnEscapePressed = function (self)
		self:GetParent():Hide();
	end,
	hideOnEscape = 1
};

StaticPopupDialogs["RESET_CHAT"] = {
	text = RESET_CHAT_WINDOW,
	button1 = ACCEPT,
	button2 = CANCEL,
	whileDead = 1,
	OnAccept = function(self)
		FCF_ResetChatWindows();
		if ( ChatConfigFrame:IsShown() ) then
			ChatConfig_UpdateChatSettings();
		end
	end,
	timeout = 0,
	EditBoxOnEscapePressed = function (self)
		self:GetParent():Hide();
	end,
	hideOnEscape = 1,
	exclusive = 1,
};

StaticPopupDialogs["HELP_TICKET_ABANDON_CONFIRM"] = {
	text = HELP_TICKET_ABANDON_CONFIRM,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self, prevFrame)
		DeleteGMTicket();
	end,
	OnCancel = function(self, prevFrame)
	end,
	OnShow = function(self)
		HideUIPanel(HelpFrame);
	end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1,
};
StaticPopupDialogs["HELP_TICKET"] = {
	text = HELP_TICKET_EDIT_ABANDON,
	button1 = HELP_TICKET_EDIT,
	button2 = HELP_TICKET_ABANDON,
	OnAccept = function(self)
		if ( HelpFrame_IsGMTicketQueueActive() ) then
			HelpFrame_ShowFrame(HELPFRAME_SUBMIT_TICKET);
		else
			HideUIPanel(HelpFrame);
			StaticPopup_Show("HELP_TICKET_QUEUE_DISABLED");
		end
	end,
	OnCancel = function(self)
		local currentFrame = self:GetParent();
		local dialogFrame = StaticPopup_Show("HELP_TICKET_ABANDON_CONFIRM");
		dialogFrame.data = currentFrame;
	end,
	timeout = 0,
	whileDead = 1,
	closeButton = 1,
};
StaticPopupDialogs["GM_RESPONSE_NEED_MORE_HELP"] = {
	text = GM_RESPONSE_POPUP_NEED_MORE_HELP_WARNING,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		HelpFrame_GMResponse_Acknowledge();
	end,
	OnCancel = function(self)
	end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1,
};
StaticPopupDialogs["GM_RESPONSE_RESOLVE_CONFIRM"] = {
	text = GM_RESPONSE_POPUP_RESOLVE_CONFIRM,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		HelpFrame_GMResponse_Acknowledge(true);
	end,
	OnCancel = function(self)
	end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1,
};
StaticPopupDialogs["GM_RESPONSE_MUST_RESOLVE_RESPONSE"] = {
	text = GM_RESPONSE_POPUP_MUST_RESOLVE_RESPONSE,
	button1 = GM_RESPONSE_POPUP_VIEW_RESPONSE,
	button2 = CANCEL,
	OnAccept = function(self)
		HelpFrame_ShowFrame(HELPFRAME_GM_RESPONSE);
	end,
	OnCancel = function(self)
	end,
	OnShow = function(self)
		HideUIPanel(HelpFrame);
	end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1,
	showAlert = 1,
};
StaticPopupDialogs["PETRENAMECONFIRM"] = {
	text = PET_RENAME_CONFIRMATION,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self, data)
		PetRename(data);
	end,
	OnUpdate = function(self, elapsed)
		if ( not UnitExists("pet") ) then
			self:Hide();
		end
	end,
	timeout = 0,
	hideOnEscape = 1,
};
StaticPopupDialogs["DEATH"] = {
	text = DEATH_RELEASE_TIMER,
	button1 = DEATH_RELEASE,
	button2 = USE_SOULSTONE,
	button3 = DEATH_RECAP,
	OnShow = function(self)
		self.timeleft = GetReleaseTimeRemaining();
		local text = HasSoulstone();
		if ( text ) then
			self.button2:SetText(text);
		end

		if ( IsActiveBattlefieldArena() ) then
			self.text:SetText(DEATH_RELEASE_SPECTATOR);
		elseif ( self.timeleft == -1 ) then
			self.text:SetText(DEATH_RELEASE_NOTIMER);
		end
		if ( not self.UpdateRecapButton ) then
			self.UpdateRecapButton = function( self )
				if ( DeathRecap_HasEvents() ) then
					self.button3:Enable();
					self.button3:SetScript("OnEnter", nil );
					self.button3:SetScript("OnLeave", nil);
				else
					self.button3:Disable();
					self.button3:SetMotionScriptsWhileDisabled(true);
					self.button3:SetScript("OnEnter", function(self)
						GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT");
						GameTooltip:SetText(DEATH_RECAP_UNAVAILABLE);
						GameTooltip:Show();
					end );
					self.button3:SetScript("OnLeave", GameTooltip_Hide);
				end
			end
		end

		self:UpdateRecapButton();
	end,
	OnHide = function(self)
		self.button3:SetScript("OnEnter", nil );
		self.button3:SetScript("OnLeave", nil);
		self.button3:SetMotionScriptsWhileDisabled(false);
	end,
	OnAccept = function(self)
		if ( IsActiveBattlefieldArena() ) then
			local info = ChatTypeInfo["SYSTEM"];
			DEFAULT_CHAT_FRAME:AddMessage(ARENA_SPECTATOR, info.r, info.g, info.b, info.id);
		end
		RepopMe();
		if ( CannotBeResurrected() ) then
			return 1
		end
	end,
	OnCancel = function(self, data, reason)
		if ( reason == "override" ) then
			return;
		end
		if ( reason == "timeout" ) then
			return;
		end
		if ( reason == "clicked" ) then
			if ( HasSoulstone() ) then
				UseSoulstone();
			else
				RepopMe();
			end
			if ( CannotBeResurrected() ) then
				return 1
			end
		end
	end,
	OnAlt = function()
		OpenDeathRecapUI();
	end,
	OnUpdate = function(self, elapsed)
		if ( IsFalling() and not IsOutOfBounds()) then
			self.button1:Disable();
			self.button2:Disable();
			return;
		end

		local b1_enabled = self.button1:IsEnabled();
		local encounterSupressRelease = IsEncounterSuppressingRelease();
		if ( encounterSupressRelease ) then
			self.button1:SetEnabled(false);
			self.button1:SetText(DEATH_RELEASE);
		else
			local hasNoReleaseAura, noReleaseDuration = HasNoReleaseAura();
			self.button1:SetEnabled(not hasNoReleaseAura);
			if ( hasNoReleaseAura ) then
				self.button1:SetText(math.floor(noReleaseDuration));
			else
				self.button1:SetText(DEATH_RELEASE);
			end
		end

		if ( b1_enabled ~= self.button1:IsEnabled() ) then
			if ( b1_enabled ) then
				if ( encounterSupressRelease ) then
					self.text:SetText(CAN_NOT_RELEASE_IN_COMBAT);
				else
					self.text:SetText(CAN_NOT_RELEASE_RIGHT_NOW);
				end
			else
				self.text:SetText("");
				StaticPopupDialogs[self.which].OnShow(self);
			end
			StaticPopup_Resize(self, self.which);
		end

		if( HasSoulstone() and CanUseSoulstone() ) then
			self.button2:Enable();
		else
			self.button2:Disable();
		end

		if ( self.UpdateRecapButton) then
			self:UpdateRecapButton();
		end
	end,
	DisplayButton2 = function(self)
		return HasSoulstone();
	end,

	timeout = 0,
	whileDead = 1,
	interruptCinematic = 1,
	notClosableByLogout = 1,
	noCancelOnReuse = 1,
	noCloseOnAlt = true,
	cancels = "RECOVER_CORPSE"
};
StaticPopupDialogs["RESURRECT"] = {
	StartDelay = GetCorpseRecoveryDelay,
	delayText = RESURRECT_REQUEST_TIMER,
	text = RESURRECT_REQUEST,
	button1 = ACCEPT,
	button2 = DECLINE,
	OnShow = function(self)
		self.timeleft = GetCorpseRecoveryDelay() + 60;
	end,
	OnAccept = function(self)
		AcceptResurrect();
	end,
	OnCancel = function(self, data, reason)
		if ( reason == "timeout" ) then
			TimeoutResurrect();
		else
			DeclineResurrect();
		end
		if ( UnitIsDead("player") and not UnitIsControlling("player") ) then
			StaticPopup_Show("DEATH");
		end
	end,
	timeout = STATICPOPUP_TIMEOUT,
	whileDead = 1,
	cancels = "DEATH",
	interruptCinematic = 1,
	notClosableByLogout = 1,
	hideOnEscape = 1,
	noCancelOnReuse = 1
};
StaticPopupDialogs["RESURRECT_NO_SICKNESS"] = {
	StartDelay = GetCorpseRecoveryDelay,
	delayText = RESURRECT_REQUEST_NO_SICKNESS_TIMER,
	text = RESURRECT_REQUEST_NO_SICKNESS,
	button1 = ACCEPT,
	button2 = DECLINE,
	OnShow = function(self)
		self.timeleft = GetCorpseRecoveryDelay() + 60;
	end,
	OnAccept = function(self)
		AcceptResurrect();
	end,
	OnCancel = function(self, data, reason)
		if ( reason == "timeout" ) then
			TimeoutResurrect();
		else
			DeclineResurrect();
		end
		if ( UnitIsDead("player") and not UnitIsControlling("player") ) then
			StaticPopup_Show("DEATH");
		end
	end,
	timeout = STATICPOPUP_TIMEOUT,
	whileDead = 1,
	cancels = "DEATH",
	interruptCinematic = 1,
	notClosableByLogout = 1,
	hideOnEscape = 1,
	noCancelOnReuse = 1
};
StaticPopupDialogs["RESURRECT_NO_TIMER"] = {
	text = RESURRECT_REQUEST_NO_SICKNESS,
	button1 = ACCEPT,
	button1Pulse = true,
	button2 = DECLINE,
	OnShow = function(self)
		self.timeleft = GetCorpseRecoveryDelay() + 60;
		self.hideOnEscape = nil;
		self.declineTimeLeft = 5;
		if (HasSoulstone()) then
			self.declineTimeLeft = 1;
		end
		self.button2:SetText(self.declineTimeLeft);
		self.button2:Disable();
		self.ticker = C_Timer.NewTicker(1, function()
			self.declineTimeLeft = self.declineTimeLeft - 1;
			if (self.declineTimeLeft == 0) then
				self.button2:SetText(DECLINE)
				self.button2:Enable();
				self.ticker:Cancel();
				self.hideOnEscape = 1;
				return;
			else
				self.button2:SetText(self.declineTimeLeft);
			end
		end);
	end,
	OnHide = function(self)
		if (self.ticker) then
			self.ticker:Cancel();
		end
		self.ticker = nil;
	end,
	OnAccept = function(self)
		AcceptResurrect();
	end,
	OnCancel = function(self, data, reason)
		if ( reason == "timeout" ) then
			TimeoutResurrect();
		else
			DeclineResurrect();
		end
		if ( UnitIsDead("player") and not UnitIsControlling("player") ) then
			StaticPopup_Show("DEATH");
		end
	end,
	timeout = STATICPOPUP_TIMEOUT,
	whileDead = 1,
	cancels = "DEATH",
	interruptCinematic = 1,
	notClosableByLogout = 1,
	hideOnEscape = 1,
	noCancelOnReuse = 1
};
StaticPopupDialogs["SKINNED"] = {
	text = DEATH_CORPSE_SKINNED,
	button1 = ACCEPT,
	timeout = 0,
	whileDead = 1,
	interruptCinematic = 1,
	notClosableByLogout = 1,
};
StaticPopupDialogs["SKINNED_REPOP"] = {
	text = DEATH_CORPSE_SKINNED,
	button1 = DEATH_RELEASE,
	button2 = DECLINE,
	OnAccept = function(self)
		StaticPopup_Hide("RESURRECT");
		StaticPopup_Hide("RESURRECT_NO_SICKNESS");
		StaticPopup_Hide("RESURRECT_NO_TIMER");
		RepopMe();
	end,
	timeout = 0,
	whileDead = 1,
	interruptCinematic = 1,
	notClosableByLogout = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["TRADE"] = {
	text = TRADE_WITH_QUESTION,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		BeginTrade();
	end,
	OnCancel = function(self)
		CancelTrade();
	end,
	timeout = STATICPOPUP_TIMEOUT,
	hideOnEscape = 1
};
StaticPopupDialogs["PARTY_INVITE"] = {
	text = "%s",
	button1 = ACCEPT,
	button2 = DECLINE,
	sound = "igPlayerInvite",
	OnShow = function(self)
		self.inviteAccepted = nil;
	end,
	OnAccept = function(self)
		AcceptGroup();
		self.inviteAccepted = 1;
	end,
	OnCancel = function(self)
		DeclineGroup();
	end,
	OnHide = function(self)
		if ( not self.inviteAccepted ) then
			DeclineGroup();
			self:Hide();
		end
	end,
	timeout = STATICPOPUP_TIMEOUT,
	whileDead = 1,
};
StaticPopupDialogs["GROUP_INVITE_CONFIRMATION"] = {
	text = "%s", --Filled out dynamically
	button1 = ACCEPT,
	button2 = DECLINE,
	sound = "igPlayerInvite",
	OnAccept = function(self)
		RespondToInviteConfirmation(self.data, true);
	end,
	OnCancel = function(self)
		RespondToInviteConfirmation(self.data, false);
	end,
	OnHide = function(self)
		UpdateInviteConfirmationDialogs();
	end,
	OnUpdate = function(self)
		if ( not self.linkRegion or not self.nextUpdateTime ) then
			return;
		end

		local timeNow = GetTime();
		if ( self.nextUpdateTime > timeNow ) then
			return;
		end

		local _, _, guid, _, _, level, spec, itemLevel = GetInviteConfirmationInfo(self.data);
		local className, classFilename, _, _, gender, characterName, _ = GetPlayerInfoByGUID(guid);

		GameTooltip:SetOwner(self.linkRegion);

		if ( className ) then
			self.nextUpdateTime = nil; -- The tooltip will be created with valid data, no more updates necessary.

			local _, _, _, colorCode = GetClassColor(classFilename);
			GameTooltip:SetText(WrapTextInColorCode(characterName, colorCode));

			local _, specName = GetSpecializationInfoByID(spec, gender);
			local characterLine = CHARACTER_LINK_CLASS_LEVEL_SPEC_TOOLTIP:format(level, className, specName);
			local itemLevelLine = CHARACTER_LINK_ITEM_LEVEL_TOOLTIP:format(itemLevel);

			GameTooltip:AddLine(characterLine, HIGHLIGHT_FONT_COLOR:GetRGB());
			GameTooltip:AddLine(itemLevelLine, HIGHLIGHT_FONT_COLOR:GetRGB());
		else
			self.nextUpdateTime = timeNow + .5;
			GameTooltip:SetText(RETRIEVING_DATA, RED_FONT_COLOR:GetRGB());
		end

		GameTooltip:Show();
	end,
	OnHyperlinkClick = function(self, link, text, button)
		-- Only allowing left button for now.
		if ( button == "LeftButton" ) then
			SetItemRef(link, text, button);
		end
	end,
	OnHyperlinkEnter = function(self, link, text, region, boundsLeft, boundsBottom, boundsWidth, boundsHeight)
		self.linkRegion = region;
		self.linkText = text;
		self.nextUpdateTime = GetTime();
		StaticPopupDialogs["GROUP_INVITE_CONFIRMATION"].OnUpdate(self);
	end,
	OnHyperlinkLeave = function(self)
		self.linkRegion = nil;
		self.linkText = nil;
		self.nextUpdateTime = nil;
		GameTooltip:Hide();
	end,
	whileDead = 1,
};
StaticPopupDialogs["CHAT_CHANNEL_INVITE"] = {
	text = CHAT_INVITE_NOTICE_POPUP,
	button1 = ACCEPT,
	button2 = DECLINE,
	sound = "igPlayerInvite",
	OnShow = function(self)
		StaticPopupDialogs["CHAT_CHANNEL_INVITE"].inviteAccepted = nil;
	end,
	OnAccept = function(self, data)
		local name = data;
		local zoneChannel, channelName = JoinPermanentChannel(name, nil, DEFAULT_CHAT_FRAME:GetID(), 1);
		if ( channelName ) then
			name = channelName;
		end
		if ( not zoneChannel ) then
			return;
		end

		local i = 1;
		while ( DEFAULT_CHAT_FRAME.channelList[i] ) do
			i = i + 1;
		end
		DEFAULT_CHAT_FRAME.channelList[i] = name;
		DEFAULT_CHAT_FRAME.zoneChannelList[i] = zoneChannel;
	end,
	EditBoxOnEnterPressed = function(self, data)
		local name = data;
		local zoneChannel, channelName = JoinPermanentChannel(name, nil, DEFAULT_CHAT_FRAME:GetID(), 1);
		if ( channelName ) then
			name = channelName;
		end
		if ( not zoneChannel ) then
			return;
		end

		local i = 1;
		while ( DEFAULT_CHAT_FRAME.channelList[i] ) do
			i = i + 1;
		end
		DEFAULT_CHAT_FRAME.channelList[i] = name;
		DEFAULT_CHAT_FRAME.zoneChannelList[i] = zoneChannel;
		StaticPopupDialogs["CHAT_CHANNEL_INVITE"].inviteAccepted = 1;
		self:GetParent():Hide();
	end,
	EditBoxOnEscapePressed = function(self, data)
		self:GetParent():Hide();
	end,
	OnCancel = function(self, data)
		local chanName = data;
		DeclineChannelInvite(chanName);
	end,
	timeout = CHANNEL_INVITE_TIMEOUT,
	whileDead = 1,
	hideOnEscape = 1,
};

StaticPopupDialogs["LEVEL_GRANT_PROPOSED"] = {
	text = LEVEL_GRANT,
	button1 = ACCEPT,
	button2 = DECLINE,
	sound = "igPlayerInvite",
	OnAccept = function(self)
		AcceptLevelGrant();
	end,
	OnCancel = function(self)
		DeclineLevelGrant();
	end,
	OnHide = function()
		DeclineLevelGrant();
	end,
	timeout = STATICPOPUP_TIMEOUT,
	whileDead = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["BN_BLOCK_FAILED_TOO_MANY_RID"] = {
	text = BN_BLOCK_FAILED_TOO_MANY_RID,
	button1 = OKAY,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1,
};

StaticPopupDialogs["BN_BLOCK_FAILED_TOO_MANY_CID"] = {
	text = BN_BLOCK_FAILED_TOO_MANY_CID,
	button1 = OKAY,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1,
};

function ChatChannelPasswordHandler(self, data)
	local password = _G[self:GetName().."EditBox"]:GetText();
	local name = data;
	local zoneChannel, channelName = JoinPermanentChannel(name, password, DEFAULT_CHAT_FRAME:GetID(), 1);
	if ( channelName ) then
		name = channelName;
	end
	if ( not zoneChannel ) then
		return;
	end

	local i = 1;
	while ( DEFAULT_CHAT_FRAME.channelList[i] ) do
		i = i + 1;
	end
	DEFAULT_CHAT_FRAME.channelList[i] = name;
	DEFAULT_CHAT_FRAME.zoneChannelList[i] = zoneChannel;
	StaticPopupDialogs["CHAT_CHANNEL_INVITE"].inviteAccepted = 1;
end

StaticPopupDialogs["CHAT_CHANNEL_PASSWORD"] = {
	text = CHAT_PASSWORD_NOTICE_POPUP,
	hasEditBox = 1,
	maxLetters = 31,
	button1 = OKAY,
	button2 = CANCEL,
	sound = "igPlayerInvite",
	OnAccept = function(self, data)
		ChatChannelPasswordHandler(self, data);
	end,
	EditBoxOnEnterPressed = function(self, data)
		ChatChannelPasswordHandler(self:GetParent(), data);
		self:GetParent():Hide();
	end,
	EditBoxOnEscapePressed = function(self)
		self:GetParent():Hide();
	end,
	timeout = STATICPOPUP_TIMEOUT,
	whileDead = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["CAMP"] = {
	text = CAMP_TIMER,
	button1 = CANCEL,
	--button2 = CAMP_NOW,
	OnAccept = function(self)
		CancelLogout();
		--ForceLogout();
		-- uncomment the next line once forced logouts are completely implemented (they currently have a failure case)
		-- this.timeleft = 0;
	end,
	OnHide = function(self)
		if ( self.timeleft > 0 ) then
			CancelLogout();
			self:Hide();
		end
	end,
	timeout = 20,
	whileDead = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["QUIT"] = {
	text = QUIT_TIMER,
	button1 = QUIT_NOW,
	button2 = CANCEL,
	OnAccept = function(self)
		ForceQuit();
		self.timeleft = 0;
	end,
	OnHide = function(self)
		if ( self.timeleft > 0 ) then
			CancelLogout();
			self:Hide();
		end
	end,
	timeout = 20,
	whileDead = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["LOOT_BIND"] = {
	text = LOOT_NO_DROP,
	button1 = OKAY,
	button2 = CANCEL,
	OnAccept = function(self, slot)
		ConfirmLootSlot(slot);
	end,
	timeout = 0,
	exclusive = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["EQUIP_BIND"] = {
	text = EQUIP_NO_DROP,
	button1 = OKAY,
	button2 = CANCEL,
	OnAccept = function(self, slot)
		EquipPendingItem(slot);
	end,
	OnCancel = function(self, slot)
		CancelPendingEquip(slot);
	end,
	OnHide = function(self, slot)
		CancelPendingEquip(slot);
	end,
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["EQUIP_BIND_TRADEABLE"] = {
	text = END_BOUND_TRADEABLE,
	button1 = OKAY,
	button2 = CANCEL,
	OnAccept = function(self, slot)
		EquipPendingItem(slot);
	end,
	OnCancel = function(self, slot)
		CancelPendingEquip(slot);
	end,
	OnHide = function(self, slot)
		CancelPendingEquip(slot);
	end,
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["USE_BIND"] = {
	text = USE_NO_DROP,
	button1 = OKAY,
	button2 = CANCEL,
	OnAccept = function(self)
		ConfirmBindOnUse();
	end,
	timeout = 0,
	exclusive = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["CONFIM_BEFORE_USE"] = {
	text = CONFIRM_ITEM_USE,
	button1 = OKAY,
	button2 = CANCEL,
	OnAccept = function(self)
		ConfirmOnUse();
	end,
	timeout = 0,
	exclusive = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["DELETE_ITEM"] = {
	text = DELETE_ITEM,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		DeleteCursorItem();
	end,
	OnCancel = function (self)
		ClearCursor();
	end,
	OnUpdate = function (self)
		if ( not CursorHasItem() ) then
			self:Hide();
		end
	end,
	OnHide = function()
		MerchantFrame_ResetRefundItem();
	end,
	timeout = 0,
	whileDead = 1,
	exclusive = 1,
	showAlert = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["DELETE_QUEST_ITEM"] = {
	text = DELETE_QUEST_ITEM,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		DeleteCursorItem();
	end,
	OnCancel = function (self)
		ClearCursor();
	end,
	OnUpdate = function (self)
		if ( not CursorHasItem() ) then
			self:Hide();
		end
	end,
	OnHide = function()
		MerchantFrame_ResetRefundItem();
	end,
	timeout = 0,
	whileDead = 1,
	exclusive = 1,
	showAlert = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["DELETE_GOOD_ITEM"] = {
	text = DELETE_GOOD_ITEM,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		DeleteCursorItem();
	end,
	OnCancel = function (self)
		ClearCursor();
	end,
	OnUpdate = function (self)
		if ( not CursorHasItem() ) then
			self:Hide();
		end
	end,
	timeout = 0,
	whileDead = 1,
	exclusive = 1,
	showAlert = 1,
	hideOnEscape = 1,
	hasEditBox = 1,
	maxLetters = 32,
	OnShow = function(self)
		self.button1:Disable();
		self.button2:Enable();
		self.editBox:SetFocus();
	end,
	OnHide = function(self)
		ChatEdit_FocusActiveWindow();
		self.editBox:SetText("");
		MerchantFrame_ResetRefundItem();
	end,
	EditBoxOnEnterPressed = function(self)
		if ( self:GetParent().button1:IsEnabled() ) then
			DeleteCursorItem();
			self:GetParent():Hide();
		end
	end,
	EditBoxOnTextChanged = function (self)
		local parent = self:GetParent();
		if ( strupper(parent.editBox:GetText()) ==  DELETE_ITEM_CONFIRM_STRING ) then
			parent.button1:Enable();
		else
			parent.button1:Disable();
		end
	end,
	EditBoxOnEscapePressed = function(self)
		self:GetParent():Hide();
		ClearCursor();
	end
};
StaticPopupDialogs["DELETE_GOOD_QUEST_ITEM"] = {
	text = DELETE_GOOD_QUEST_ITEM,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		DeleteCursorItem();
	end,
	OnCancel = function (self)
		ClearCursor();
	end,
	OnUpdate = function (self)
		if ( not CursorHasItem() ) then
			self:Hide();
		end
	end,
	timeout = 0,
	whileDead = 1,
	exclusive = 1,
	showAlert = 1,
	hideOnEscape = 1,
	hasEditBox = 1,
	maxLetters = 32,
	OnShow = function(self)
		self.button1:Disable();
		self.button2:Enable();
		self.editBox:SetFocus();
	end,
	OnHide = function(self)
		ChatEdit_FocusActiveWindow();
		self.editBox:SetText("");
		MerchantFrame_ResetRefundItem();
	end,
	EditBoxOnEnterPressed = function(self)
		if ( self:GetParent().button1:IsEnabled() ) then
			DeleteCursorItem();
			self:GetParent():Hide();
		end
	end,
	EditBoxOnTextChanged = function (self)
		local parent = self:GetParent();
		if ( strupper(parent.editBox:GetText()) ==  DELETE_ITEM_CONFIRM_STRING ) then
			parent.button1:Enable();
		else
			parent.button1:Disable();
		end
	end,
	EditBoxOnEscapePressed = function(self)
		self:GetParent():Hide();
		ClearCursor();
	end
};
StaticPopupDialogs["QUEST_ACCEPT"] = {
	text = QUEST_ACCEPT,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		ConfirmAcceptQuest();
	end,
	timeout = 0,
	exclusive = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["QUEST_ACCEPT_LOG_FULL"] = {
	text = QUEST_ACCEPT_LOG_FULL,
	button1 = YES,
	button2 = NO,
	OnShow = function(self)
		self.button1:Disable();
	end,
	OnAccept = function(self)
		ConfirmAcceptQuest();
	end,
	timeout = 0,
	hideOnEscape = 1
};
StaticPopupDialogs["ABANDON_PET"] = {
	text = ABANDON_PET,
	button1 = OKAY,
	button2 = CANCEL,
	OnAccept = function(self)
		PetAbandon();
	end,
	OnUpdate = function(self, elapsed)
		if ( not UnitExists("pet") ) then
			self:Hide();
		end
	end,
	timeout = 0,
	exclusive = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["ABANDON_QUEST"] = {
	text = ABANDON_QUEST_CONFIRM,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		AbandonQuest();
		if ( QuestLogPopupDetailFrame:IsShown() ) then
			HideUIPanel(QuestLogPopupDetailFrame);
		end
		PlaySound("igQuestLogAbandonQuest");
	end,
	timeout = 0,
	whileDead = 1,
	exclusive = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["ABANDON_QUEST_WITH_ITEMS"] = {
	text = ABANDON_QUEST_CONFIRM_WITH_ITEMS,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		AbandonQuest();
		if ( QuestLogPopupDetailFrame:IsShown() ) then
			HideUIPanel(QuestLogPopupDetailFrame);
		end
		PlaySound("igQuestLogAbandonQuest");
	end,
	timeout = 0,
	whileDead = 1,
	exclusive = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["ADD_FRIEND"] = {
	text = ADD_FRIEND_LABEL,
	button1 = ACCEPT,
	button2 = CANCEL,
	hasEditBox = 1,
	autoCompleteParams = AUTOCOMPLETE_LIST.ADDFRIEND,
	maxLetters = 12 + 1 + 64,
	OnAccept = function(self)
		AddFriend(self.editBox:GetText());
	end,
	OnShow = function(self)
		self.editBox:SetFocus();
	end,
	OnHide = function(self)
		ChatEdit_FocusActiveWindow();
		self.editBox:SetText("");
	end,
	EditBoxOnEnterPressed = function(self)
		local parent = self:GetParent();
		AddFriend(parent.editBox:GetText());
		parent:Hide();
	end,
	EditBoxOnEscapePressed = function(self)
		self:GetParent():Hide();
	end,
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["SET_FRIENDNOTE"] = {
	text = SET_FRIENDNOTE_LABEL,
	button1 = ACCEPT,
	button2 = CANCEL,
	hasEditBox = 1,
	maxLetters = 48,
	countInvisibleLetters = true,
	editBoxWidth = 350,
	OnAccept = function(self)
		SetFriendNotes(FriendsFrame.NotesID, self.editBox:GetText());
	end,
	OnShow = function(self)
		local name, level, class, area, connected, status, note = GetFriendInfo(FriendsFrame.NotesID);
		if ( note ) then
			self.editBox:SetText(note);
		end
		self.editBox:SetFocus();
	end,
	OnHide = function(self)
		ChatEdit_FocusActiveWindow();
		self.editBox:SetText("");
	end,
	EditBoxOnEnterPressed = function(self)
		local parent = self:GetParent();
		SetFriendNotes(FriendsFrame.NotesID, parent.editBox:GetText());
		parent:Hide();
	end,
	EditBoxOnEscapePressed = function(self)
		self:GetParent():Hide();
	end,
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["SET_BNFRIENDNOTE"] = {
	text = SET_FRIENDNOTE_LABEL,
	button1 = ACCEPT,
	button2 = CANCEL,
	hasEditBox = 1,
	maxLetters = 127,
	countInvisibleLetters = true,
	editBoxWidth = 350,
	OnAccept = function(self)
		BNSetFriendNote(FriendsFrame.NotesID, self.editBox:GetText());
	end,
	OnShow = function(self)
		local bnetIDAccount, accountName, battleTag, isBattleTag, characterName, bnetIDGameAccount, client, isOnline, lastOnline, isAFK, isDND, messageText, noteText = BNGetFriendInfoByID(FriendsFrame.NotesID);
		if ( noteText ) then
			self.editBox:SetText(noteText);
		end
		self.editBox:SetFocus();
	end,
	OnHide = function(self)
		ChatEdit_FocusActiveWindow();
		self.editBox:SetText("");
	end,
	EditBoxOnEnterPressed = function(self)
		local parent = self:GetParent();
		BNSetFriendNote(FriendsFrame.NotesID, parent.editBox:GetText());
		parent:Hide();
	end,
	EditBoxOnEscapePressed = function(self)
		self:GetParent():Hide();
	end,
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["ADD_IGNORE"] = {
	text = ADD_IGNORE_LABEL,
	button1 = ACCEPT,
	button2 = CANCEL,
	hasEditBox = 1,
	autoCompleteParams = AUTOCOMPLETE_LIST.IGNORE,
	maxLetters = 12 + 1 + 64, --name space realm (77 max)
	OnAccept = function(self)
		AddIgnore(self.editBox:GetText());
	end,
	OnShow = function(self)
		self.editBox:SetFocus();
	end,
	OnHide = function(self)
		ChatEdit_FocusActiveWindow();
		self.editBox:SetText("");
	end,
	EditBoxOnEnterPressed = function(self)
		local parent = self:GetParent();
		AddIgnore(parent.editBox:GetText());
		parent:Hide();
	end,
	EditBoxOnEscapePressed = function(self)
		self:GetParent():Hide();
	end,
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["ADD_MUTE"] = {
	text = ADD_MUTE_LABEL,
	button1 = ACCEPT,
	button2 = CANCEL,
	hasEditBox = 1,
	maxLetters = 77,
	OnAccept = function(self)
		AddMute(self.editBox:GetText());
	end,
	OnShow = function(self)
		self.editBox:SetFocus();
	end,
	OnHide = function(self)
		ChatEdit_FocusActiveWindow();
		self.editBox:SetText("");
	end,
	EditBoxOnEnterPressed = function(self)
		local parent = self:GetParent();
		AddMute(parent.editBox:GetText());
		parent:Hide();
	end,
	EditBoxOnEscapePressed = function(self)
		self:GetParent():Hide();
	end,
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["ADD_GUILDMEMBER"] = {
	text = ADD_GUILDMEMBER_LABEL,
	button1 = ACCEPT,
	button2 = CANCEL,
	hasEditBox = 1,
	autoCompleteParams = AUTOCOMPLETE_LIST.GUILD_INVITE,
	maxLetters = 77,
	OnAccept = function(self)
		GuildInvite(self.editBox:GetText());
	end,
	OnShow = function(self)
		self.editBox:SetFocus();
	end,
	OnHide = function(self)
		ChatEdit_FocusActiveWindow();
		self.editBox:SetText("");
	end,
	EditBoxOnEnterPressed = function(self)
		local parent = self:GetParent();
		GuildInvite(parent.editBox:GetText());
		parent:Hide();
	end,
	EditBoxOnEscapePressed = function(self)
		self:GetParent():Hide();
	end,
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["ADD_RAIDMEMBER"] = {
	text = ADD_RAIDMEMBER_LABEL,
	button1 = ACCEPT,
	button2 = CANCEL,
	hasEditBox = 1,
	autoCompleteParams = AUTOCOMPLETE_LIST.INVITE,
	maxLetters = 77,
	OnAccept = function(self)
		InviteToGroup(self.editBox:GetText());
	end,
	OnShow = function(self)
		self.editBox:SetFocus();
	end,
	OnHide = function(self)
		ChatEdit_FocusActiveWindow();
		self.editBox:SetText("");
	end,
	EditBoxOnEnterPressed = function(self)
		local parent = self:GetParent();
		InviteToGroup(parent.editBox:GetText());
		parent:Hide();
	end,
	EditBoxOnEscapePressed = function(self)
		self:GetParent():Hide();
	end,
	timeout = 0,
	exclusive = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["CONVERT_TO_RAID"] = {
	text = CONVERT_TO_RAID_LABEL,
	button1 = CONVERT,
	button2 = CANCEL,
	OnAccept = function(self, data)
		ConvertToRaid();
		InviteUnit(data);
	end,
	timeout = 0,
	exclusive = 1,
	hideOnEscape = 1,
	showAlert = 1
};
StaticPopupDialogs["LFG_LIST_AUTO_ACCEPT_CONVERT_TO_RAID"] = {
	text = CONVERT_TO_RAID_LABEL,
	button1 = CONVERT,
	button2 = CANCEL,
	OnAccept = function(self, data)
		ConvertToRaid();
	end,
	timeout = 0,
	exclusive = 1,
	hideOnEscape = 1,
	showAlert = 1
};
StaticPopupDialogs["REMOVE_GUILDMEMBER"] = {
	text = format(REMOVE_GUILDMEMBER_LABEL, "XXX"),
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		GuildUninvite(GuildFrame.selectedName);
		GuildMemberDetailFrame:Hide();
	end,
	OnShow = function(self)
		self.text:SetFormattedText(REMOVE_GUILDMEMBER_LABEL, GuildFrame.selectedName);
	end,
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["SET_GUILDPLAYERNOTE"] = {
	text = SET_GUILDPLAYERNOTE_LABEL,
	button1 = ACCEPT,
	button2 = CANCEL,
	hasEditBox = 1,
	maxLetters = 31,
	editBoxWidth = 260,
	OnAccept = function(self)
		GuildRosterSetPublicNote(GetGuildRosterSelection(), self.editBox:GetText());
	end,
	OnShow = function(self)
		--Sets the text to the 7th return from GetGuildRosterInfo(GetGuildRosterSelection());
		self.editBox:SetText(select(7, GetGuildRosterInfo(GetGuildRosterSelection())));
		self.editBox:SetFocus();
	end,
	OnHide = function(self)
		ChatEdit_FocusActiveWindow();
		self.editBox:SetText("");
	end,
	EditBoxOnEnterPressed = function(self)
		local parent = self:GetParent();
		GuildRosterSetPublicNote(GetGuildRosterSelection(), parent.editBox:GetText());
		parent:Hide();
	end,
	EditBoxOnEscapePressed = function(self)
		self:GetParent():Hide();
	end,
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["SET_GUILDOFFICERNOTE"] = {
	text = SET_GUILDOFFICERNOTE_LABEL,
	button1 = ACCEPT,
	button2 = CANCEL,
	hasEditBox = 1,
	maxLetters = 31,
	editBoxWidth = 260,
	OnAccept = function(self)
		GuildRosterSetOfficerNote(GetGuildRosterSelection(), self.editBox:GetText());
	end,
	OnShow = function(self)
		local fullName, rank, rankIndex, level, class, zone, note, officernote, online = GetGuildRosterInfo(GetGuildRosterSelection());

		self.editBox:SetText(select(8, GetGuildRosterInfo(GetGuildRosterSelection())));
		self.editBox:SetFocus();
	end,
	OnHide = function(self)
		ChatEdit_FocusActiveWindow();
		self.editBox:SetText("");
	end,
	EditBoxOnEnterPressed = function(self)
		local parent = self:GetParent();
		GuildRosterSetOfficerNote(GetGuildRosterSelection(), parent.editBox:GetText());
		parent:Hide();
	end,
	EditBoxOnEscapePressed = function(self)
		self:GetParent():Hide();
	end,
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["RENAME_PET"] = {
	text = PET_RENAME_LABEL,
	button1 = ACCEPT,
	button2 = CANCEL,
	hasEditBox = 1,
	maxLetters = 12,
	OnAccept = function(self)
		local text = self.editBox:GetText();
		local dialogFrame = StaticPopup_Show("PETRENAMECONFIRM", text);
		if ( dialogFrame ) then
			dialogFrame.data = text;
		end
	end,
	EditBoxOnEnterPressed = function(self)
		local parent = self:GetParent();
		local text = parent.editBox:GetText();
		local dialogFrame = StaticPopup_Show("PETRENAMECONFIRM", text);
		if ( dialogFrame ) then
			dialogFrame.data = text;
		end
		parent:Hide();
	end,
	OnShow = function(self)
		self.editBox:SetFocus();
	end,
	OnHide = function(self)
		ChatEdit_FocusActiveWindow();
		self.editBox:SetText("");
	end,
	OnUpdate = function(self, elapsed)
		if ( not UnitExists("pet") ) then
			self:Hide();
		end
	end,
	timeout = 0,
	exclusive = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["DUEL_REQUESTED"] = {
	text = DUEL_REQUESTED,
	button1 = ACCEPT,
	button2 = DECLINE,
	sound = "igPlayerInvite",
	OnAccept = function(self)
		AcceptDuel();
	end,
	OnCancel = function(self)
		CancelDuel();
	end,
	timeout = STATICPOPUP_TIMEOUT,
	hideOnEscape = 1
};
StaticPopupDialogs["DUEL_OUTOFBOUNDS"] = {
	text = DUEL_OUTOFBOUNDS_TIMER,
	timeout = 10,
};
StaticPopupDialogs["PET_BATTLE_PVP_DUEL_REQUESTED"] = {
	text = PET_BATTLE_PVP_DUEL_REQUESTED,
	button1 = ACCEPT,
	button2 = DECLINE,
	sound = "igPlayerInvite",
	OnAccept = function(self)
		C_PetBattles.AcceptPVPDuel();
	end,
	OnCancel = function(self)
		C_PetBattles.CancelPVPDuel();
	end,
	timeout = STATICPOPUP_TIMEOUT,
	hideOnEscape = 1
};
StaticPopupDialogs["UNLEARN_SKILL"] = {
	text = UNLEARN_SKILL,
	button1 = UNLEARN,
	button2 = CANCEL,
	OnAccept = function(self, index)
		AbandonSkill(index);
		if TradeSkillFrame then
			HideUIPanel(TradeSkillFrame);
		end
	end,
	timeout = STATICPOPUP_TIMEOUT,
	exclusive = 1,
	whileDead = 1,
	showAlert = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["UNLEARN_SPECIALIZATION"] = {
	text = UNLEARN_SKILL,
	button1 = UNLEARN,
	button2 = CANCEL,
	OnAccept = function(self, index)
		UnlearnSpecialization(index);
	end,
	timeout = STATICPOPUP_TIMEOUT,
	exclusive = 1,
	whileDead = 1,
	showAlert = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["XP_LOSS"] = {
	text = CONFIRM_XP_LOSS,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self, data)
		if ( data ) then
			self.text:SetFormattedText(CONFIRM_XP_LOSS_AGAIN, data);
			self.data = nil;
			return 1;
		else
			AcceptXPLoss();
		end
	end,
	OnUpdate = function(self, elapsed)
		if ( not CheckSpiritHealerDist() ) then
			self:Hide();
			CloseGossip();
		end
	end,
	OnCancel = function(self)
		CloseGossip();
	end,
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
	showAlert = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["XP_LOSS_NO_DURABILITY"] = {
	text = CONFIRM_XP_LOSS_NO_DURABILITY,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self, data)
		if ( data ) then
			self.text:SetFormattedText(CONFIRM_XP_LOSS_AGAIN_NO_DURABILITY, data);
			self.data = nil;
			return 1;
		else
			AcceptXPLoss();
		end
	end,
	OnUpdate = function(self, elapsed)
		if ( not CheckSpiritHealerDist() ) then
			self:Hide();
			CloseGossip();
		end
	end,
	OnCancel = function(self)
		CloseGossip();
	end,
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
	showAlert = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["XP_LOSS_NO_SICKNESS"] = {
	text = CONFIRM_XP_LOSS_NO_SICKNESS,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self, data)
		if ( data ) then
			self.text:SetText(CONFIRM_XP_LOSS_AGAIN_NO_SICKNESS);
			self.data = nil;
			return 1;
		else
			AcceptXPLoss();
		end
	end,
	OnUpdate = function(self, dialog)
		if ( not CheckSpiritHealerDist() ) then
			self:Hide();
			CloseGossip();
		end
	end,
	OnCancel = function(self)
		CloseGossip();
	end,
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
	showAlert = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["XP_LOSS_NO_SICKNESS_NO_DURABILITY"] = {
	text = CONFIRM_XP_LOSS_NO_SICKNESS_NO_DURABILITY,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self, data)
		AcceptXPLoss();
	end,
	OnUpdate = function(self, dialog)
		if ( not CheckSpiritHealerDist() ) then
			self:Hide();
			CloseGossip();
		end
	end,
	OnCancel = function(self)
		CloseGossip();
	end,
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
	showAlert = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["RECOVER_CORPSE"] = {
	StartDelay = GetCorpseRecoveryDelay,
	delayText = RECOVER_CORPSE_TIMER,
	text = RECOVER_CORPSE,
	button1 = ACCEPT,
	OnAccept = function(self)
		RetrieveCorpse();
		return 1;
	end,
	timeout = 0,
	whileDead = 1,
	interruptCinematic = 1,
	notClosableByLogout = 1
};
StaticPopupDialogs["RECOVER_CORPSE_INSTANCE"] = {
	text = RECOVER_CORPSE_INSTANCE,
	timeout = 0,
	whileDead = 1,
	interruptCinematic = 1,
	notClosableByLogout = 1
};

StaticPopupDialogs["AREA_SPIRIT_HEAL"] = {
	text = AREA_SPIRIT_HEAL,
	button1 = CHOOSE_LOCATION,
	button2 = CANCEL,
	OnShow = function(self)
		self.timeleft = GetAreaSpiritHealerTime();
	end,
	OnAccept = function(self)
		ShowUIPanel(WorldMapFrame);
		return true;	--Don't close this popup.
	end,
	OnCancel = function(self)
		CancelAreaSpiritHeal();
	end,
	DisplayButton1 = function(self)
		return IsCemeterySelectionAvailable();
	end,
	timeout = 0,
	whileDead = 1,
	interruptCinematic = 1,
	notClosableByLogout = 1,
	hideOnEscape = 1,
	timeoutInformationalOnly = 1,
	noCancelOnReuse = 1
};

StaticPopupDialogs["BIND_ENCHANT"] = {
	text = BIND_ENCHANT,
	button1 = OKAY,
	button2 = CANCEL,
	OnAccept = function(self)
		BindEnchant();
	end,
	timeout = 0,
	exclusive = 1,
	showAlert = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["ACTION_WILL_BIND_ITEM"] = {
	text = ACTION_WILL_BIND_ITEM,
	button1 = OKAY,
	button2 = CANCEL,
	OnAccept = function(self)
		ActionBindsItem();
	end,
	timeout = 0,
	exclusive = 1,
	showAlert = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["REPLACE_ENCHANT"] = {
	text = REPLACE_ENCHANT,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		ReplaceEnchant();
	end,
	timeout = 0,
	exclusive = 1,
	showAlert = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["TRADE_REPLACE_ENCHANT"] = {
	text = REPLACE_ENCHANT,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		ReplaceTradeEnchant();
	end,
	timeout = 0,
	exclusive = 1,
	showAlert = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["TRADE_POTENTIAL_BIND_ENCHANT"] = {
	text = TRADE_POTENTIAL_BIND_ENCHANT,
	button1 = OKAY,
	button2 = CANCEL,
	OnShow = function(self)
		TradeFrameTradeButton:Disable();
	end,
	OnHide = function(self)
		TradeFrameTradeButton_SetToEnabledState();
	end,
	OnCancel = function(self)
		ClickTradeButton(TRADE_ENCHANT_SLOT, true);
	end,
	timeout = 0,
	showAlert = 1,
	hideOnEscape = 1,
	noCancelOnReuse = 1
};
StaticPopupDialogs["TRADE_POTENTIAL_REMOVE_TRANSMOG"] = {
	text = TRADE_POTENTIAL_REMOVE_TRANSMOG,
	button1 = OKAY,
	timeout = 0,
	showAlert = 1,
	hideOnEscape = 1,
};
StaticPopupDialogs["CONFIRM_MERCHANT_TRADE_TIMER_REMOVAL"] = {
	text = CONFIRM_MERCHANT_TRADE_TIMER_REMOVAL,
	button1 = OKAY,
	button2 = CANCEL,
	OnAccept = function(self)
		SellCursorItem();
	end,
	OnCancel = function(self)
		ClearCursor();
	end,
	OnUpdate = function (self)
		if ( not CursorHasItem() ) then
			self:Hide();
		end
	end,
	timeout = 0,
	showAlert = 1,
	hideOnEscape = 1,
};
StaticPopupDialogs["END_BOUND_TRADEABLE"] = {
	text = END_BOUND_TRADEABLE,
	button1 = OKAY,
	button2 = CANCEL,
	OnAccept = function(self)
		EndBoundTradeable(self.data);
	end,
	timeout = 0,
	exclusive = 1,
	showAlert = 1,
	hideOnEscape = 1,
};
StaticPopupDialogs["INSTANCE_BOOT"] = {
	text = INSTANCE_BOOT_TIMER,
	OnShow = function(self)
		self.timeleft = GetInstanceBootTimeRemaining();
		if ( self.timeleft <= 0 ) then
			self:Hide();
		end
	end,
	timeout = 0,
	whileDead = 1,
	interruptCinematic = 1,
	notClosableByLogout = 1
};
StaticPopupDialogs["GARRISON_BOOT"] = {
	text = GARRISON_BOOT_TIMER,
	OnShow = function(self)
		self.timeleft = GetInstanceBootTimeRemaining();
		if ( self.timeleft <= 0 ) then
			self:Hide();
		end
	end,
	timeout = 0,
	whileDead = 1,
	interruptCinematic = 1,
	notClosableByLogout = 1
};
StaticPopupDialogs["INSTANCE_LOCK"] = {
	-- we use a custom timer called lockTimeleft in here to avoid special casing the static popup code
	-- if you use timeout or timeleft then you will go through the StaticPopup system's standard OnUpdate
	-- code which we don't want for this dialog
	text = INSTANCE_LOCK_TIMER,
	button1 = ACCEPT,
	button2 = INSTANCE_LEAVE,
	OnShow = function(self)
		local enforceTime = self.data;
		local lockTimeleft, isPreviousInstance = GetInstanceLockTimeRemaining();
		if ( enforceTime and lockTimeleft <= 0 ) then
			self:Hide();
			return;
		end
		self.lockTimeleft = lockTimeleft;
		self.isPreviousInstance = isPreviousInstance;

		local type, difficulty;
		self.name, type, difficulty, self.difficultyName = GetInstanceInfo();

		self.extraFrame:SetAllPoints(self.text)
		self.extraFrame:Show()
		self.extraFrame:SetScript("OnEnter", InstanceLock_OnEnter)
		self.extraFrame:SetScript("OnLeave", GameTooltip_Hide)

		if ( not enforceTime ) then
			local name = GetDungeonNameWithDifficulty(self.name, self.difficultyName);
			local text = _G[self:GetName().."Text"];
			local lockstring = string.format((self.isPreviousInstance and INSTANCE_LOCK_WARNING_PREVIOUSLY_SAVED or INSTANCE_LOCK_WARNING), name, SecondsToTime(ceil(lockTimeleft), nil, 1));
			local time, extending;
			time, extending, self.extraFrame.encountersTotal, self.extraFrame.encountersComplete = GetInstanceLockTimeRemaining();
			local bosses = string.format(BOSSES_KILLED, self.extraFrame.encountersComplete, self.extraFrame.encountersTotal);
			text:SetFormattedText(INSTANCE_LOCK_SEPARATOR, lockstring, bosses);
			StaticPopup_Resize(self, "INSTANCE_LOCK");
		end

	end,
	OnHide = function(self)
		self.extraFrame:SetScript("OnEnter", nil)
		self.extraFrame:SetScript("OnLeave", nil)
	end,
	OnUpdate = function(self, elapsed)
		local enforceTime = self.data;
		if ( enforceTime ) then
			local lockTimeleft = self.lockTimeleft - elapsed;
			if ( lockTimeleft <= 0 ) then
				local OnCancel = StaticPopupDialogs["INSTANCE_LOCK"].OnCancel;
				if ( OnCancel ) then
					OnCancel(self, nil, "timeout");
				end
				self:Hide();
				return;
			end
			self.lockTimeleft = lockTimeleft;

			local name = GetDungeonNameWithDifficulty(self.name, self.difficultyName);

			-- Set dialog message using information that describes which bosses are still around
			local text = _G[self:GetName().."Text"];
			local lockstring = string.format((self.isPreviousInstance and INSTANCE_LOCK_TIMER_PREVIOUSLY_SAVED or INSTANCE_LOCK_TIMER), name, SecondsToTime(ceil(lockTimeleft), nil, 1));
			local time, extending;
			time, extending, self.extraFrame.encountersTotal, self.extraFrame.encountersComplete = GetInstanceLockTimeRemaining();
			local bosses = string.format(BOSSES_KILLED, self.extraFrame.encountersComplete, self.extraFrame.encountersTotal);
			text:SetFormattedText(INSTANCE_LOCK_SEPARATOR, lockstring, bosses);

			-- make sure the dialog fits the text
			StaticPopup_Resize(self, "INSTANCE_LOCK");
		end
	end,
	OnAccept = function(self)
		RespondInstanceLock(true);
		self.name, self.difficultyName = nil, nil;
		self.lockTimeleft = nil;
	end,
	OnCancel = function(self, data, reason)
		if ( reason == "timeout" ) then
			self:Hide();
			return;
		end
		RespondInstanceLock(false);
		self.name, self.difficultyName = nil, nil;
		self.lockTimeleft = nil;
	end,
	DisplayButton2 = function(self)
		return self.data;
	end,
	timeout = 0,
	showAlert = 1,
	whileDead = 1,
	interruptCinematic = 1,
	notClosableByLogout = 1,
	noCancelOnReuse = 1,
};

StaticPopupDialogs["CONFIRM_TALENT_WIPE"] = {
	text = CONFIRM_TALENT_WIPE,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self)
		ConfirmTalentWipe();
	end,
	OnUpdate = function(self, elapsed)
		if ( not CheckTalentMasterDist() ) then
			self:Hide();
		end
	end,
	OnCancel = function(self)
		if ( PlayerTalentFrame ) then
			HideUIPanel(PlayerTalentFrame);
		end
	end,
	hasMoneyFrame = 1,
	exclusive = 1,
	timeout = 0,
	hideOnEscape = 1
};
StaticPopupDialogs["CONFIRM_BINDER"] = {
	text = CONFIRM_BINDER,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self)
		ConfirmBinder();
	end,
	OnUpdate = function(self, elapsed)
		if ( not CheckBinderDist() ) then
			self:Hide();
		end
	end,
	timeout = 0,
	hideOnEscape = 1
};
StaticPopupDialogs["CONFIRM_SUMMON"] = {
	text = CONFIRM_SUMMON;
	button1 = ACCEPT,
	button2 = CANCEL,
	OnShow = function(self)
		self.timeleft = GetSummonConfirmTimeLeft();
	end,
	OnAccept = function(self)
		ConfirmSummon();
	end,
	OnCancel = function()
		CancelSummon();
	end,
	OnUpdate = function(self, elapsed)
		if ( UnitAffectingCombat("player") or (not PlayerCanTeleport()) ) then
			self.button1:Disable();
		else
			self.button1:Enable();
		end
	end,
	timeout = 0,
	interruptCinematic = 1,
	notClosableByLogout = 1,
	hideOnEscape = 1,
};

StaticPopupDialogs["CONFIRM_SUMMON_SCENARIO"] = {
	text = CONFIRM_SUMMON_SCENARIO;
	button1 = ACCEPT,
	button2 = CANCEL,
	OnShow = function(self)
		self.timeleft = GetSummonConfirmTimeLeft();
	end,
	OnAccept = function(self)
		ConfirmSummon();
	end,
	OnCancel = function()
		CancelSummon();
	end,
	OnUpdate = function(self, elapsed)
		if ( UnitAffectingCombat("player") or (not PlayerCanTeleport()) ) then
			self.button1:Disable();
		else
			self.button1:Enable();
		end
	end,
	timeout = 0,
	interruptCinematic = 1,
	notClosableByLogout = 1,
	hideOnEscape = 1,
};

-- Summon dialog when being summoned when in a starting area
StaticPopupDialogs["CONFIRM_SUMMON_STARTING_AREA"] = {
	text = CONFIRM_SUMMON_STARTING_AREA,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnShow = function(self)
		self.timeleft = GetSummonConfirmTimeLeft();
	end,
	OnAccept = function(self)
		ConfirmSummon();
	end,
	OnCancel = function()
		CancelSummon();
	end,
	OnUpdate = function(self, elapsed)
		if ( UnitAffectingCombat("player") or (not PlayerCanTeleport()) ) then
			self.button1:Disable();
		else
			self.button1:Enable();
		end
	end,
	timeout = 0,
	interruptCinematic = 1,
	notClosableByLogout = 1,
	hideOnEscape = 1,
	showAlert = 1,
};

StaticPopupDialogs["BILLING_NAG"] = {
	text = BILLING_NAG_DIALOG;
	button1 = OKAY,
	timeout = 0,
	showAlert = 1
};
StaticPopupDialogs["IGR_BILLING_NAG"] = {
	text = IGR_BILLING_NAG_DIALOG;
	button1 = OKAY,
	timeout = 0,
	showAlert = 1
};
StaticPopupDialogs["CONFIRM_LOOT_ROLL"] = {
	text = LOOT_NO_DROP,
	button1 = OKAY,
	button2 = CANCEL,
	OnAccept = function(self, id, rollType)
		ConfirmLootRoll(id, rollType);
	end,
	timeout = 0,
	whileDead = 1,
	exclusive = 1,
	hideOnEscape = 1,
	showAlert = 1
};
StaticPopupDialogs["GOSSIP_CONFIRM"] = {
	text = "%s",
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self, data)
		SelectGossipOption(data, "", true);
	end,
	hasMoneyFrame = 1,
	timeout = 0,
	exclusive = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["GOSSIP_ENTER_CODE"] = {
	text = ENTER_CODE,
	button1 = ACCEPT,
	button2 = CANCEL,
	hasEditBox = 1,
	OnAccept = function(self, data)
		SelectGossipOption(data, self.editBox:GetText(), true);
	end,
	OnShow = function(self)
		self.editBox:SetFocus();
	end,
	OnHide = function(self)
		ChatEdit_FocusActiveWindow();
		self.editBox:SetText("");
	end,
	EditBoxOnEnterPressed = function(self, data)
		local parent = self:GetParent();
		SelectGossipOption(data, parent.editBox:GetText());
		parent:Hide();
	end,
	EditBoxOnEscapePressed = function(self)
		self:GetParent():Hide();
	end,
	timeout = 0,
	exclusive = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["CREATE_COMBAT_FILTER"] = {
	text = ENTER_FILTER_NAME,
	button1 = ACCEPT,
	button2 = CANCEL,
	whileDead = 1,
	hasEditBox = 1,
	maxLetters = 32,
	OnAccept = function(self)
		CombatConfig_CreateCombatFilter(self.editBox:GetText());
	end,
	timeout = 0,
	EditBoxOnEnterPressed = function(self, data)
		local parent = self:GetParent();
		CombatConfig_CreateCombatFilter(parent.editBox:GetText());
		parent:Hide();
	end,
	EditBoxOnEscapePressed = function (self)
		self:GetParent():Hide();
	end,
	OnHide = function (self)
		self.editBox:SetText("");
	end,
	hideOnEscape = 1
};
StaticPopupDialogs["COPY_COMBAT_FILTER"] = {
	text = ENTER_FILTER_NAME,
	button1 = ACCEPT,
	button2 = CANCEL,
	whileDead = 1,
	hasEditBox = 1,
	maxLetters = 32,
	OnAccept = function(self)
		CombatConfig_CreateCombatFilter(self.editBox:GetText(), self.data);
	end,
	timeout = 0,
	EditBoxOnEnterPressed = function(self)
		local parent = self:GetParent();
		CombatConfig_CreateCombatFilter(parent.editBox:GetText(), parent.data);
		parent:Hide();
	end,
	EditBoxOnEscapePressed = function (self)
		self:GetParent():Hide();
	end,
	OnHide = function (self)
		self.editBox:SetText("");
	end,
	hideOnEscape = 1
};
StaticPopupDialogs["CONFIRM_COMBAT_FILTER_DELETE"] = {
	text = CONFIRM_COMBAT_FILTER_DELETE,
	button1 = OKAY,
	button2 = CANCEL,
	OnAccept = function(self)
		CombatConfig_DeleteCurrentCombatFilter();
	end,
	timeout = 0,
	whileDead = 1,
	exclusive = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["CONFIRM_COMBAT_FILTER_DEFAULTS"] = {
	text = CONFIRM_COMBAT_FILTER_DEFAULTS,
	button1 = OKAY,
	button2 = CANCEL,
	OnAccept = function(self)
		CombatConfig_SetCombatFiltersToDefault();
	end,
	timeout = 0,
	whileDead = 1,
	exclusive = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["WOW_MOUSE_NOT_FOUND"] = {
	text = WOW_MOUSE_NOT_FOUND,
	button1 = OKAY,
	OnHide = function(self)
		SetCVar("enableWoWMouse", "0");
		if ( InterfaceOptionsFrame:IsShown() ) then
			InterfaceOptionsMousePanelWoWMouse:Click();
		end
	end,
	timeout = 0,
	whileDead = 1,
	showAlert = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["CONFIRM_BUY_STABLE_SLOT"] = {
	text = CONFIRM_BUY_STABLE_SLOT,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		BuyStableSlot();
	end,
	OnShow = function(self)
		MoneyFrame_Update(self.moneyFrame, GetNextStableSlotCost());
	end,
	timeout = 0,
	hideOnEscape = 1,
	hasMoneyFrame = 1,
};

StaticPopupDialogs["TALENTS_INVOLUNTARILY_RESET"] = {
	text = TALENTS_INVOLUNTARILY_RESET,
	button1 = OKAY,
	timeout = 0,
};

StaticPopupDialogs["TALENTS_INVOLUNTARILY_RESET_PET"] = {
	text = TALENTS_INVOLUNTARILY_RESET_PET,
	button1 = OKAY,
	timeout = 0,
};

StaticPopupDialogs["SPEC_INVOLUNTARILY_CHANGED"] = {
	text = SPEC_INVOLUNTARILY_CHANGED,
	button1 = OKAY,
	timeout = 0,
};

StaticPopupDialogs["VOTE_BOOT_PLAYER"] = {
	text = VOTE_BOOT_PLAYER,
	button1 = YES,
	button2 = NO,
	StartDelay = function() return 3 end,
	OnAccept = function(self)
		SetLFGBootVote(true);
	end,
	OnCancel = function(self)
		SetLFGBootVote(false);
	end,
	showAlert = true,
	noCancelOnReuse = 1,
	whileDead = 1,
	interruptCinematic = 1,
	timeout = 0,
};

StaticPopupDialogs["VOTE_BOOT_REASON_REQUIRED"] = {
	text = VOTE_BOOT_REASON_REQUIRED,
	button1 = OKAY,
	button2 = CANCEL,
	hasEditBox = 1,
	maxLetters = 64,
	EditBoxOnEnterPressed = function(self)
		local parent = self:GetParent();
		UninviteUnit(parent.data, self:GetText());
		parent:Hide();
	end,
	EditBoxOnTextChanged = function(self)
		if ( strtrim(self:GetText()) == "" ) then
			self:GetParent().button1:Disable();
		else
			self:GetParent().button1:Enable();
		end
	end,
	OnShow = function(self)
		self.button1:Disable();
	end,
	OnAccept = function(self)
		UninviteUnit(self.data, self.editBox:GetText());
	end,
	timeout = 0,
	whileDead = 1,
	interruptCinematic = 1,
};

StaticPopupDialogs["LAG_SUCCESS"] = {
	text = HELPFRAME_REPORTLAG_TEXT1,
	button1 = OKAY,
	timeout = 0,
}

StaticPopupDialogs["LFG_OFFER_CONTINUE"] = {
	text = LFG_OFFER_CONTINUE,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		PartyLFGStartBackfill();
	end,
	noCancelOnReuse = 1,
	timeout = 0,
}

StaticPopupDialogs["CONFIRM_MAIL_ITEM_UNREFUNDABLE"] = {
	text = END_REFUND,
	button1 = OKAY,
	button2 = CANCEL,
	OnAccept = function(self)
		RespondMailLockSendItem(self.data.slot, true);
	end,
	OnCancel = function(self)
		RespondMailLockSendItem(self.data.slot, false);
	end,
	timeout = 0,
	hasItemFrame = 1,
}

StaticPopupDialogs["AUCTION_HOUSE_DISABLED"] = {
	text = ERR_AUCTION_HOUSE_DISABLED,
	button1 = OKAY,
	timeout = 0,
	showAlertGear = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["CONFIRM_BLOCK_INVITES"] = {
	text = BLOCK_INVITES_CONFIRMATION,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self, inviteID)
		BNSetBlocked(inviteID, true);
		BNDeclineFriendInvite(inviteID);
	end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["BATTLENET_UNAVAILABLE"] = {
	text = BATTLENET_UNAVAILABLE_ALERT,
	button1 = OKAY,
	timeout = 0,
	showAlertGear = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["WEB_PROXY_FAILED"] = {
	text = WEB_PROXY_FAILED,
	button1 = OKAY,
	timeout = 0,
	showAlertGear = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["WEB_ERROR"] = {
	text = WEB_ERROR,
	button1 = OKAY,
	timeout = 0,
	showAlertGear = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["CONFIRM_BNET_REPORT"] = {
	text = "%s",
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function (self)
		BNet_SendReport();
	end,
	hideOnEscape = 1,
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
};

StaticPopupDialogs["CONFIRM_REMOVE_FRIEND"] = {
	text = "%s",
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self, bnetIDAccount)
		BNRemoveFriend(bnetIDAccount);
	end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["PICKUP_MONEY"] = {
	text = AMOUNT_TO_PICKUP,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function(self)
		MoneyInputFrame_PickupPlayerMoney(self.moneyInputFrame);
	end,
	OnHide = function(self)
		MoneyInputFrame_ResetMoney(self.moneyInputFrame);
	end,
	EditBoxOnEnterPressed = function(self)
		local parent = self:GetParent():GetParent();
		MoneyInputFrame_PickupPlayerMoney(parent.moneyInputFrame);
		parent:Hide();
	end,
	hasMoneyInputFrame = 1,
	timeout = 0,
	hideOnEscape = 1
};
StaticPopupDialogs["CONFIRM_GUILD_CHARTER_SIGNATURE"] = {
	text = GUILD_REPUTATION_WARNING_GENERIC.."\n"..CONFIRM_CONTINUE,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		SignPetition();
	end,
	timeout = 0,
	hideOnEscape = 1
};
StaticPopupDialogs["CONFIRM_GUILD_CHARTER_PURCHASE"] = {
	text = GUILD_REPUTATION_WARNING_GENERIC.."\n"..CONFIRM_CONTINUE,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		GuildRegistrar_PurchaseCharter(true);
	end,
	timeout = 0,
	hideOnEscape = 1
};
StaticPopupDialogs["GUILD_DEMOTE_CONFIRM"] = {
	text = "%s",
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		GuildDemote(self.data);
	end,
	timeout = 0,
	exclusive = 1,
	hideOnEscape = 1
};
StaticPopupDialogs["GUILD_PROMOTE_CONFIRM"] = {
	text = "%s",
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		GuildPromote(self.data);
	end,
	timeout = 0,
	exclusive = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["CONFIRM_RANK_AUTHENTICATOR_REMOVE"] = {
	text = "%s",
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		local checkbox = self.data;
		checkbox:SetChecked(false);
		GuildControlUI_CheckClicked(checkbox);
	end,
	timeout = 0,
	showAlert = 1,
	hideOnEscape = 1,
	whileDead = 1,
};
StaticPopupDialogs["VOID_DEPOSIT_CONFIRM"] = {
	text = VOID_STORAGE_DEPOSIT_CONFIRMATION.."\n"..CONFIRM_CONTINUE,
	button1 = OKAY,
	button2 = CANCEL,
	OnAccept = function(self)
		VoidStorage_UpdateTransferButton();
	end,
	OnCancel = function(self)
		VoidStorage_CloseConfirmationDialog(self.data.slot);
	end,
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
	hideOnEscape = 1,
	hasItemFrame = 1
};

StaticPopupDialogs["GUILD_IMPEACH"] = {
	text = GUILD_IMPEACH_POPUP_TEXT ,
	button1 = GUILD_IMPEACH_POPUP_CONFIRM,
	button2 = CANCEL,
	OnAccept = function (self) ReplaceGuildMaster(); end,
	OnCancel = function (self) end,
	hideOnEscape = 1,
	timeout = 0,
	exclusive = 1,
}

StaticPopupDialogs["SPELL_CONFIRMATION_PROMPT" ] = {
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		AcceptSpellConfirmationPrompt(self.data);
	end,
	OnCancel = function(self)
		DeclineSpellConfirmationPrompt(self.data);
	end,
	exclusive = 0,
	whileDead = 1,
	hideOnEscape = 1
}

StaticPopupDialogs["SPELL_CONFIRMATION_WARNING" ] = {
	button1 = OKAY,
	OnAccept = function(self)
		AcceptSpellConfirmationPrompt(self.data);
	end,
	exclusive = 0,
	whileDead = 1,
	hideOnEscape = 1
}

StaticPopupDialogs["CONFIRM_LAUNCH_URL"] = {
	text = CONFIRM_LAUNCH_URL,
	button1 = OKAY,
	button2 = CANCEL,
	OnAccept = function(self, data) LoadURLIndex(data.index, data.mapID); end,
	hideOnEscape = 1,
	timeout = 0,
}

StaticPopupDialogs["CONFIRM_LEAVE_INSTANCE_PARTY"] = {
	text = "%s",
	button1 = YES,
	button2 = CANCEL,
	OnAccept = function(self, data)
		if ( IsInGroup(LE_PARTY_CATEGORY_INSTANCE) ) then
			LeaveParty();
		end
	end,
	whileDead = 1,
	hideOnEscape = 1,
	showAlert = 1,
}

StaticPopupDialogs["CONFIRM_LEAVE_BATTLEFIELD"] = {
	text = CONFIRM_LEAVE_BATTLEFIELD,
	button1 = YES,
	button2 = CANCEL,
	OnShow = function(self)
		if ( IsActiveBattlefieldArena() ) then
			self.text:SetText(CONFIRM_LEAVE_ARENA);
		else
			self.text:SetText(CONFIRM_LEAVE_BATTLEFIELD);
		end
	end,
	OnAccept = function(self, data)
		LeaveBattlefield();
	end,
	whileDead = 1,
	hideOnEscape = 1,
	showAlert = 1,
}

StaticPopupDialogs["CONFIRM_SURRENDER_ARENA"] = {
	text = CONFIRM_SURRENDER_ARENA,
	button1 = YES,
	button2 = CANCEL,
	OnShow = function(self)
		self.text:SetText(CONFIRM_SURRENDER_ARENA);
	end,
	OnAccept = function(self, data)
		SurrenderArena();
	end,
	whileDead = 1,
	hideOnEscape = 1,
	showAlert = 1,
}

StaticPopupDialogs["SAVED_VARIABLES_TOO_LARGE"] = {
	text = SAVED_VARIABLES_TOO_LARGE,
	button1 = OKAY,
	timeout = 0,
	showAlertGear = 1,
	hideOnEscape = 1,
	whileDead = 1,
}

StaticPopupDialogs["PRODUCT_ASSIGN_TO_TARGET_FAILED"] = {
	text = PRODUCT_CLAIMING_FAILED,
	button1 = OKAY,
	timeout = 0,
	showAlertGear = 1,
	whileDead = 1,
}

StaticPopupDialogs["BATTLEFIELD_BORDER_WARNING"] = {
	text = "",
	OnShow = function(self)
		self.timeleft = self.data.timer;
	end,
	OnUpdate = function(self)
		self.text:SetFormattedText(BATTLEFIELD_BORDER_WARNING, self.data.name, SecondsToTime(self.timeleft, false, true));
		StaticPopup_Resize(self, "BATTLEFIELD_BORDER_WARNING");
	end,
	nobuttons = 1,
	timeout = 0,
	whileDead = 1,
	closeButton = 1,
};

StaticPopupDialogs["LFG_LIST_ENTRY_EXPIRED_TOO_MANY_PLAYERS"] = {
	text = LFG_LIST_ENTRY_EXPIRED_TOO_MANY_PLAYERS,
	button1 = OKAY,
	timeout = 0,
	whileDead = 1,
};

StaticPopupDialogs["LFG_LIST_ENTRY_EXPIRED_TIMEOUT"] = {
	text = LFG_LIST_ENTRY_EXPIRED_TIMEOUT,
	button1 = OKAY,
	timeout = 0,
	whileDead = 1,
};

StaticPopupDialogs["NAME_TRANSMOG_OUTFIT"] = {
	text = TRANSMOG_OUTFIT_NAME,
	button1 = SAVE,
	button2 = CANCEL,
	OnAccept = function(self)
		WardrobeOutfitFrame:NameOutfit(self.editBox:GetText(), self.data);
	end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1,
	hasEditBox = 1,
	maxLetters = 31,
	OnShow = function(self)
		self.button1:Disable();
		self.button2:Enable();
		self.editBox:SetFocus();
	end,
	OnHide = function(self)
		self.editBox:SetText("");
	end,
	EditBoxOnEnterPressed = function(self)
		if ( self:GetParent().button1:IsEnabled() ) then
			StaticPopup_OnClick(self:GetParent(), 1);
		end
	end,
	EditBoxOnTextChanged = function (self)
		local parent = self:GetParent();
		if ( parent.editBox:GetText() ~= "" ) then
			parent.button1:Enable();
		else
			parent.button1:Disable();
		end
	end,
	EditBoxOnEscapePressed = function(self)
		self:GetParent():Hide();
	end
};

StaticPopupDialogs["CONFIRM_OVERWRITE_TRANSMOG_OUTFIT"] = {
	text = TRANSMOG_OUTFIT_CONFIRM_OVERWRITE,
	button1 = YES,
	button2 = NO,
	OnAccept = function (self) WardrobeOutfitFrame:SaveOutfit(self.data) end,
	OnCancel = function (self)
		local name = self.data;
		self:Hide();
		local dialog = StaticPopup_Show("NAME_TRANSMOG_OUTFIT");
		if ( dialog ) then
			self.editBox:SetText(name);
		end
	end,
	hideOnEscape = 1,
	timeout = 0,
	whileDead = 1,
	noCancelOnEscape = 1,
}

StaticPopupDialogs["CONFIRM_DELETE_TRANSMOG_OUTFIT"] = {
	text = TRANSMOG_OUTFIT_CONFIRM_DELETE,
	button1 = YES,
	button2 = NO,
	OnAccept = function (self) WardrobeOutfitFrame:DeleteOutfit(self.data); end,
	OnCancel = function (self) end,
	hideOnEscape = 1,
	timeout = 0,
	whileDead = 1,
}

StaticPopupDialogs["TRANSMOG_OUTFIT_CHECKING_APPEARANCES"] = {
	text = TRANSMOG_OUTFIT_CHECKING_APPEARANCES,
	button1 = CANCEL,
	hideOnEscape = 1,
	timeout = 0,
	whileDead = 1,
}

StaticPopupDialogs["TRANSMOG_OUTFIT_ALL_INVALID_APPEARANCES"] = {
	text = TRANSMOG_OUTFIT_ALL_INVALID_APPEARANCES,
	button1 = OKAY,
	hideOnEscape = 1,
	timeout = 0,
	whileDead = 1,
}

StaticPopupDialogs["TRANSMOG_OUTFIT_SOME_INVALID_APPEARANCES"] = {
	text = TRANSMOG_OUTFIT_SOME_INVALID_APPEARANCES,
	button1 = OKAY,
	button2 = CANCEL,
	OnShow = function(self)
		if ( WardrobeOutfitFrame.name ) then
			self.button1:SetText(SAVE);
		else
			self.button1:SetText(CONTINUE);
		end
	end,
	OnAccept = function(self)
		WardrobeOutfitFrame:ContinueWithSave();
	end,
	hideOnEscape = 1,
	timeout = 0,
	whileDead = 1,
}

StaticPopupDialogs["TRANSMOG_APPLY_WARNING"] = {
	text = "%s",
	button1 = OKAY,
	button2 = CANCEL,
	OnAccept = function(self)
		return WardrobeTransmogFrame_ApplyPending(self.data.warningIndex);
	end,
	OnHide = function()
		WardrobeTransmogFrame_UpdateApplyButton();
	end,
	timeout = 0,
	hideOnEscape = 1,
	hasItemFrame = 1,
}

StaticPopupDialogs["CONFIRM_UNLOCK_TRIAL_CHARACTER"] = {
	text = CHARACTER_UPGRADE_FINISH_BUTTON_POPUP_TEXT,
	button1 = OKAY,
	button2 = CANCEL,
	OnAccept = function()
		ClassTrialThanksForPlayingDialog:ConfirmCharacterBoost();
	end,
	OnCancel = function()
		ClassTrialThanksForPlayingDialog:ShowThanks();
	end,
	timeout = 0,
	whileDead = 1,
}

StaticPopupDialogs["DANGEROUS_SCRIPTS_WARNING"] = {
	text = DANGEROUS_SCRIPTS_WARNING,
	button1 = YES,
	button2 = NO,
	OnAccept = function()
		SetAllowDangerousScripts(true);
	end,
	exclusive = 1,
	whileDead = 1,
	showAlert = 1,
}

StaticPopupDialogs["EXPERIMENTAL_CVAR_WARNING"] = {
	text = EXPERIMENTAL_FEATURE_TURNED_ON_WARNING,
	button1 = ACCEPT,
	button2 = DISABLE,
	OnCancel = function()
		ResetTestCvars();
	end,
	exclusive = 1,
	whileDead = 1,
	showAlert = 1,
}

StaticPopupDialogs["PREMADE_GROUP_SEARCH_DELIST_WARNING"] = {
	text = PREMADE_GROUP_SEARCH_DELIST_WARNING_TEXT,
	button1 = YES,
	button2 = NO,
	OnAccept = function(self)
		LFGListFrame_BeginFindQuestGroup(LFGListFrame, self.data);
	end,
	whileDead = 1,
	showAlert = 1,
	hideOnEscape = 1,
}

function StaticPopup_FindVisible(which, data)
	local info = StaticPopupDialogs[which];
	if ( not info ) then
		return nil;
	end
	for index = 1, STATICPOPUP_NUMDIALOGS, 1 do
		local frame = _G["StaticPopup"..index];
		if ( frame:IsShown() and (frame.which == which) and (not info.multiple or (frame.data == data)) ) then
			return frame;
		end
	end
	return nil;
end

function StaticPopup_Resize(dialog, which)
	local info = StaticPopupDialogs[which];
	if ( not info ) then
		return nil;
	end

	local text = _G[dialog:GetName().."Text"];
	local editBox = _G[dialog:GetName().."EditBox"];
	local button1 = _G[dialog:GetName().."Button1"];

	local maxHeightSoFar, maxWidthSoFar = (dialog.maxHeightSoFar or 0), (dialog.maxWidthSoFar or 0);
	local width = 320;

	if ( dialog.numButtons == 3 ) then
		width = 440;
	elseif (info.showAlert or info.showAlertGear or info.closeButton) then
		-- Widen
		width = 420;
	elseif ( info.editBoxWidth and info.editBoxWidth > 260 ) then
		width = width + (info.editBoxWidth - 260);
	elseif ( which == "HELP_TICKET" ) then
		width = 350;
	elseif ( which == "GUILD_IMPEACH" ) then
		width = 375;
	end
	if ( dialog.insertedFrame ) then
		width = max(width, dialog.insertedFrame:GetWidth());
	end
	if ( width > maxWidthSoFar )  then
		dialog:SetWidth(width);
		dialog.maxWidthSoFar = width;
	end

	local height = 32 + text:GetHeight() + 2;
	if (not info.nobuttons) then
		height = height + 6 + button1:GetHeight();
	end
	if ( info.hasEditBox ) then
		height = height + 8 + editBox:GetHeight();
	elseif ( info.hasMoneyFrame ) then
		height = height + 16;
	elseif ( info.hasMoneyInputFrame ) then
		height = height + 22;
	end
	if ( dialog.insertedFrame ) then
		height = height + dialog.insertedFrame:GetHeight();
	end
	if ( info.hasItemFrame ) then
		height = height + 64;
	end

	if ( height > maxHeightSoFar ) then
		dialog:SetHeight(height);
		dialog.maxHeightSoFar = height;
	end
end

local tempButtonLocs = {};	--So we don't make a new table each time.
function StaticPopup_Show(which, text_arg1, text_arg2, data, insertedFrame)
	local info = StaticPopupDialogs[which];
	if ( not info ) then
		return nil;
	end

	if ( UnitIsDeadOrGhost("player") and not info.whileDead ) then
		if ( info.OnCancel ) then
			info.OnCancel();
		end
		return nil;
	end

	if ( InCinematic() and not info.interruptCinematic ) then
		if ( info.OnCancel ) then
			info.OnCancel();
		end
		return nil;
	end

	if ( info.exclusive ) then
		StaticPopup_HideExclusive();
	end

	if ( info.cancels ) then
		for index = 1, STATICPOPUP_NUMDIALOGS, 1 do
			local frame = _G["StaticPopup"..index];
			if ( frame:IsShown() and (frame.which == info.cancels) ) then
				frame:Hide();
				local OnCancel = StaticPopupDialogs[frame.which].OnCancel;
				if ( OnCancel ) then
					OnCancel(frame, frame.data, "override");
				end
			end
		end
	end

	if ( (which == "CAMP") or (which == "QUIT") ) then
		for index = 1, STATICPOPUP_NUMDIALOGS, 1 do
			local frame = _G["StaticPopup"..index];
			if ( frame:IsShown() and not StaticPopupDialogs[frame.which].notClosableByLogout ) then
				frame:Hide();
				local OnCancel = StaticPopupDialogs[frame.which].OnCancel;
				if ( OnCancel ) then
					OnCancel(frame, frame.data, "override");
				end
			end
		end
	end

	if ( which == "DEATH" ) then
		for index = 1, STATICPOPUP_NUMDIALOGS, 1 do
			local frame = _G["StaticPopup"..index];
			if ( frame:IsShown() and not StaticPopupDialogs[frame.which].whileDead ) then
				frame:Hide();
				local OnCancel = StaticPopupDialogs[frame.which].OnCancel;
				if ( OnCancel ) then
					OnCancel(frame, frame.data, "override");
				end
			end
		end
	end

	-- Pick a free dialog to use
	local dialog = nil;
	-- Find an open dialog of the requested type
	dialog = StaticPopup_FindVisible(which, data);
	if ( dialog ) then
		if ( not info.noCancelOnReuse ) then
			local OnCancel = info.OnCancel;
			if ( OnCancel ) then
				OnCancel(dialog, dialog.data, "override");
			end
		end
		dialog:Hide();
	end
	if ( not dialog ) then
		-- Find a free dialog
		local index = 1;
		if ( info.preferredIndex ) then
			index = info.preferredIndex;
		end
		for i = index, STATICPOPUP_NUMDIALOGS do
			local frame = _G["StaticPopup"..i];
			if ( not frame:IsShown() ) then
				dialog = frame;
				break;
			end
		end

		--If dialog not found and there's a preferredIndex then try to find an available frame before the preferredIndex
		if ( not dialog and info.preferredIndex ) then
			for i = 1, info.preferredIndex do
				local frame = _G["StaticPopup"..i];
				if ( not frame:IsShown() ) then
					dialog = frame;
					break;
				end
			end
		end
	end
	if ( not dialog ) then
		if ( info.OnCancel ) then
			info.OnCancel();
		end
		return nil;
	end

	dialog.maxHeightSoFar, dialog.maxWidthSoFar = 0, 0;
	-- Set the text of the dialog
	local text = _G[dialog:GetName().."Text"];
	if ( (which == "DEATH") or
	     (which == "CAMP") or
		 (which == "QUIT") or
		 (which == "DUEL_OUTOFBOUNDS") or
		 (which == "RECOVER_CORPSE") or
		 (which == "RESURRECT") or
		 (which == "RESURRECT_NO_SICKNESS") or
		 (which == "INSTANCE_BOOT") or
		 (which == "GARRISON_BOOT") or
		 (which == "INSTANCE_LOCK") or
		 (which == "CONFIRM_SUMMON") or
		 (which == "CONFIRM_SUMMON_SCENARIO") or
		 (which == "CONFIRM_SUMMON_STARTING_AREA") or
		 (which == "BFMGR_INVITED_TO_ENTER") or
		 (which == "AREA_SPIRIT_HEAL") ) then
		text:SetText(" ");	-- The text will be filled in later.
		text.text_arg1 = text_arg1;
		text.text_arg2 = text_arg2;
	elseif ( which == "BILLING_NAG" ) then
		text:SetFormattedText(info.text, text_arg1, MINUTES);
	elseif ( which == "SPELL_CONFIRMATION_PROMPT" or which == "SPELL_CONFIRMATION_WARNING" ) then
		text:SetText(text_arg1);
		info.text = text_arg1;
		info.timeout = text_arg2;
	else
		text:SetFormattedText(info.text, text_arg1, text_arg2);
		text.text_arg1 = text_arg1;
		text.text_arg2 = text_arg2;
	end

	-- Show or hide the close button
	if ( info.closeButton ) then
		local closeButton = _G[dialog:GetName().."CloseButton"];
		if ( info.closeButtonIsHide ) then
			closeButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-HideButton-Up");
			closeButton:SetPushedTexture("Interface\\Buttons\\UI-Panel-HideButton-Down");
		else
			closeButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Up");
			closeButton:SetPushedTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Down");
		end
		closeButton:Show();
	else
		_G[dialog:GetName().."CloseButton"]:Hide();
	end

	-- Set the editbox of the dialog
	local editBox = _G[dialog:GetName().."EditBox"];
	if ( info.hasEditBox ) then
		editBox:Show();

		if ( info.maxLetters ) then
			editBox:SetMaxLetters(info.maxLetters);
			editBox:SetCountInvisibleLetters(info.countInvisibleLetters);
		end
		if ( info.maxBytes ) then
			editBox:SetMaxBytes(info.maxBytes);
		end
		editBox:SetText("");
		if ( info.editBoxWidth ) then
			editBox:SetWidth(info.editBoxWidth);
		else
			editBox:SetWidth(130);
		end
	else
		editBox:Hide();
	end

	-- Show or hide money frame
	if ( info.hasMoneyFrame ) then
		_G[dialog:GetName().."MoneyFrame"]:Show();
		_G[dialog:GetName().."MoneyInputFrame"]:Hide();
	elseif ( info.hasMoneyInputFrame ) then
		local moneyInputFrame = _G[dialog:GetName().."MoneyInputFrame"];
		moneyInputFrame:Show();
		_G[dialog:GetName().."MoneyFrame"]:Hide();
		-- Set OnEnterPress for money input frames
		if ( info.EditBoxOnEnterPressed ) then
			moneyInputFrame.gold:SetScript("OnEnterPressed", StaticPopup_EditBoxOnEnterPressed);
			moneyInputFrame.silver:SetScript("OnEnterPressed", StaticPopup_EditBoxOnEnterPressed);
			moneyInputFrame.copper:SetScript("OnEnterPressed", StaticPopup_EditBoxOnEnterPressed);
		else
			moneyInputFrame.gold:SetScript("OnEnterPressed", nil);
			moneyInputFrame.silver:SetScript("OnEnterPressed", nil);
			moneyInputFrame.copper:SetScript("OnEnterPressed", nil);
		end
	else
		_G[dialog:GetName().."MoneyFrame"]:Hide();
		_G[dialog:GetName().."MoneyInputFrame"]:Hide();
	end

	dialog.ItemFrame.itemID = nil;
	-- Show or hide item button
	if ( info.hasItemFrame ) then
		dialog.ItemFrame:Show();
		if ( data and type(data) == "table" ) then
			if ( data.useLinkForItemInfo ) then
				StaticPopupItemFrame_RetrieveInfo(dialog.ItemFrame, data);
			end
			StaticPopupItemFrame_DisplayInfo(dialog.ItemFrame, data.link, data.name, data.color, data.texture, data.count);
		end
	else
		dialog.ItemFrame:Hide();
	end

	-- Set the miscellaneous variables for the dialog
	dialog.which = which;
	dialog.timeleft = info.timeout or 0;
	dialog.hideOnEscape = info.hideOnEscape;
	dialog.exclusive = info.exclusive;
	dialog.enterClicksFirstButton = info.enterClicksFirstButton;
	dialog.insertedFrame = insertedFrame;
	if ( insertedFrame ) then
		insertedFrame:SetParent(dialog);
		insertedFrame:ClearAllPoints();
		insertedFrame:SetPoint("TOP", text, "BOTTOM");
		insertedFrame:Show();
		_G[dialog:GetName().."MoneyFrame"]:SetPoint("TOP", insertedFrame, "BOTTOM");
		_G[dialog:GetName().."MoneyInputFrame"]:SetPoint("TOP", insertedFrame, "BOTTOM");
	end
	-- Clear out data
	dialog.data = data;

	-- Set the buttons of the dialog
	local button1 = _G[dialog:GetName().."Button1"];
	local button2 = _G[dialog:GetName().."Button2"];
	local button3 = _G[dialog:GetName().."Button3"];

	do	--If there is any recursion in this block, we may get errors (tempButtonLocs is static). If you have to recurse, we'll have to create a new table each time.
		assert(#tempButtonLocs == 0);	--If this fails, we're recursing. (See the table.wipe at the end of the block)

		tinsert(tempButtonLocs, button1);
		tinsert(tempButtonLocs, button2);
		tinsert(tempButtonLocs, button3);

		for i=#tempButtonLocs, 1, -1 do
			--Do this stuff before we move it. (This is why we go back-to-front)
			tempButtonLocs[i]:SetText(info["button"..i]);
			tempButtonLocs[i]:Hide();
			tempButtonLocs[i]:ClearAllPoints();
			tempButtonLocs[i].PulseAnim:Stop();
			--Now we possibly remove it.
			if ( not (info["button"..i] and ( not info["DisplayButton"..i] or info["DisplayButton"..i](dialog))) ) then
				tremove(tempButtonLocs, i);
			end
		end

		local numButtons = #tempButtonLocs;
		--Save off the number of buttons.
		dialog.numButtons = numButtons;

		if ( numButtons == 3 ) then
			tempButtonLocs[1]:SetPoint("BOTTOMRIGHT", dialog, "BOTTOM", -72, 16);
		elseif ( numButtons == 2 ) then
			tempButtonLocs[1]:SetPoint("BOTTOMRIGHT", dialog, "BOTTOM", -6, 16);
		elseif ( numButtons == 1 ) then
			tempButtonLocs[1]:SetPoint("BOTTOM", dialog, "BOTTOM", 0, 16);
		end

		for i=1, numButtons do
			if ( i > 1 ) then
				tempButtonLocs[i]:SetPoint("LEFT", tempButtonLocs[i-1], "RIGHT", 13, 0);
			end

			local width = tempButtonLocs[i]:GetTextWidth();
			if ( width > 110 ) then
				tempButtonLocs[i]:SetWidth(width + 20);
			else
				tempButtonLocs[i]:SetWidth(120);
			end
			if (info["button"..i.."Pulse"]) then
				tempButtonLocs[i].PulseAnim:Play();
			end
			tempButtonLocs[i]:Enable();
			tempButtonLocs[i]:Show();
		end

		table.wipe(tempButtonLocs);
	end

	-- Show or hide the alert icon
	local alertIcon = _G[dialog:GetName().."AlertIcon"];
	if ( info.showAlert ) then
		alertIcon:SetTexture(STATICPOPUP_TEXTURE_ALERT);
		if ( button3:IsShown() )then
			alertIcon:SetPoint("LEFT", 24, 10);
		else
			alertIcon:SetPoint("LEFT", 24, 0);
		end
		alertIcon:Show();
	elseif ( info.showAlertGear ) then
		alertIcon:SetTexture(STATICPOPUP_TEXTURE_ALERTGEAR);
		if ( button3:IsShown() )then
			alertIcon:SetPoint("LEFT", 24, 0);
		else
			alertIcon:SetPoint("LEFT", 24, 0);
		end
		alertIcon:Show();
	else
		alertIcon:SetTexture();
		alertIcon:Hide();
	end

	if ( info.StartDelay ) then
		dialog.startDelay = info.StartDelay();
		button1:Disable();
	else
		dialog.startDelay = nil;
		button1:Enable();
	end

	editBox.autoCompleteParams = info.autoCompleteParams;

	editBox.addHighlightedText = true;

	-- Finally size and show the dialog
	StaticPopup_SetUpPosition(dialog);
	dialog:Show();

	StaticPopup_Resize(dialog, which);

	if ( info.sound ) then
		PlaySound(info.sound);
	end

	return dialog;
end

function StaticPopup_Hide(which, data)
	for index = 1, STATICPOPUP_NUMDIALOGS, 1 do
		local dialog = _G["StaticPopup"..index];
		if ( dialog:IsShown() and (dialog.which == which) and (not data or (data == dialog.data)) ) then
			dialog:Hide();
		end
	end
end

function StaticPopup_OnUpdate(dialog, elapsed)
	if ( dialog.timeleft > 0 ) then
		local which = dialog.which;
		local timeleft = dialog.timeleft - elapsed;
		if ( timeleft <= 0 ) then
			if ( not StaticPopupDialogs[which].timeoutInformationalOnly ) then
				dialog.timeleft = 0;
				local OnCancel = StaticPopupDialogs[which].OnCancel;
				if ( OnCancel ) then
					OnCancel(dialog, dialog.data, "timeout");
				end
				dialog:Hide();
			end
			return;
		end
		dialog.timeleft = timeleft;

		if ( (which == "DEATH") or
		     (which == "CAMP")  or
			 (which == "QUIT") or
			 (which == "DUEL_OUTOFBOUNDS") or
			 (which == "INSTANCE_BOOT") or
			 (which == "GARRISON_BOOT") or
			 (which == "CONFIRM_SUMMON") or
			 (which == "CONFIRM_SUMMON_SCENARIO") or
			 (which == "CONFIRM_SUMMON_STARTING_AREA") or
			 (which == "BFMGR_INVITED_TO_ENTER") or
			 (which == "AREA_SPIRIT_HEAL") or
			 (which == "SPELL_CONFIRMATION_PROMPT")) then
			local text = _G[dialog:GetName().."Text"];
			timeleft = ceil(timeleft);
			if ( (which == "INSTANCE_BOOT") or (which == "GARRISON_BOOT") ) then
				if ( timeleft < 60 ) then
					text:SetFormattedText(StaticPopupDialogs[which].text, timeleft, SECONDS);
				else
					text:SetFormattedText(StaticPopupDialogs[which].text, ceil(timeleft / 60), MINUTES);
				end
			elseif ( which == "CONFIRM_SUMMON" or which == "CONFIRM_SUMMON_SCENARIO" or which == "CONFIRM_SUMMON_STARTING_AREA" ) then
				if ( timeleft < 60 ) then
					text:SetFormattedText(StaticPopupDialogs[which].text, GetSummonConfirmSummoner(), GetSummonConfirmAreaName(), timeleft, SECONDS);
				else
					text:SetFormattedText(StaticPopupDialogs[which].text, GetSummonConfirmSummoner(), GetSummonConfirmAreaName(), ceil(timeleft / 60), MINUTES);
				end
			elseif ( which == "BFMGR_INVITED_TO_ENTER") then
				if ( timeleft < 60 ) then
					text:SetFormattedText(StaticPopupDialogs[which].text, text.text_arg1, timeleft, SECONDS);
				else
					text:SetFormattedText(StaticPopupDialogs[which].text, text.text_arg1, ceil(timeleft / 60), MINUTES);
				end
			elseif ( which == "SPELL_CONFIRMATION_PROMPT") then
				local time = "";
				if ( timeleft < 60 ) then
					text:SetFormattedText(ERR_SPELL_FAILED_S, timeleft, SECONDS);
				else
					text:SetFormattedText(ERR_SPELL_FAILED_S, ceil(timeleft / 60), MINUTES);
				end
				text:SetText(StaticPopupDialogs[which].text .. " " ..TIME_REMAINING .. text:GetText());
			else
				if ( timeleft < 60 ) then
					text:SetFormattedText(StaticPopupDialogs[which].text, timeleft, SECONDS);
				else
					text:SetFormattedText(StaticPopupDialogs[which].text, ceil(timeleft / 60), MINUTES);
				end
			end
			StaticPopup_Resize(dialog, which);
		end
	end
	if ( dialog.startDelay ) then
		local which = dialog.which;
		local timeleft = dialog.startDelay - elapsed;
		if ( timeleft <= 0 ) then
			dialog.startDelay = nil;
			local text = _G[dialog:GetName().."Text"];
			text:SetFormattedText(StaticPopupDialogs[which].text, text.text_arg1, text.text_arg2);
			local button1 = _G[dialog:GetName().."Button1"];
			button1:Enable();
			StaticPopup_Resize(dialog, which);
			return;
		end
		dialog.startDelay = timeleft;

		if ( which == "RECOVER_CORPSE" or (which == "RESURRECT") or (which == "RESURRECT_NO_SICKNESS") ) then
			local text = _G[dialog:GetName().."Text"];
			timeleft = ceil(timeleft);
			if ( (which == "RESURRECT") or (which == "RESURRECT_NO_SICKNESS") ) then
				if ( timeleft < 60 ) then
					text:SetFormattedText(StaticPopupDialogs[which].delayText, text.text_arg1, timeleft, SECONDS);
				else
					text:SetFormattedText(StaticPopupDialogs[which].delayText, text.text_arg1, ceil(timeleft / 60), MINUTES);
				end
			else
				if ( timeleft < 60 ) then
					text:SetFormattedText(StaticPopupDialogs[which].delayText, timeleft, SECONDS);
				else
					text:SetFormattedText(StaticPopupDialogs[which].delayText, ceil(timeleft / 60), MINUTES);
				end
			end
			StaticPopup_Resize(dialog, which);
		end
	end

	local onUpdate = StaticPopupDialogs[dialog.which].OnUpdate;
	if ( onUpdate ) then
		onUpdate(dialog, elapsed);
	end
end

function StaticPopup_EditBoxOnEnterPressed(self)
	local EditBoxOnEnterPressed, which, dialog;
	local parent = self:GetParent();
	if ( parent.which ) then
		which = parent.which;
		dialog = parent;
	elseif ( parent:GetParent().which ) then
		-- This is needed if this is a money input frame since it's nested deeper than a normal edit box
		which = parent:GetParent().which;
		dialog = parent:GetParent();
	end
	if ( not self.autoCompleteParams or not AutoCompleteEditBox_OnEnterPressed(self) ) then
		EditBoxOnEnterPressed = StaticPopupDialogs[which].EditBoxOnEnterPressed;
		if ( EditBoxOnEnterPressed ) then
			EditBoxOnEnterPressed(self, dialog.data);
		end
	end
end

function StaticPopup_EditBoxOnEscapePressed(self)
	local EditBoxOnEscapePressed = StaticPopupDialogs[self:GetParent().which].EditBoxOnEscapePressed;
	if ( EditBoxOnEscapePressed ) then
		EditBoxOnEscapePressed(self, self:GetParent().data);
	end
end

function StaticPopup_EditBoxOnTextChanged(self, userInput)
	if ( not self.autoCompleteParams or not AutoCompleteEditBox_OnTextChanged(self, userInput) ) then
		local EditBoxOnTextChanged = StaticPopupDialogs[self:GetParent().which].EditBoxOnTextChanged;
		if ( EditBoxOnTextChanged ) then
			EditBoxOnTextChanged(self, self:GetParent().data);
		end
	end
end

function StaticPopup_OnShow(self)
	PlaySound("igMainMenuOpen");

	local dialog = StaticPopupDialogs[self.which];
	local OnShow = dialog.OnShow;

	if ( OnShow ) then
		OnShow(self, self.data);
	end
	if ( dialog.hasMoneyInputFrame ) then
		_G[self:GetName().."MoneyInputFrameGold"]:SetFocus();
	end
	if ( dialog.enterClicksFirstButton ) then
		self:SetScript("OnKeyDown", StaticPopup_OnKeyDown);
	end
end

function StaticPopup_OnHide(self)
	PlaySound("igMainMenuClose");

	StaticPopup_CollapseTable();

	local dialog = StaticPopupDialogs[self.which];
	local OnHide = dialog.OnHide;
	if ( OnHide ) then
		OnHide(self, self.data);
	end
	self.extraFrame:Hide();
	if ( dialog.enterClicksFirstButton ) then
		self:SetScript("OnKeyDown", nil);
	end
	if ( self.insertedFrame ) then
		self.insertedFrame:Hide();
		self.insertedFrame:SetParent(nil);
		local text = _G[self:GetName().."Text"];
		_G[self:GetName().."MoneyFrame"]:SetPoint("TOP", text, "BOTTOM", 0, -5);
		_G[self:GetName().."MoneyInputFrame"]:SetPoint("TOP", text, "BOTTOM", 0, -5);
	end
end

local function StaticPopup_CallInfoHandler(dialog, handlerName, ...)
	if ( dialog:IsShown() ) then
		local which = dialog.which;
		local info = StaticPopupDialogs[which];
		if ( info ) then
			local handler = info[handlerName];
			if ( handler ) then
				handler(dialog, ...);
			end
		end
	end
end

function StaticPopup_OnHyperlinkClick(self, ...)
	StaticPopup_CallInfoHandler(self, "OnHyperlinkClick", ...);
end

function StaticPopup_OnHyperlinkEnter(self, ...)
	StaticPopup_CallInfoHandler(self, "OnHyperlinkEnter", ...);
end

function StaticPopup_OnHyperlinkLeave(self, ...)
	StaticPopup_CallInfoHandler(self, "OnHyperlinkLeave", ...);
end

function StaticPopup_OnClick(dialog, index)
	if ( not dialog:IsShown() ) then
		return;
	end
	local which = dialog.which;
	local info = StaticPopupDialogs[which];
	if ( not info ) then
		return nil;
	end
	local hide = true;
	if ( index == 1 ) then
		local OnAccept = info.OnAccept;
		if ( OnAccept ) then
			hide = not OnAccept(dialog, dialog.data, dialog.data2);
		end
	elseif ( index == 3 ) then
		local OnAlt = info.OnAlt;
		if ( OnAlt ) then
			OnAlt(dialog, dialog.data, "clicked");
		end
	else
		local OnCancel = info.OnCancel;
		if ( OnCancel ) then
			hide = not OnCancel(dialog, dialog.data, "clicked");
		end
	end

	if ( hide and (which == dialog.which) and ( index ~= 3 or not info.noCloseOnAlt) ) then
		-- can dialog.which change inside one of the On* functions???
		dialog:Hide();
	end
end

function StaticPopup_OnKeyDown(self, key)
	-- previously, StaticPopup_EscapePressed() captured the escape key for dialogs, but now we need
	-- to catch it here
	if ( GetBindingFromClick(key) == "TOGGLEGAMEMENU" ) then
		return StaticPopup_EscapePressed();
	elseif ( GetBindingFromClick(key) == "SCREENSHOT" ) then
		RunBinding("SCREENSHOT");
		return;
	end

	local dialog = StaticPopupDialogs[self.which];
	if ( dialog ) then
		if ( key == "ENTER" and dialog.enterClicksFirstButton ) then
			local frameName = self:GetName();
			local button;
			local i = 1;
			while ( true ) do
				button = _G[frameName.."Button"..i];
				if ( button ) then
					if ( button:IsShown() ) then
						StaticPopup_OnClick(self, i);
						return;
					end
					i = i + 1;
				else
					break;
				end
			end
		end
	end
end

function StaticPopup_Visible(which)
	for index = 1, STATICPOPUP_NUMDIALOGS, 1 do
		local frame = _G["StaticPopup"..index];
		if( frame:IsShown() and (frame.which == which) ) then
			return frame:GetName(), frame;
		end
	end
	return nil;
end

function StaticPopup_EscapePressed()
	local closed = nil;
	for _, frame in pairs(StaticPopup_DisplayedFrames) do
		if( frame:IsShown() and frame.hideOnEscape ) then
			local standardDialog = StaticPopupDialogs[frame.which];
			if ( standardDialog ) then
				local OnCancel = standardDialog.OnCancel;
				local noCancelOnEscape = standardDialog.noCancelOnEscape;
				if ( OnCancel and not noCancelOnEscape) then
					OnCancel(frame, frame.data, "clicked");
				end
				frame:Hide();
			else
				StaticPopupSpecial_Hide(frame);
			end
			closed = 1;
		end
	end
	return closed;
end

function StaticPopup_SetUpPosition(dialog)
	if ( not tContains(StaticPopup_DisplayedFrames, dialog) ) then
		StaticPopup_SetUpAnchor(dialog, #StaticPopup_DisplayedFrames + 1);
		tinsert(StaticPopup_DisplayedFrames, dialog);
	end
end

function StaticPopup_SetUpAnchor(dialog, idx)
	local lastFrame = StaticPopup_DisplayedFrames[idx - 1];
	if ( lastFrame ) then
		dialog:SetPoint("TOP", lastFrame, "BOTTOM", 0, 0);
	else
		dialog:SetPoint("TOP", UIParent, "TOP", 0, -135);
	end
end

function StaticPopup_CollapseTable()
	local displayedFrames = StaticPopup_DisplayedFrames;
	local index = #displayedFrames;
	while ( ( index >= 1 ) and ( not displayedFrames[index]:IsShown() ) ) do
		tremove(displayedFrames, index);
		index = index - 1;
	end
end

function StaticPopupSpecial_Show(frame)
	if ( frame.exclusive ) then
		StaticPopup_HideExclusive();
	end
	StaticPopup_SetUpPosition(frame);
	frame:Show();
end

function StaticPopupSpecial_Hide(frame)
	frame:Hide();
	StaticPopup_CollapseTable();
end

--Note that things will look sub-fantastic if toActivate is bigger than toReplace
function StaticPopupSpecial_Replace(toActivate, toReplace)
	local idx = nil;
	for i=1, #StaticPopup_DisplayedFrames do
		if ( StaticPopup_DisplayedFrames[i] == toReplace ) then
			idx = i;
			break;
		end
	end

	if ( idx ) then
		StaticPopup_DisplayedFrames[idx] = toActivate;
		StaticPopup_SetUpAnchor(toActivate, idx);

		toReplace:Hide();
		toActivate:Show();
		return true;
	end

	return false;
end

--Used to figure out if we can resize a frame
function StaticPopup_IsLastDisplayedFrame(frame)
	for i=#StaticPopup_DisplayedFrames, 1, -1 do
		local popup = StaticPopup_DisplayedFrames[i];
		if ( popup:IsShown() ) then
			return frame == popup
		end
	end
	return false;
end

function StaticPopup_OnEvent(self)
	self.maxHeightSoFar = 0;
	StaticPopup_Resize(self, self.which);
end

function StaticPopup_HideExclusive()
	for _, frame in pairs(StaticPopup_DisplayedFrames) do
		if ( frame:IsShown() and frame.exclusive ) then
			local standardDialog = StaticPopupDialogs[frame.which];
			if ( standardDialog ) then
				frame:Hide();
				local OnCancel = standardDialog.OnCancel;
				if ( OnCancel ) then
					OnCancel(frame, frame.data, "override");
				end
			else
				StaticPopupSpecial_Hide(frame);
			end
			break;
		end
	end
end

function StaticPopupItemFrame_OnEvent(self, event, ...)
	if ( event == "GET_ITEM_INFO_RECEIVED" ) then
		local itemID = ...;
		if ( itemID == self.itemID ) then
			local data = self:GetParent().data;
			StaticPopupItemFrame_RetrieveInfo(self, data);
			StaticPopupItemFrame_DisplayInfo(self, data.link, data.name, data.color, data.texture, data.count);
		end
	end
end

function StaticPopupItemFrame_RetrieveInfo(self, data)
	local itemName, _, itemQuality, _, _, _, _, _, _, texture = GetItemInfo(data.link);
	if ( itemName ) then
		data.name = itemName;
		local r, g, b = GetItemQualityColor(itemQuality);
		data.color = {r, g, b, 1};
		data.texture = texture;
		self.itemID = nil;
	else
		local itemID, _, _, _, texture = GetItemInfoInstant(data.link);
		data.name = RETRIEVING_ITEM_INFO;
		data.color = {RED_FONT_COLOR.r, RED_FONT_COLOR.g, RED_FONT_COLOR.b, 1};
		data.texture = texture;
		self.itemID = itemID;
	end
end

function StaticPopupItemFrame_DisplayInfo(self, link, name, color, texture, count)
	self.link = link;
	_G[self:GetName().."IconTexture"]:SetTexture(texture);
	local nameText = _G[self:GetName().."Text"];
	nameText:SetTextColor(unpack(color or {1, 1, 1, 1}));
	nameText:SetText(name);
	
	if link then
		local quality = select(3, GetItemInfo(link));
		SetItemButtonQuality(self, quality, link);
	end
	
	if ( count and count > 1 ) then
		_G[self:GetName().."Count"]:SetText(count);
		_G[self:GetName().."Count"]:Show();
	else
		_G[self:GetName().."Count"]:Hide();
	end
end
