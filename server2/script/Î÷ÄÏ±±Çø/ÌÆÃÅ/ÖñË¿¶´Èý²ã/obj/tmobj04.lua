--description: 唐门出师任务 竹丝洞第三层宝箱
--author: yuanlan	
--date: 2003/3/13
-- Update: Dan_Deng(2003-08-13)

function main()

	UTask_tm = GetTask(2)
	if (UTask_tm == 60*256+60) then
		if (HaveItem(49) == 0) then 
			Say("1 v筺 lng.", 2, "C莕 /accept", "Kh玭g c莕 /refuse")
		else
			Talk(1,"","B筺  m� 1 rng kh竎 n猲 kh玭g th� m� l筰 rng n祔!")
		end
	elseif (UTask_tm == 60*256+70) then
		Talk(1,"","B秓 rng  r鏽g")
	else
		Talk(1,"","B筺 th� m� rng b竨, nh璶g h譶h nh� n�  b� r� s衪!")
	end
end;

function accept()
	Earn(10000)
	SetTask(2, 60*256+70)
	AddNote("L蕐 頲 m閠 v筺 lng trong rng b竨 t筰 t莕g th� 3 c馻 Tr骳 T� чng. ")
	Msg2Player("Nh薾 頲 m閠 v筺 lng b筩 ")
end;

function refuse()
end;
