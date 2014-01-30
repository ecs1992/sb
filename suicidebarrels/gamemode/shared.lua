include( "player_class/player_barrel.lua" )

GM.Name = "Suicide Barrels"
GM.Author = "CAYENNE WEST"
GM.Email = "NO@YEAH.NO"
GM.Website = "WorldStarHipHop.com"

team.SetUp( 1, "Barrel", Color( 255, 0, 0, 255 ) )
team.SetUp( 2, "Hunter", Color( 0, 0, 255, 255 ) )
team.SetUp( 3, "Guest", Color( 0, 255, 0, 255 ) )

function GM:Initialize()

end 

hook.Add("ShouldDrawLocalPlayer", "AllowDraw", function ( ply )
	-- body
	return true
end)

hook.Add( "CalcView", "overrideCalc", function (ply, pos, angles, fov)
    if ply:Team() == 1 then
   	local view = {}
    view.origin = pos-(angles:Forward()*300)
    view.angles = angles
    view.fov = fov

    return view
	end
end)
