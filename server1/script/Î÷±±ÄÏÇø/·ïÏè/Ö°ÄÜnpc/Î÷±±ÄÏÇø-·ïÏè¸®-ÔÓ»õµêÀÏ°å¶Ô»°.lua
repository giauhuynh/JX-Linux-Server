--�������� ���踮 �ӻ���ϰ�Ի�
-- VH by anhdung9992001 clbgamesvn--

Include("\\script\\global\\global_zahuodian.lua");

function main(sel)
	local Buttons = store_sel_extend();
Say("Ti�m t�p h�a l�o b�n: Nh� ng��i mu�n mua th� g� ��y? Ch� ta kh�ng thi�u th� g� h�t. Mu�n g� c� n�y. Mu�n xem ch�t kh�ng? ", 2, "Giao d�ch/yes", "R�i kh�i/no");
end;


function yes()
Sale(20); 		--�������׿�
end;

function BuyChristmasCard()
	Sale(97);
end


function no()
end;

