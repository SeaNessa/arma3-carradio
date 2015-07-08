	class radioHUD
   	{
		idd=-1;
		movingEnable=0;
	  	fadein=0;
		duration = 99999999999999999999999999999999999999999999;
	  	fadeout=0;
		name="radioHUD";
		onLoad="uiNamespace setVariable ['radioHUD',_this select 0]";
		objects[]={};
		
		class controlsBackground 
		{
			class volumeIcon : life_RscPicture 
			{
			
				idc = -1;
				text = "icons\volume.paa";
				x = safeZoneX+safeZoneW-0.115; y = safeZoneY+safeZoneH-0.60;
				w = 0.03; h = 0.04;
			};
		
		class controls
		{
			class volume
			{
				type=0;
				idc=23520;
				style=0;
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				sizeEx=0.03;
				size=1;
				font="PuristaSemibold";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
		};
 	};
