if (isDedicated) exitwith {};
private ["_speaker","_song"];
_speaker = _this vehicle;
_song = ctrlText ####;

hint format["debug-before-checks"];

//checks #1
if((lbCurSel ####) == -1) exitWith {hint "No song was selected!";ctrlShow[####,true];};
if(_speaker == player) exitWith {ctrlShow[####,false];};
if((driver vehicle player) != player)) exitWith {ctrlShow[####,false];};

sleep 3;
hint format["debug-after-checks"];

[] spawn {
	while {true} do {
			switch (_speaker) do {
				case 0: {.7 fadeMusic 0;}; //beim pausieren default?
				case 1: {say3D "donaldtrump";};
		};
	};
};

life_currentSong = _song;
