local addonName, SimpleAutoCombatLog = ...;

local EventHandler = CreateFrame("Frame");
local LookForMob = false;

EventHandler:RegisterEvent("ZONE_CHANGED_NEW_AREA");
EventHandler:RegisterEvent("PLAYER_TARGET_CHANGED");

EventHandler:SetScript("OnEvent", function(self, event, ...)

  if event == "ZONE_CHANGED_NEW_AREA" then
    SimpleAutoCombatLog:OnZoneChanged(...);
  elseif LookForMob and event == "PLAYER_TARGET_CHANGED" then
    SimpleAutoCombatLog:OnTargetChanged(...);
  end
end);


function SimpleAutoCombatLog:OnZoneChanged(...)
  local zone = GetRealZoneText();

  if self:IsInList( self.Zones.ZoneOnly, zone ) then -- No Mob needs to be tagged
    self:StartLog();
  elseif self:IsInList( self.Zones.ZoneAndMob.Zones, zone ) then -- Mobs need to be tagged
    LookForMob = true;
  else
    self:StopLog();
    LookForMob = false;
  end

end

function SimpleAutoCombatLog:OnTargetChanged(...)
  local name = UnitName("target");
  if self:IsInList( self.Zones.ZoneAndMob.Mobs, name ) then
    self:StartLog();
  end
end

function SimpleAutoCombatLog:StartLog()
  if not LoggingCombat() then
    LoggingCombat(true);
    print("|cffffff00".. L["Combatlog enabled"] .."|r");
    SetCVar("advancedCombatLogging", 1);
  end

end

function SimpleAutoCombatLog:StopLog()
  if LoggingCombat()  then
    LoggingCombat(false);
    print("|cffffff00".. L["Combatlog disabled"] .."|r");
  end
end

function SimpleAutoCombatLog:IsInList( list, search_value )
  for _, value in pairs( list ) do
    if value == search_value then
      return true;
    end
  end
  return false;
end
