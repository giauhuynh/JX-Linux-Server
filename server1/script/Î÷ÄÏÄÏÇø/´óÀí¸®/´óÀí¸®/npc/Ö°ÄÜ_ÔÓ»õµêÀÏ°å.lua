-- ���ְ�� �ӻ���ϰ�
-- By: Dan_Deng(2003-09-16)
Include("\\script\\global\\global_zahuodian.lua");

function main(sel)
	local Buttons = store_sel_extend();
	Say("Ta m�i m� h�ng tr� l�i, �ng h� ta ch�t n�o...", getn(Buttons), Buttons)
end;

function yes()
	Sale(17)
end;

function BuyChristmasCard()
	Sale(97);
end

function no()
end;
