--西南北区 唐门 卖兵器的弟子对话
-- Update: Dan_Deng(2003-08-21) 加入卖道具只卖给本帮

function main(sel)
	Uworld37 = GetByte(GetTask(37),1)
	if (GetFaction() == "tangmen") or (Uworld37 == 127) then
		Say("Nh鱪g binh kh� n祔 u do 'Ph遪g 竚 kh�' v� 'Ph遪g h醓 kh�' b鎛 m玭 ta ch� t筼, kh玭g � n琲 n祇 c�!", 2, "Giao d辌h/yes", "Kh玭g giao d辌h/no")
	else
		Talk(1,"","M玭 ch� c� l謓h, binh kh� c馻 b鎛 m玭 kh玭g th� b竛 cho ngi ngo礽!")
	end
end;

function yes()
Sale(54)
end;

function no()
end;
