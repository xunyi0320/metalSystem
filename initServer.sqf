//initServer
medalList=[ // [序号,勋章名称,介绍] 序号可不按顺序,但必须唯一.序号是识别勋章的唯一途径.
	[0,"无勋章","无介绍"],
	[1,"CCO勋章","颁发给所有CCO战队成员"],
	[2,"特殊贡献勋章","颁发给所有CCO有过卓越贡献的玩家"],
	[3,"三级组织勋章","颁发给组织过动态任务的导演"],
	[4,"二级组织勋章","颁发给组织过静态任务的导演"],
	[5,"一级组织勋章","颁发给独立组织过静态任务的导演"],
	[6,"优秀指战员勋章","颁发给所有杰出的队长"],
	[7,"优秀士兵勋章","颁发给表现个人能力突出的士兵"],
	[8,"自由LePort勋章","颁发给所有参加解放LePort近邻岛屿的玩家"],
	[9,"测试勋章","颁发给所有参与测试的玩家"]
];

correctMedal = [9,"测试勋章","颁发给所有参与测试的玩家"];//只有一个而且必须在勋章列表里!!!

publicVariable "correctMedal";
publicVariable "medalList";

listOfMetalOwned = profileNamespace getVariable ["listOfMetalOwned",createHashMap];