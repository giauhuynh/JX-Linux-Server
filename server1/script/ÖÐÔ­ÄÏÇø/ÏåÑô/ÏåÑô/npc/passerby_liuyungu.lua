-- �ذϻ����Ի��ű�

Include("\\script\\task\\newtask\\branch\\xiepai\\branch_xiepaitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include([[\script\global\yuenan_feiyunrenwu.lua]]);	--by liaozhishan 11/15/2006

function main()
	local tab_Content = {
		"Ta l�m chi tuy�n nhi�m v�/branch_liuyungu", "Ta ch� �i ngang qua/no"
	};
	if (v_fy_is_active() == 1) then
		tinsert(tab_Content, "Nh�n l�y 100 c�p t��ng th��ng/v_fy_100_entrance")
		Say("Ta c� th� gi�p ���c g� kh�ng ? ", getn(tab_Content), tab_Content);
		return
	end;	
	branch_liuyungu();
end
