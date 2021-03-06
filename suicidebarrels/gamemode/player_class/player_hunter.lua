local PLAYER = {} 

// Some settings for the PLAYER
PLAYER.DisplayName			= "Hunter"
PLAYER.WalkSpeed 			= 230
PLAYER.CrouchedWalkSpeed 	= 0.2
PLAYER.RunSpeed				= 230
PLAYER.DuckSpeed				= 0.2
PLAYER.DrawTeamRing			= false

local mdls = 
	{
	"models/Combine_Super_Soldier.mdl",
	"models/Combine_Soldier_PrisonGuard.mdl",
	"models/Combine_Soldier.mdl",
	"models/Police.mdl"
	}

function PLAYER:Loadout()

	self.Player:RemoveAllAmmo()
	
	self.Player:GiveAmmo( 256, "Pistol", true )
	self.Player:Give( "weapon_pistol" )

end

function PLAYER:OnDeath(pl, attacker, dmginfo)
	pl:CreateRagdoll()
	pl:UnLock()
end

player_manager.RegisterClass( "Hunter", PLAYER, nil )
