import RscText;
import RscListbox;
import RscButton;
import RscEditMulti;
#define GUI_GRID_X	(0)
#define GUI_GRID_Y	(0)
#define GUI_GRID_W	(0.025)
#define GUI_GRID_H	(0.04)
#define GUI_GRID_WAbs	(1)
#define GUI_GRID_HAbs	(1)

class  JZ_MedalPlayer
{
	idd = 2700;
	onLoad = "[]spawn JZ_fnc_initdialogMSU;";
	class Controls
	{
		class framework: RscText
		{
			idc = 1000;
			x = 6 * GUI_GRID_W + GUI_GRID_X;
			y = 0 * GUI_GRID_H + GUI_GRID_Y;
			w = 28 * GUI_GRID_W;
			h = 25 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.7};
		};
		class header: RscText
		{
			idc = 1001;
			text = "个人勋章"; //--- ToDo: Localize;
			x = 6 * GUI_GRID_W + GUI_GRID_X;
			y = 0 * GUI_GRID_H + GUI_GRID_Y;
			w = 28 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class metalList: RscListbox
		{
			idc = 1500;
			onLBSelChanged = "[] call JZ_fnc_MSshowDetails";
			x = 6.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 15 * GUI_GRID_H;
		};
		class exit: RscButton
		{
			idc = 1600;
			text = "退出"; //--- ToDo: Localize;
			onButtonClick ="closeDialog 2700";
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 25.1 * GUI_GRID_H + GUI_GRID_Y;
			w = 4.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class introduce: RscEditMulti
		{
			idc = 1002;
			text = ""; //--- ToDo: Localize;
			x = 21.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2 * GUI_GRID_H + GUI_GRID_Y;
			w = 12 * GUI_GRID_W;
			h = 15 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};

	}
};


class  JZ_MedalAdmin
{
	idd = 2700;
	onLoad = "[]spawn JZ_fnc_initdialogMSA;";
	class Controls
	{
		class framework: RscText
		{
			idc = 1000;
			x = 6 * GUI_GRID_W + GUI_GRID_X;
			y = 0 * GUI_GRID_H + GUI_GRID_Y;
			w = 28 * GUI_GRID_W;
			h = 25 * GUI_GRID_H;
			colorBackground[] = {-1,-1,-1,0.7};
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "退出"; //--- ToDo: Localize;
			onButtonClick ="closeDialog 2700";
			x = 30 * GUI_GRID_W + GUI_GRID_X;
			y = 25.1 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class head: RscText
		{
			idc = 1001;
			text = "勋章系统管理员面板"; //--- ToDo: Localize;
			x = 6 * GUI_GRID_W + GUI_GRID_X;
			y = 0 * GUI_GRID_H + GUI_GRID_Y;
			w = 28 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class playerList: RscListbox
		{
			onLBSelChanged = "[] spawn JZ_fnc_MSshowDetailsA";
			idc = 1500;
			x = 7 * GUI_GRID_W + GUI_GRID_X;
			y = 3 * GUI_GRID_H + GUI_GRID_Y;
			w = 12 * GUI_GRID_W;
			h = 8.5 * GUI_GRID_H;
		};
		class ownList: RscListbox
		{
			idc = 1501;
			x = 20 * GUI_GRID_W + GUI_GRID_X;
			y = 3 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 8.5 * GUI_GRID_H;
		};
		class StaticText1: RscText
		{
			idc = 1002;
			text = "玩家列表"; //--- ToDo: Localize;
			x = 7 * GUI_GRID_W + GUI_GRID_X;
			y = 2 * GUI_GRID_H + GUI_GRID_Y;
			w = 6 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class StaticText2: RscText
		{
			idc = 1003;
			text = "玩家拥有的勋章列表"; //--- ToDo: Localize;
			x = 20 * GUI_GRID_W + GUI_GRID_X;
			y = 2 * GUI_GRID_H + GUI_GRID_Y;
			w = 7.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class allList: RscListbox
		{
			idc = 1502;
			x = 7 * GUI_GRID_W + GUI_GRID_X;
			y = 13 * GUI_GRID_H + GUI_GRID_Y;
			w = 12 * GUI_GRID_W;
			h = 10 * GUI_GRID_H;
		};
		class StaticText3: RscText
		{
			idc = 1004;
			text = "所有可用勋章"; //--- ToDo: Localize;
			x = 7 * GUI_GRID_W + GUI_GRID_X;
			y = 12 * GUI_GRID_H + GUI_GRID_Y;
			w = 6 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class staticText4: RscText
		{
			idc = 1005;
			text = "当前任务勋章:"; //--- ToDo: Localize;
			x = 20 * GUI_GRID_W + GUI_GRID_X;
			y = 13 * GUI_GRID_H + GUI_GRID_Y;
			w = 6 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
		};
		class dynamicText: RscText
		{
			idc = 1006;
			text = "WAITINGFOR INITILIAZE 1006"; //--- ToDo: Localize;
			x = 26 * GUI_GRID_W + GUI_GRID_X;
			y = 13 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
		};
		class button1: RscButton
		{
			idc = 1601;
			text = "向所有玩家颁发任务勋章"; //--- ToDo: Localize;
			onButtonClick ="1 spawn JZ_fnc_MSAbutton";
			x = 20.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 12.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class RscText_1007: RscText
		{
			idc = 1007;
			text = "对于选中玩家"; //--- ToDo: Localize;
			x = 20.5 * GUI_GRID_W + GUI_GRID_X;
			y = 16 * GUI_GRID_H + GUI_GRID_Y;
			w = 12.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = "颁发勋章"; //--- ToDo: Localize;
			onButtonClick ="2 spawn JZ_fnc_MSAbutton";
			x = 20.5 * GUI_GRID_W + GUI_GRID_X;
			y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class RscButton_1603: RscButton
		{
			idc = 1603;
			text = "撤销勋章"; //--- ToDo: Localize;
			onButtonClick ="3 spawn JZ_fnc_MSAbutton";
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};

	}
};
