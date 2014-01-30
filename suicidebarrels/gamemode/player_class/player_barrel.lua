AddCSLuaFile()

DEFINE_BASECLASS( "player_default" )

local PLAYER = {} 

// Some settings for the class
PLAYER.DisplayName			= "Barrel"
PLAYER.WalkSpeed 			= 230
PLAYER.CrouchedWalkSpeed 	= 0
PLAYER.RunSpeed				= 230
PLAYER.DuckSpeed				= 0
PLAYER.DrawTeamRing			= false

function PLAYER:Spawn()

	BaseClass.Spawn( self )

end

function PLAYER:Loadout()
  self.Player:RemoveAllAmmo()
  self.Player:Give( "weapon_shotgun" )
end

function PLAYER:SetModel()
    local mdl = "models/props_c17/oildrum001_explosive.mdl"
    util.PrecacheModel(mdl)
    self.Player:SetModel(mdl)
    self.Player:SetColor(Color(255,255,255,255)
  end
  
function PLAYER:CalcView( view )
	
	local view = {}
	view.origin = pos-(angles:Forward()*300) + (angles:Right()* 100)
	view.angles = angles
	view.fov = fov

	return view
end

player_manager.RegisterClass( "Barrel", PLAYER, "player_default" )
