--西南北区 成都府 ⒎人14薛小贩对话  峨嵋派40级任务
--author: yuanlan	
--date: 2003/5/23
-- Update: Dan_Deng(2003-08-12)
-- 修改Dan_Deng 的错误：QBJ(2003-10-3)

function main(sel)
	UTask_em = GetTask(1)
	UTask_emsub01 = GetByte(GetTask(29),1)
	if (UTask_em == 40*256+50) then		-- 40级任务中
		if (UTask_emsub01 == 0) then
		Talk(5, "", "Ti誸 Ti觰 mu閕 : v� i t� n祔 , nh� l穙 c飊g � ta , c� chuy謓 g� sao", " b雐 v� mu閕 t� tr猲 ngi ngi c� m閠 lo筰 m飅 th琺 k� d� , cho n猲...", "Ti誸 ti觰 mu閕 : a , ngi th藅 ng鰅 th蕐 sao ? ta d飊g linh x� hng nang , b猲 trong hng li謚 t� T﹜ V鵦 truy襫 t韎 y !", "ng l� linh x� hng nang , kh� tr竎h th琺 nh� v藋 ! mu閕 t� , ngi c� th� hay kh玭g a c竔 n祔 linh x� hng nang b竛 cho ta ? ta c� vi謈 c莕 d飊g"," Ti誸 ti觰 mu閕 :Ta kh玭g b竛 u , ta nghe n鉯 trong th祅h ti謒 t筽 h鉧 g莕 nh蕋 m韎 v鮝 c� chi ng﹏ tr﹎ , ngi c莔 m閠 chi ng﹏ tr﹎ t韎 c飊g ta i 甶 !")
			SetTask(29,SetByte(UTask_emsub01,1,1))			-- 设址task(29)刁1个字襟为1
--			SetTask(29, 2)	
			AddNote("g苝 Ti誸 ti觰 mu閕(383, 315) t譵 頲 linh x� hng nang , nh璶g mu鑞 d飊g ng﹏ tr﹎ trao i .. ")
			Msg2Player("Ti誸 ti觰 mu閕  ngh� d飊g ng﹏ tr﹎ i linh x� hng nang")
		elseif ((UTask_emsub01 == 1) and (HaveItem(63) == 1)) then
			Say("Ti誸 ti觰 mu閕 : th藅 l� p ch ng﹏ tr﹎ , c竔 n祔 hng nang s� a cho ngi ", 1, "l蕐 頲 linh x� hng nang/get")
			DelItem(63)
			AddEventItem(166)
			SetTask(29,SetByte(UTask_emsub01,1,10))
--			SetTask(29, 2)
			AddNote("l蕐 頲 linh x� hng nang")
			Msg2Player("l蕐 頲 linh x� hng nang")
		elseif (UTask_emsub01 == 10) and (HaveItem(166) == 0) then
			AddEventItem(166)
			Talk(1,"","Ti誸 ti觰 mu閕 : mua 頲 ng﹏ tr﹎ sao ?")
		else
			Talk(1,"","Ti誸 ti觰 mu閕 : ta kh玭g c� linh x� hng nang  , ngi c遪 c� chuy謓 g�?")
		end
	else
		Talk(1,"","Ti誸 ti觰 mu閕 : nh� l穙 c飊g � ta , c� chuy謓 g� sao ?")
	end
end;

function get()
end;
