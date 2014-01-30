function GM:PlayerSpawn( ply )
  if ply:Team() == 1 then
   player_manager.SetPlayerClass( ply, "Barrel" )
   player_manager.RunClass(ply, "Spawn")
  elseif ply:Team() == 2 then
    player_manager.SetPlayerClass( ply, "Hunter" )
  else
    ply:StripWeapons()
    ply:Spectate(OBS_MODE_ROAMING)
  end

end
