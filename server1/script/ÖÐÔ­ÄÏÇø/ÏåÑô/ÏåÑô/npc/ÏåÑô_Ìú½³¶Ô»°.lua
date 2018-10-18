--description: 中原南区 襄阳府 铁匠对话 武当派出师任务
--author: yuanlan	
--date: 2003/5/17
-- Update: Dan_Deng(2003-08-08)
-- Update: Dan_Deng(2003-08-17)

Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<dec><npc>Ta c bi謙 chuy猲 v� ch� t筼 binh kh�, r蕋 b薾 r閚, ng礽 mu鑞 mua v� kh� sao? C� t� nhi猲 m� ch鋘."

function main(sel)
	UTask_wd = GetTask(5);
	UTask_wd60sub = GetByte(GetTask(17),2)
	if (UTask_wd == 60*256+20) then
		if (UTask_wd60sub == 2) then 
			Talk(2, "", "B﹜ gi� chi課 tr薾 kh萵 c蕄, quan binh qu﹏ gi韎 ch璦 , ngi h穣 t譵 cho ta m閠 輙 nguy猲 li謚  ch� t筼 v� kh�. ", "Ta l祄 ng祔 l祄 m, nguy猲 li謚 v蒼 kh玭g  d飊g. <color=Red>M� thi誸, m� b筩 c飊g m� ng<color> d飊g h誸 c� r錳. Ngi c� th� n <color=Red>ph輆 T﹜ Nam th祅h<color> t譵 gi髉 ta kh玭g?")
			SetTask(17, SetByte(GetTask(17),2,5))
			AddNote("Th� r蘮 (193,201) n鉯, mu鑞 ch� t筼 binh kh� c莕 3 lo筰 kho竛g th筩h: M� thi誸, m� b筩 v� m� ng. C� th� t譵 th蕐 � T﹜ Nam th祅h Tng Dng.")
		elseif (UTask_wd60sub == 5) then 
			if ( HaveItem(138) == 1 and HaveItem(118) == 1 and HaveItem(121) == 1) then
				Talk(2, "", "Ta  t譵  kho竛g th筩h, hy v鋘g c� th� ch� t筼 ra binh kh� t鑤 nh蕋, tr� gi髉 binh s� kh竛g Kim", "Qu﹏ s� ch� cao nh� n骾, nh蕋 nh c� th� 畊鎖 nh 畊鎖 qu﹏ Kim!")
				DelItem(138)
				DelItem(118)
				DelItem(121)
				SetTask(17, SetByte(GetTask(17),2,8))
				AddNote("T譵 頲 3 lo筰 kho竛g th筩h, c� th� 甧m v� cho th� r蘮!")
				Msg2Player("T譵 頲 3 lo筰 kho竛g th筩h, c� th� 甧m v� cho th� r蘮!")
			else
				tiejiang_city("Kh玭g c� kho竛g th筩h, kh玭g c竎h n祇 l祄 頲 binh kh�. Ngi c� th� 甶 <color=Red>b猲 ngo礽 th祅h ph輆 nam<color> t譵 m閠 輙 <color=Red> m� thi誸, m� b筩 c飊g m� ng<color>?")
			end
		else
			tiejiang_city()
		end		
	else
		tiejiang_city()
	end
end;

function yes()
	Sale(10);  			--弹出交易框
end;

