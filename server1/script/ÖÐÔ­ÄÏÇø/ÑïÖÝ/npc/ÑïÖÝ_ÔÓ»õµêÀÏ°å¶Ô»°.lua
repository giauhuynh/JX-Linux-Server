--中原南区 扬州府 杂货店老板对话
Include("\\script\\global\\global_zahuodian.lua");

function main(sel)
	local Buttons = store_sel_extend();
	Say("Чi hi謕 c莕 b� l穙 t筽 h鉧 n祔 gi髉 g� kh玭g?", getn(Buttons), Buttons);

end;


function yes()
Sale(5);  			--弹出交易框
end;

function BuyChristmasCard()
	Sale(97);
end


function no()
end;





