AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include( "shared.lua" )
include("player.lua")

function GM:PlayerInitialSpawn( ply )
 
    ply:SetTeam( 3 )
 
end 
