local _, SimpleAutoCombatLog = ...;

L = SimpleAutoCombatLog.L;

SimpleAutoCombatLog.Zones = {
  ["ZoneOnly"] = { -- Only Zone must be entered
    L["Molten Core"],
    L["Blackwing Lair"],
    L["Onyxia's Lair"],
    L["Ruins of Ahn'Qiraj"],
    L["Ahn'Qiraj"],
    L["Zul'Gurub"],
    L["Naxxramas"],
  },
  ["ZoneAndMob"] = { -- A Zone must be entered and a Mob must be targeted
    ["Zones"] = {
      L["Duskwood"],
      L["Hinterlands"],
      L["Feralas"],
      L["Ashenvale"],
      L["Blasted Lands"],
      L["Azshara"],
    },
    ["Mobs"] = {
      L["Emeriss"],
      L["Lethon"],
      L["Ysondre"],
      L["Taerar"],
      L["Doomlord Kazzak"],
      L["Azuregos"],
    }
  }



}
