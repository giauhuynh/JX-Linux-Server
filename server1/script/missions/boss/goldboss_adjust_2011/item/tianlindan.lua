-- 文件名　：tianlindan.lua
-- 创建者　：wangjingjun
-- 内容　　：天灵丹，每天最多只能使用2个
-- 创建时间：2011-09-01 09:42:31

Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\awardtemplet.lua")

TSK_USED = 2800	-- 任务变量待定
--1 ng祔 dc s� d鬾g 5 l莕 v藅 ph萴 Ti猲 Linh Кn - Modified by DinhHQ - 20111013
NDAILYTIME = 5


function main()
	
	local tbAward = {
		{nExp_tl=1,nCount = 20000000,},
		}
	local szFailMsg = format("M鏸 ng祔 m鏸 nh﹏ v藅 ch� c� th� s� d鬾g nhi襲 nh蕋 %d l莕, i ng祔 mai h穣 s� d鬾g ti誴",NDAILYTIME)	
	if PlayerFunLib:CheckTaskDaily(TSK_USED, NDAILYTIME, szFailMsg, "<") == 1 then
		PlayerFunLib:AddTaskDaily(TSK_USED, 1) 
		tbAwardTemplet:Give(tbAward, 1, {"goldbossadjust_2011", "use_tianlindan"} )
		return 0
	end
	
	return 1
end