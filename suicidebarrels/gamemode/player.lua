include( "player_class/player_hunter.lua" )
include( "player_class/player_barrel.lua" )

function GM:PlayerSpawn( ply )
  if ply:Team() == 1 then
   player_manager.SetPlayerClass( ply, "Barrel" )
   //player_manager.RunClass(ply, "Spawn")
  elseif ply:Team() == 2 then
    player_manager.SetPlayerClass( ply, "Hunter" )
  else
    ply:StripWeapons()
    ply:Spectate(OBS_MODE_ROAMING)
  end

 hook.Add( "CalcView", "overrideCalc", function (ply, pos, angles, fov)
    if ply:Team() == 1 then
   	local view = {}
    view.origin = pos+(angles:Up()*300)
    view.angles = Angle(90,0,0)
    view.fov = fov

    return view
	end
end)

end
