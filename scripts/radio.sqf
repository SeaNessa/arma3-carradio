if (isDedicated) exitwith {};
private ["_speaker"];
_speaker = _this;
[] spawn {
	while {true} do {
			switch (__GETC__(life_currentSong)) do { //getc möglicherweise unfunktionierend
				case 0: {2.5 fadeMusic 0;}; //beim pausieren default?
				case 1: {playMusic "donaldtrump";};
		};
	};
};
