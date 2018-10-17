--中原北区 汴京府 衙门卫兵1对话

--function main(sel)
--Say("衙门卫兵：任何人只要说出对大金国不敬的言辞，就立刻抓起来！", 0);
--end;

--通缉系统专用样例脚本(BlackBay.2003.12.30)

FESTIVAL06_NPCNAME = "<color=yellow>Nha m玭 v?binh:<color>";
Include([[\script\global\⒎人_衙门卫兵.lua]]);

function main(sel)
    -- gsoldier_entance();
	Say("D﹏ ch髇g trong th祅h n祔  c骾 u i v韎 ngi Kim ch髇g ta, ch糿g l� nh� ngi kh玭g thu薾?", 0); 
end;

function main_former()
	--息面这个指令向系统询问当前Player的通缉系关状态信息
	--查询的结果返回以后，系统回调参数中指定的函数名
	Say("B蕋 lu薾 k?n祇 ch?c莕 n鉯 ra i v韎 i kim qu鑓 b蕋 k輓h ch l阨 n鉯, li襫 l藀 t鴆 b総 l筰! ", 0);
	--AskRelayForKillerStatus("KillerCallBack")
end;

--息面这个函数是查询结果的回调函数，参数个数和顺序不允许改变
function KillerCallBack(RewardMoney, RewardTaskID, CancelMoney, CancelTaskID, OwnCount, MyTaskCount)
	-- if (RewardMoney > 0) then
		--息面这个函数通知系统玩家已经领取了赏金，注意第一个参数0表示领赏金，第二个参数表示为哪个任务领赏金
		-- GetTaskMoney(0, RewardTaskID)
		-- Earn(RewardMoney)
	-- elseif (CancelMoney > 0) then
		--息面这个函数通知系统玩家已经领取了退回的标的金，注意第一个参数1表示领退金，第二个参数表示为哪个任务领退金
		-- GetTaskMoney(1, CancelTaskID)
		-- Earn(CancelMoney)
	-- elseif (OwnCount + MyTaskCount > 0) then
		-- Say("Ngi th藅 l?gan l韓, t?ti謓 x玭g v祇 c玭g 阯g c飊g nha m玭 ch t閕 danh ngi m 琻g kh雐 sao ?", 4, "Th祅h l藀 nhi謒 v?畊鎖 b総/CreateTask", "Nh薾 nhi謒 v?畊鎖 b総/QueryTask", "Xem nhi謒 v?c馻 m譶h/ModifyTask", "Kh玭g l祄 g?c?DoNothing")
	-- else
		-- Say("Ngi th藅 l?gan l韓, t?ti謓 x玭g v祇 c玭g 阯g c飊g nha m玭 ch t閕 danh ngi m 琻g kh雐 sao ?", 3, "Th祅h l藀 nhi謒 v?畊鎖 b総/CreateTask", "Nh薾 nhi謒 v?畊鎖 b総/QueryTask", "Kh玭g l祄 g?c?DoNothing")
	-- end
end;

function CreateTask()
	--息面这个函数通知客户端打开创建任务的界面
	OpenCreateTask()
end;

function QueryTask()
	--息面这个函数将所有能领取的任务传送给玩家客户端
	OpenAllTask()
end;

function ModifyTask()
	--息面这个函数将所已领取的任务以及已创建的任务传送给玩家客户端
	OpenOwnTask()
end;

function DoNothing()
	Say("B蕋 lu薾 k?n祇 ch?c莕 n鉯 ra i v韎 i kim qu鑓 b蕋 k輓h ch l阨 n鉯 , li襫 l藀 t鴆 b総 l筰 ! ", 0)
end;
