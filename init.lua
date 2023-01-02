core.register_privilege("gethome","Allows to use /gethome")
core.register_chatcommand("gethome",{
  description = "Get home of player",
  privs = {gethome=true},
  params = "<playername>",
  func = function(name,param)
	local player = core.get_player_by_name(param)
	local homepos = player and sethome and sethome.get(param)
	if not homepos then
		return false, "Error getting home of "..param
	end
	return true, "Home of "..param..": "..core.pos_to_string(vector.round(homepos))
end})
core.register_chatcommand("getuihome",{
  description = "Get unified_inventory home of player",
  privs = {gethome=true},
  params = "<playername>",
  func = function(name,param)
	local homepos = unified_inventory and unified_inventory.home_pos[param]
	if not homepos then
		return false, "Error getting home of "..param
	end
	return true, "Home of "..param..": "..core.pos_to_string(vector.round(homepos))
end})
