版本说明:V1.0 2021.5.18
作者:今朝/倾城凝萌 QQ:736023910

所有实现的功能:
1.已获得勋章的可视化
2.颁发/撤销勋章的UI:你不再需要在控制台操作函数!!!



所有勋章定义目录:
medal_system\initServer.sqf
定义要求详见该文件.

使用的命令清单:如果有白名单,请注意添加到白名单
UI函数: 需要结合UI使用,单独使用无意义 
[]spawn JZ_fnc_initdialogMSA
[]spawn JZ_fnc_initdialogMSU
mode spawn JZ_fnc_MSAbutton
[]spawn JZ_fnc_MSshowDetails
[]spawn JZ_fnc_MSshowDetailsA

SE:变更勋章函数:可独立使用.作用:变更勋章.请在服务器执行.
[metalIndex,mode,player]spawn JZ_fnc_MSchangeMedal
metalIndex:操作的勋章
mode:模式
player:Object 操作的玩家

SE:初始化HashMap Player函数:
JZ_fnc_initListOfMetalOwned

使用的dialog:
JZ_MedalPlayer //玩家的勋章UI面板;
JZ_MedalAdmin //管理员的勋章UI面板;
请自行在适当的位置增加适当的命令:
例如:initPlayerLocal.sqf
player addAction ["UIPLAYER",{createDialog "JZ_MedalPlayer";}];
player addAction ["UIADMIN",{createDialog "JZ_MedalAdmin";}];

使用方法:
1.合并根目录下的description.ext;
2.在initPlayerLocal.sqf中增加
[]execVM "medal_system\initPlayerLocal.sqf";
3.在initPlayerServer.sqf中增加
[]execVM "medal_system\initServer.sqf";

