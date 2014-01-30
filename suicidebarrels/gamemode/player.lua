function GM:PlayerSpawn( ply )
  if ply:Team() == 1 then
   player_manager.SetPlayerClass( ply, "Barrel" )
  elseif ply:Team() == 2 then
    player_manager.SetPlayerClass( ply, "Hunter" )
  else
    ply:StripAll()
    ply:Spectate(OBS_MODE_ROAMING)
  end

end
