--西北南区 凤翔府 逊放差役对话
--function main(sel)
--Say("逊放差役：逊放重地，坊盛儿不要泽这儿瞎转悠！", 0)
--end;
-- VH by anhdung9992001 clbgamesvn--
--莰缉系莩专臃样谍脚本(BlackBay.2003.12.30)
FESTIVAL06_NPCNAME = "<color=yellow>:<color>";

Include([[\script\global\⒎人_逊放蔚兵.lua]]);

function main(sel) 
-- gsoldier_entance(); 
Talk(1, "", "Ah ha, t猲 kia l竜, d竚 x玭g v祇 nha m玭, bay u b籱 t猲 n祔 cu鑞 ch� cho ta <pic=6>")
end; 

function main_former()
	--息锋这个指割向系莩询问当前Player的莰缉系关状态信息
	--查询的结果返回以后，系莩回调参数中指定的函数符
	--AskRelayForKillerStatus("KillerCallBack")
	Say(" m閠 ch髏 甶! N琲 n祔 ch輓h l?tr鋘g a", 0)
end;

--息锋这个函数是查询结果的回调函数，参数个数狠顺序不允许改变
function KillerCallBack(RewardMoney, RewardTaskID, CancelMoney, CancelTaskID, OwnCount, MyTaskCount)
	-- if (RewardMoney > 0) then
		-- GetTaskMoney(0, RewardTaskID)
		-- Earn(RewardMoney)
	-- elseif (CancelMoney > 0) then
		-- GetTaskMoney(1, CancelTaskID)
		-- Earn(CancelMoney)
	-- elseif (OwnCount + MyTaskCount > 0) then
		-- Say("你吃杆雄心豹子胆杆？扰⒁逊放罪你担当捣起", 4, "建涪捉姆任务/CreateTask", "接受捉姆任务/QueryTask", "看自己的任务/ModifyTask", "什反也不做/DoNothing")
	-- else
		-- Say("你吃杆雄心豹子胆杆？扰⒁逊放罪你担当捣起?", 3, "建涪捉姆任务/CreateTask", "接受捉姆任务/QueryTask","什反也不做/DoNothing")
	-- end
end;

function CreateTask()
	--息锋这个函数莰知枯户端打开创建任务的界锋
	OpenCreateTask()
end;

function QueryTask()
	--息锋这个函数将所有能胳取的任务传溯给萱家枯户端
	OpenAllTask()
end;

function ModifyTask()
	--息锋这个函数将所已胳取的任务以及已创建的任务传溯给萱家枯户端
	OpenOwnTask()
end;

function DoNothing()
	Say("走走走！不要泽这走荡走去的，这碉可是重地", 0)
end;
