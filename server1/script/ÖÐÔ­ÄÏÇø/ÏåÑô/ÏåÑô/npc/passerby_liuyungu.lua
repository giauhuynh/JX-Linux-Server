-- ÍØ°Ï»³´¨¶Ô»°½Å±¾

Include("\\script\\task\\newtask\\branch\\xiepai\\branch_xiepaitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include([[\script\global\yuenan_feiyunrenwu.lua]]);	--by liaozhishan 11/15/2006

function main()
	local tab_Content = {
		"Ta lµm chi tuyÕn nhiÖm vô/branch_liuyungu", "Ta chØ ®i ngang qua/no"
	};
	if (v_fy_is_active() == 1) then
		tinsert(tab_Content, "NhËn lÊy 100 cÊp t­ëng th­ëng/v_fy_100_entrance")
		Say("Ta cã thÓ gióp ®­îc g× kh«ng ? ", getn(tab_Content), tab_Content);
		return
	end;	
	branch_liuyungu();
end
