AddCSLuaFile()

DEFINE_BASECLASS( "player_default" )
util.PrecacheModel("models/props_c17/oildrum001_explosive.mdl")
util.PrecacheModel("models/player/Group01/male_07.mdl")

local PLAYER = {} 

// Some settings for the class
PLAYER.DisplayName			= "Barrel"
PLAYER.WalkSpeed 			= 230
PLAYER.CrouchedWalkSpeed 	= 0
PLAYER.RunSpeed				= 230
PLAYER.DuckSpeed				= 0
PLAYER.DrawTeamRing			= false

function PLAYER:SetupDataTables()


end

function PLAYER:Spawn()

	//BaseClass.Spawn( self )


end

function PLAYER:Init()
  if self.Player:Team() == 1 then
		self.Player:SetModel("models/props_c17/oildrum001_explosive.mdl")
	elseif self.Player:Team() == 2 then
		self.Player:SetModel("models/player/Group01/male_07.mdl")
	end
	
	
end

function PLAYER:Loadout()
  self.Player:RemoveAllAmmo()
  self.Player:Give( "weapon_shotgun" )


end

/*function PLAYER:SetModel()
    
    local mdl = "models/props_c17/oildrum001_explosive.mdl"
    //util.PrecacheModel("models/props_c17/oildrum001_explosive.mdl")
    self.Player:SetModel("models/props_c17/oildrum001_explosive.mdl")
    self.Player:SetColor(Color(255,255,255,0))

    BaseClass.SetModel( self )
	
	local skin = self.Player:GetInfoNum( "cl_playerskin", 0 )
	self.Player:SetSkin( skin )

	local groups = self.Player:GetInfo( "cl_playerbodygroups" )
	if ( groups == nil ) then groups = "" end
	local groups = string.Explode( " ", groups )
	for k = 0, self.Player:GetNumBodyGroups() - 1 do
		self.Player:SetBodygroup( k, tonumber( groups[ k + 1 ] ) or 0 )
	end

  end*/
  
function PLAYER:CalcView( view ) end		-- Setup the player's view
function PLAYER:CreateMove( cmd ) end		-- Creates the user command on the client
function PLAYER:ShouldDrawLocal() end		-- Return true if we should draw the local player

-- Shared
function PLAYER:StartMove( cmd, mv ) end	-- Copies from the user command to the move
function PLAYER:Move( mv ) end				-- Runs the move (can run multiple times for the same client)
function PLAYER:FinishMove( mv ) end
/*ook.Add("ShouldDrawLocalPlayer", "AllowDraw", function ( ply )
	-- body
	return true
end)*/

player_manager.RegisterClass( "Barrel", PLAYER, "player_default" )
