--包袱内的信件（新任务系统龙五的包袱）邪派
--by xiaoyang(2004\12\25)

Include("\\script\\task\\newtask\\newtask_head.lua")

function main(sel)
local curCamp = nt_getCamp()
	Uworld1001 = nt_getTask(1001)  --正派
	Uworld1002 = nt_getTask(1002)
	Uworld1003 = nt_getTask(1003)
	Uworld183 = nt_getTask(183)
	Uworld186 = nt_getTask(186)
	Uworld189 = nt_getTask(189)
	local name = GetName()
	if ( Uworld189 == 20 )  then
		Describe("<link=image:\\spr\\item\\questkey\\taskobj091.spr>Th� c馻 Long Ng�<link><enter>"..name..", h穣 n Chu Ti猲 Tr蕁 t譵 V﹏ Nhi! S� c� nhi謒 v� cho ngi! H祅h s� n猲 th薾 tr鋘g! Long ng�!",1,"Nh薾 h祄 th� /no")
		nt_setTask(189,30)
		if ( Uworld1003 < 10 ) then 
			nt_setTask(1003,10) --邪派任务开始
		end
	end
	return 0
end
	
