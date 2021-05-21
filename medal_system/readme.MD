版本说明:V1.0 2021.5.18
作者:今朝/倾城凝萌 QQ:736023910

所有实现的功能:
1.已获得勋章的可视化
2.颁发/撤销勋章的UI:你不再需要在控制台操作函数!!!

特征:
使用HashMap储存数据
使用profileNamespace储存数据:勋章数据可以保存很久!
可扩展性:在HashMap为每一个勋章都定义了一个数组:你甚至可以在里面写奖励表和作战过程.
v1.0.1巨大的可用勋章库容量:现在小数可以被识别.

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
JZ_MedalPlayer //玩家的勋章UI面板;  IDC:2700
JZ_MedalAdmin //管理员的勋章UI面板; IDC:2700
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

----------------------2020.5.21----------------V1.0.1
修复:
1.更新了勋章所颁布的日期和显示日期不一致的错误.

添加:
1.现在勋章序号可以是小数.
2.在管理员菜单中增加了勋章序号以方便识别
3.扩充了预存库.
4.现在当前任务库由需要复制的包括详细说明的数组变成了勋章序号.

删除:
无