--西南北区 成都府 ⒎人16懈员葩对话 峨嵋派40级任务
--author: yuanlan	
--date: 2003/5/23
-- Update: Dan_Deng(2003-08-12)

function main(sel)
	UTask_em = GetTask(1);
	if (UTask_em == 40*256+50) then 		
		UTask_emsub03 = GetByte(GetTask(29),3)
		if (UTask_emsub03 == 0) then 
			Say("t﹏ vi猲 ngo筰 : t筰 h� b譶h sanh th輈h nh蕋 k誸 giao giang h� hi謕 kh竎h , c竎 b籲g h鱱 c ngo筰 hi謚 g鋓 � M筺h Thng vi猲 ngo筰 � , v鑞 l� khen l莔 , nh璶g g莕 nh蕋 c� ngi n鉯 t筰 h� l� c� t猲 c﹗ d� , t筰 h� h誸 s鴆 kh玭g cam l遪g . kh玭g bi誸 n� hi謕 c� th� hay kh玭g v� t筰 h� gi秈 p m蕐 nghi ng� ?", 2, "xin h醝/L40_V3_Q1", "ta c遪 c� chuy謓 kh竎/no")
		elseif (UTask_emsub03 == 3) then 
			L40_V3_Q1()
		elseif (UTask_emsub03 == 5) then 
			L40_V3_Q2()
		elseif ((UTask_emsub03 == 10) and (HaveItem(168) == 0)) then
			AddEventItem(168)
			Talk(1,"","n� hi謕 kh玭g c莕 kh竎h kh� , ngi c莕 th� l蕐 甶 甶")
		else
			Talk(1,"","c� th� c飊g n� hi謕 l祄 b籲g h鱱 th藅 l� vinh h筺h.")
		end
	else
		Talk(1,"","t﹏ vi猲 ngo筰 : t筰 h� b譶h sanh th輈h nh蕋 k誸 giao giang h� hi謕 kh竎h , c竎 b籲g h鱱 c ngo筰 hi謚 , g鋓 l� � M筺h Thng vi猲 ngo筰 � , th藅 s� l� khen sai r錳")
	end
end;

function no()
	Talk(1,"","v藋 ta kh玭g phi襫 to竔 n� hi謕!")
end;

function L40_V3_Q1()
	Say("t﹏ vi猲 ngo筰 : m筺h thng qu﹏ l� ngi nc n祇 ", 4, "Nc S�/f1", "я nc/L40_V3_Q2", "nc Tri謚/f1", "Nc Ng魕/f1")
end;

function f1()
	Talk(1,"","t﹏ vi猲 ngo筰 : gi鑞g nh� kh玭g ng sao ? ta l莕 trc n鉯 nh� v藋 c遪 b� ngi kh竎 nh筼 b竛g m閠 phen")
	SetTask(29, SetByte(GetTask(29),3,3))
end;

function L40_V3_Q2()
	Say("t﹏ vi猲 ngo筰 : Th� ra l� h緉 l�  qu鑓 nh﹏ a ! chi課 qu鑓 T� c玭g t� trong , tr� m筺h thng qu﹏ ? l╪g qu﹏ h遖 b譶h nguy猲 ra , ngi c� c遪 bi誸 c遪 m閠 ai hay kh玭g v藋", 4, "long dng qu﹏/f2", "t躰h qu竎h qu﹏/f2", "xu﹏ th﹏ qu﹏/L40_V3_prise", "thi觰 nguy猲 qu﹏/f2")
end;

function f2()
	Talk(1,"","t﹏ vi猲 ngo筰 : gi鑞g nh� kh玭g ng sao ? ta th� ch璦 nghe n鉯 qua l莕 n祇")
	SetTask(29, SetByte(GetTask(29),3,5))
end;

function L40_V3_prise()
	Talk(4, "select", "ng r錳 , th� m� ta kh玭g ngh� n, nghe n鉯 trc kia m筺h thng qu﹏ c� 3000 th鵦 kh竎h , ta m芻 d� kh玭g c� kh� ph竎h nh� v藋 , nh璶g l� r蕋 th輈h k誸 giao gi鑞g nh� n� hi謕 b籲g h鱱 nh� th� . n� hi謕 c莕 ta tr� gi髉 sao ?", "ta 產ng t譵 b輈h t� nh蒼 ", "sao kh玭g n鉯 s韒 , ta c� m閠 b輈h t� chi誧 nh蒼 ,  ta a cho ngi ", "產 t� vi猲 ngo筰 ! ")
end;

function select()
	AddEventItem(168)
Msg2Player("l蕐 頲 b輈h t� nh蒼 .")
	SetTask(29, SetByte(GetTask(29),3,10))
	AddNote("� th祅h  t﹏ vi猲 ngo筰 ch� t譵 頲 chi誧 nh蒼 m� n穙 ")
end;
