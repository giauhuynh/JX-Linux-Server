--中原南区 扬州府 衙门卫兵2对话
--function main(sel)
--Say("衙门卫兵：待会换了班去哪里找乐子呢？", 0);
--end;

--通缉系统专用样例脚本(BlackBay.2003.12.30)

FESTIVAL06_NPCNAME = "<color=yellow>衙门卫兵:<color>";
Include([[\script\global\路人_衙门卫兵.lua]]);

function main(sel)
    gsoldier_entance();
end;

function main_former()
	Say("N祔, i hi謕 n猲 甶 甶 th� h琻, ng lang thang � y. ", 0);
end;

--下面这个函数是查询结果的回调函数，参数个数和顺序不允许改变
function KillerCallBack(RewardMoney, RewardTaskID, CancelMoney, CancelTaskID, OwnCount, MyTaskCount)
end;

function CreateTask()
	--下面这个函数通知客户端打开创建任务的界面
	OpenCreateTask()
end;

function QueryTask()
	--下面这个函数将所有能领取的任务传送给玩家客户端
	OpenAllTask()
end;

function ModifyTask()
	--下面这个函数将所已领取的任务以及已创建的任务传送给玩家客户端
	OpenOwnTask()
end;

function DoNothing()
	Say("待会换了班去哪里找乐子呢", 0)
end;


