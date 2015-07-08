//Backend Variablen
////////////////
//Radio Status
life_RadioOn = false;
//Current Song
life_currentSong = 0;
//Radio Volume
life_volume = 0;
//Setup Actions
life_actions = life_actions + [player addAction["Radio ON",life_fnc_radioOn,"",0,false,false,"",'!(vehicle getVariable["radioOn",FALSE]) && ((driver vehicle player) == player)) then']];
//Action Itself
if(vehicle getVariable["radioOn",false]) exitWith {};
[[vehicle],"life_fnc_radioOn",_target,false] spawn life_fnc_MP;
vehicle setVariable["radioOn",TRUE,TRUE];
