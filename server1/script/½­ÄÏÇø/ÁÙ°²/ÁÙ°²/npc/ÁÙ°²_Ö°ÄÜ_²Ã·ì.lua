-- 临安的裁缝，可以Ⅱ婚礼吉服
-- By: Dan_Deng(2003-12-29)
-- GetTask(67): 第24字位为婚否标记，第1字位为是否已Ⅱ吉服

function main(sel)
	Uworld67 = GetTask(67)
	if (GetBit(Uworld67,24) == 1) then			-- 已婚
		if (GetBit(Uworld67,1) == 0) then		-- 尚未Ⅱ过，可以Ⅱ婚礼服
			if (GetSex() == 0) then					-- 男对话，Ⅱ男装
				Talk(1,"buy_sale","L穙 gia : nghe n鉯 ngi may 竜 hoa p nh蕋 thi猲 h� ng kh玭g ? ")
			else
				Talk(1,"buy_sale","L穙 gia : ngi c遪 h祅g kh玭g ?")
			end
		else
			Talk(1,"","Trc b鎛 ti謒 l祄 y ph鬰 kh玭g t�, 頲 b籲g h鱱 gi髉  騨g h� th藅 th� th裯!")
		end
	else
		Talk(1,"","T礽 ph飊g : kh玭g ph秈 n鉯 kho竎 nh� ta c� may c竎 l� ph鬰 t鑤 nh蕋 thi猲 h�, ngi c莕 may g� c� n鉯!")
	end
end

function buy_sale()
	Say("Ch� n祔 c bi謙 may l� ph鬰,d� nhi猲 ph秈 t鑞 chi ph�, v� gi� c馻 n� l� 88888 lng b筩. ",2,"Л琻g nhi猲 ta mu鑞 mua m閠 b�. /buy_yes","Kh玭g c莕,ta c遪 ch璦 mu鑞 k誸 h玭 /no")
end

function buy_yes()
	if (GetCash() >= 88888) then
		Pay(88888)
		if (GetSex() == 0) then
			AddItem(0,2,28,1,random(0,4),0,0)
		else
			AddItem(0,2,28,4,random(0,4),0,0)
		end
		Uworld67 = GetTask(67)
		Uworld67 = SetBit(Uworld67,1,1)
		SetTask(67,Uworld67)
		Talk(1,"","Kh玭g th祅h v蕁  ch骳 kh竎h quan tr╩ n╩ h秓 h頿!")
	else
		Talk(1,"","Kh玭g c� ti襫 th� ng l祄 phi襫 ta l祄 vi謈!")
	end
end

function no()
end
