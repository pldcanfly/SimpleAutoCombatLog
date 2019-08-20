local _, SimpleAutoCombatLog = ...;

SimpleAutoCombatLog.L = {};

local function defaultFunc(L, key)
 -- If this function was called, we have no localization for this key.
 -- We could complain loudly to allow localizers to see the error of their ways,
 -- but, for now, just return the key as its own localization. This allows you to—avoid writing the default localization out explicitly.
 return key;
end
setmetatable(SimpleAutoCombatLog.L, {__index=defaultFunc});

if GetLocale() == "deDE" then
  -- Zones
 SimpleAutoCombatLog.L["The Molten Core"] = "Der Geschmolzene Kern";
 SimpleAutoCombatLog.L["Onyxia's Lair"] = "Onyxias Hort";
 SimpleAutoCombatLog.L["Blackwing Lair"] = "Pechschwingenhort";
 SimpleAutoCombatLog.L["Ruins of Ahn'Qiraj"] = "Ruinen von Ahn'Qiraj";
 SimpleAutoCombatLog.L["Ahn'Qiraj"] = "Ahn'Qiraj";
 SimpleAutoCombatLog.L["Zul'Gurub"] = "Zul'Gurub";
 SimpleAutoCombatLog.L["Naxxramas"] = "Naxxramas";

 SimpleAutoCombatLog.L["Azshara"] = "Azshara";
 SimpleAutoCombatLog.L["Blasted Lands"] = "Verwüstete Lande";
 SimpleAutoCombatLog.L["Hinterlands"] = "Hinterland";
 SimpleAutoCombatLog.L["Ashenvale"] = "Ashenvale";
 SimpleAutoCombatLog.L["Feralas"] = "Feralas";
 SimpleAutoCombatLog.L["Duskwood"] = "Dämmerwald";

 -- Text
 SimpleAutoCombatLog.L["Combatlog enabled"] = "Kampflog aktiviert";
 SimpleAutoCombatLog.L["Combatlog disabled"] = "Kampflog deaktiviert";

 -- Mobs
 SimpleAutoCombatLog.L["Emeriss"] = "Emeriss";
 SimpleAutoCombatLog.L["Lethon"] = "Lethon";
 SimpleAutoCombatLog.L["Ysondre"] = "Ysondre";
 SimpleAutoCombatLog.L["Taerar"] = "Taerar";
 SimpleAutoCombatLog.L["Lord Kazzak"] = "Lord Kazzak";
 SimpleAutoCombatLog.L["Azuregos"] = "Azuregos";

end
