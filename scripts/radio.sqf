if (isDedicated) exitwith {};
private ["_speaker","_song"];
_speaker = _this vehicle;
_song = lbCurSel ####;
//_volume = ctrlText ####;

hint format["debug-before-checks"];

//checks #1
if((lbCurSel ####) == -1) exitWith {hint "No song was selected!";ctrlShow[####,true];};
if(_speaker == player) exitWith {ctrlShow[####,false];};
if((driver vehicle player) != player)) exitWith {ctrlShow[####,false];};

sleep 3;
hint format["debug-after-checks"];
sleep 1;
if(life_radioOn) then {

life_radioOn = false;
sleep 1;
life_radioOn = true;
};

[] spawn {
	while {life_radioOn} do {
			switch (_speaker) do {
				case 0: {0.7 fadeMusic 0;}; //beim pausieren default?
				case 1: {say3D "donaldtrump";};
		};
	};
};

life_currentSong = _song;

/*
if(life_volume < 0) exitWith {hint "The volume you entered is not valid!";ctrlShow[####,true];};
if(life_volume => 100) exitWith {hint "The volume you entered is not valid! (Volume can't extend over 100)";ctrlShow[####,true];};
if(_volume != life_volume) {

	life_volume = _volume;
	call life_fnc_hudUpdate;
};
*/
