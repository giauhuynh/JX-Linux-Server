--西南北区 成都府 ⒎人18Ⅳ蜀绣的对话
--author: yuanlan	
--date: 2003/3/10
-- Update: Dan_Deng(2003-08-13)

function main(sel)
	UTask_tm = GetTask(2)
	if (UTask_tm == 10*256+20) then			--唐放十级任务过程中
		Talk(2, "", "ta y b竛 u l� t玭 uy觧 danh gia th猽 T� Xuy猲  . n祅g � th祅h  ph� r蕋 n鎖 danh , th猽 ph秈 t鑤 v� c飊g , to祅 b� trong ph� x誴 h祅g th� nh蕋 , nh� c馻 n祅g � th祅h ng nam c筺h qu竛 tr� ph� dung . ", "n誹 l� th猽 danh gia , trong nh� ch綾 ch緉 s� kh玭g thi誹 h魌 kim may , c� l� n祅g nghe n鉯 li猲 quan t韎 Ma ch﹎.")
		AddNote("Mai nng bi誸 th猽 danh gia T� Xuy猲 , th猽 ph秈 t鑤 v� c飊g , nh� c馻 n祅g � th祅h ng nam c筺h qu竛 tr� ph� dung..  ")
		SetTask(2,10*256+30)
	elseif (UTask_tm == 10*256+30) then			--唐放十级任务过程中
		Talk(1, "", "ta y b竛 u l� t玭 uy觧 danh gia th猽 T� Xuy猲  . n祅g � th祅h  ph� r蕋 n鎖 danh , th猽 ph秈 t鑤 v� c飊g , to祅 b� trong ph� x誴 h祅g th� nh蕋 , nh� c馻 n祅g � th祅h ng nam c筺h qu竛 tr� ph� dung  ")
	elseif (random(0,1) == 0) then
		Talk(1,""," ngi t� u t韎 y ? c竔 n祔 l� th猽 T� Xuy猲 th鬰 trung chi b秓 , ngi xem m閠 ch髏 ,  阯g th猽 y  , th藅 l� th� c玭g thng ph萴 , mua m閠 c竔 v� l祄 k� ni謒 甶")
	else
		Talk(1,"","th輈h h譶h th猽 c� ch衟 sao ? T蕋 c� u gi鑞g nhau m�?")
	end
end;
