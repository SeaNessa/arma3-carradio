/*
	File: currentSong.sqf
	Description: sets current song.
	
	Author: Sean (github.com/SeaNessa)
*/
switch (playMusic) do {
	case donaldtrump {
					file	"\a3l_carradio\sounds\donaldtrump.ogg";
					volume	"1.0";
					number	"1"; //späterer nutzen bei playlists und für die case abfrage
	};
	case default {
					file	"";
					volume	"1.0";
					number	"0";
	};
};
