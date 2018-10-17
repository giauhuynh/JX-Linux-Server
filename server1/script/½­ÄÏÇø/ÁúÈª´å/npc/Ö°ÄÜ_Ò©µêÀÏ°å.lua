-- 龙泉村 职能NPC 药店老板（五毒10级任务）
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")

function main()
	UTask_wu = GetTask(10)
	if ((UTask_wu == 10*256+10) and (HaveItem("10包信石") == 0)) then 		--任务中
		Say("LTT62我这里什么药材都有，有病离开，无病健身，买药诚心不欺骗，你要买一点吗?", 3, "有卖砒霜信石吗?/L10_buy", "交易/yes", "不交易/no")
	else
		Say("LTT63我这里什么药材都有，有病离开，无病健身，买药诚心不欺骗，你要买一点吗?", 3, "交易/yes","我来领取初入任务/yboss", "不交易/no")
	end
end;

function L10_buy()
	Talk(1,"L10_buy_sele","腖TT64强墒嵌疽┌。阋幌侣蛘饷炊嘞敫墒裁�?")
end;

function L10_buy_sele()
	Say("睱TT65还绻憧细嗟闱幕�... 嘿嘿，1000两!",2,"买/L10_buy_yes","怎么跟抢钱一样!/L10_buy_no")
end;

function L10_buy_yes()
	if (GetCash() >= 1000) then
		Pay(1000)
		AddEventItem(220)
		AddNote("翷TT66虻�10包砒霜.")
		Msg2Player("买到10包砒霜.")
	end
end;

function L10_buy_no()
	Talk(1,"","翷TT67蚺。克滥懵蛘饷炊嘁陕�?")
end;

function yes()
	Sale(30);  			--弹出交易框
end;

function no()
end;
