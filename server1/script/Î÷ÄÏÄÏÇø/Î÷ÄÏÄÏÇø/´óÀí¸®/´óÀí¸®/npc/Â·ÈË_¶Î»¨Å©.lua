-- 大淀城 ⒎人NPC 段花农（翠烟放30级任务）
-- by：Dan_Deng(2003-07-26)

function main()
	UTask_cy = GetTask(6)
	if (UTask_cy == 30*256+10) then		--30级任务进行中（救孙女启动）
		Talk(6,"","祅 i gia, nghe n鉯 ngi c� nhi襲 lo礽 hoa c ph秈 kh玭g, ta mu鑞 l祄 phi襫 ngi truy襫 cho ta 輙 b� quy誸.","� � .... Ng� kh� li猲 ch h礽 ch� ....","Чi gia, ngi th蕐 th� n祔 nh� th� n祇?","N祅g b� th� ph� 觤 Thng s琻 b総 甶, b﹜ gi� kh玭g hi觰 sinh t� nh� th� n祇 .....","祅 i gia, kh玭g c莕 lo l緉g, ta s� gi髉 ngi 甶 c鴘 n祅g.","Чi hi謕, ngi th藅 l� m閠 ngi t鑤, ch� c莕 ngi gi髉 ta c鴘 li評 ng�, chuy謓 g� ta c騨g p 鴑g! ")
		SetTask(6,30*256+20)
		AddNote("дn 觤 Thng S琻, t譵 th� ph� c鴘 gi髉 祅 gia.")
		Msg2Player("дn 觤 Thng S琻, t譵 th� ph� c鴘 gi髉 祅 gia.")
	elseif (UTask_cy == 30*256+30) then		--30级任务进行中（救孙女蓐成）
		Talk(5,"","C秏 t� ngi, i ﹏ i ngh躠 c馻 ngi ta s� kh玭g bao gi� qu猲.","祅 i gia, ngi bi誸 V� y ngh� thng sao","Ti觰 c� nng, coi nh� ngi h醝 ng ngi, lo筰 v� y ngh� thng l� b� m藅 ch� c� ta bi誸, cho t韎 b﹜ gi� kh玭g c� truy襫 cho ngi ngo礽, nh璶g l�, ngi  gi髉 ta, ta s� truy襫 cho ngi.","V� y ngh� thng c莕 ph秈 c� 3 lo筰 nguy猲 li謚: m閠 lo筰 l� nh� h秈 ch ng﹏ tuy誸 ng� , lo筰 th� hai l� h� 甶謕 tuy襫 b祅g bi猲 ch b輈h thng phng 甶謕, lo筰 th� ba l� v﹏ n玭g nh ch h錸g kh﹗ d蒼."," t� i gia! ")
		SetTask(6,30*256+40)
		AddNote("V� y ngh� thng c莕 ph秈 c� 3 lo筰 nguy猲 li謚: nh� h秈 ch ng﹏ tuy誸 ng� , h� 甶謕 tuy襫 b祅g bi猲 ch b輈h thng phng 甶謕 , v﹏ n玭g nh ch h錸g kh﹗ d蒼.")
		Msg2Player("V� y ngh� thng c莕 ph秈 c� 3 lo筰 nguy猲 li謚: nh� h秈 ch ng﹏ tuy誸 ng� , h� 甶謕 tuy襫 b祅g bi猲 ch b輈h thng phng 甶謕 , v﹏ n玭g nh ch h錸g kh﹗ d蒼.")
	elseif (UTask_cy == 30*256+20) then
		Talk(1,"","N� hi謕, ch� c莕 ngi gi髉 ta c鴘 ngi, chuy謓 g� ta c騨g p 鴑g ngi.")
	else
		Talk(1,"","Tr錸g lo筰 hoa n祔 v鮝 l� m閠 m玭 h鋍 v鮝 l� m閠 m玭 ngh� thu藅.")
	end
end
