--西北南区 永乐镇 杂货店老板对话
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\global\\global_zahuodian.lua");

function main(sel)
	local buttons = store_sel_village_extend();
		Say("Kh竎h quan c莕 mua th� g�? ? y c竔 g� ta c騨g c�!",getn(buttons), buttons);
end;


function yes()
Sale(84);   			--弹出交易框
end;


function no()
end;
