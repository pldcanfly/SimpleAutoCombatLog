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
    L["Karazhan"],
    L["Gruul's Lair"],
    L["Magtheridon's Lair"],
    L["Sunwell Plateau"],
    L["Black Temple"],
    L["Tempest Keep"],
    L["Serpentshrine Cavern"],
    L["Zul'Aman"],
    L["Hyjal Summit"]
  },
  ["ZoneAndMob"] = { -- A Zone must be entered and a Mob must be targeted
    ["Zones"] = {
      L["Duskwood"],
      L["Hinterlands"],
      L["Feralas"],
      L["Ashenvale"],
      L["Blasted Lands"],
      L["Azshara"],
      L["Hellfire Peninsula"],
      L["Shadowmoon Valley"]
    },
    ["Mobs"] = {
      L["Emeriss"],
      L["Lethon"],
      L["Ysondre"],
      L["Taerar"],
      L["Doomlord Kazzak"],
      L["Azuregos"],
      L["Doom Lord Kazzak"],
      L["Doomwalker"]
    }
  }



}
