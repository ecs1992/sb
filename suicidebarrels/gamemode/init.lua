AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include( "shared.lua" )
include("player.lua")

function GM:PlayerInitialSpawn( ply )
    ply:SetTeam( 3 )
    RunConsoleCommand(team_menu)
end 

function team_1( ply )
    ply:SetTeam( 1 )
end
 
function team_2( ply )
    ply:SetTeam( 2 )
end

function team_3( ply )
    ply:SetTeam( 3 )
end
 
concommand.Add( "team_1", team_1 )
concommand.Add( "team_2", team_2 )
concommand.Add( "team_3", team_3 )
