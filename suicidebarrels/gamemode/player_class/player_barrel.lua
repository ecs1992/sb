local PLAYER = {} 

// Some settings for the class
PLAYER.DisplayName			= "Barrel"
PLAYER.WalkSpeed 			= 230
PLAYER.CrouchedWalkSpeed 	= 0
PLAYER.RunSpeed				= 230
PLAYERDuckSpeed				= 0
PLAYER.DrawTeamRing			= false

function PLAYER:Loadout()

end

player_manager.RegisterClass( "Barrel", PLAYER, nil )