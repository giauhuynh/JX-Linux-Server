--��ԭ���� ���ݸ� �ӻ����ϰ�Ի�
Include("\\script\\global\\global_zahuodian.lua");

function main(sel)
	local Buttons = store_sel_extend();
	Say("��i hi�p c�n b� l�o t�p h�a n�y gi�p g� kh�ng?", getn(Buttons), Buttons);

end;


function yes()
Sale(5);  			--�������׿�
end;

function BuyChristmasCard()
	Sale(97);
end


function no()
end;





