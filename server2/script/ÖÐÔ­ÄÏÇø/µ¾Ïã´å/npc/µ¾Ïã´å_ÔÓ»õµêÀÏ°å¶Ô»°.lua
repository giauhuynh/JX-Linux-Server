--中原南区 稻香村 杂货店老板对话
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\global\\global_zahuodian.lua");

function main(sel)
	local buttons = store_sel_village_extend();
		Say("H祅g h鉧 m鋓 mi襫 ti謒 c馻 ta u c�. Ngi mu鑞 mua g�?",getn(buttons), buttons);
end;


function yes()
Sale(90);   			--弹出交易框
end;


function no()
end;