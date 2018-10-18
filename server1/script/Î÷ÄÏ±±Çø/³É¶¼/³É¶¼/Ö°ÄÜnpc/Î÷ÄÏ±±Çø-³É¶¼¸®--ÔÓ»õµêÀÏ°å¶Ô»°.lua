--���ϱ��� �ɶ��� �ӻ���ϰ�Ի� 
--author: yuanlan	
--date: 2003/5/23
-- Update: Dan_Deng(2003-08-12)
Include("\\script\\global\\global_zahuodian.lua");

function main(sel)
	UTask_em = GetTask(1);
	UTask_tm = GetTask(2);
	if (UTask_em == 30*256+50) then 		--������Ģ�ƴ�30������
Say("Ch� ti�m t�p h�a : ta ch� n�y b�n l� c�c lo�i nam b�c t�p h�a , m�i xem v� ch�n th� m�nh c�n ?", 3, "C� b�n ��i g� kh�ng ?/chicken", "Giao d�ch/yes", "Kh�ng giao d�ch/no")
	elseif ((UTask_em == 40*256+50) and (GetByte(GetTask(29),1) == 1)) then		--������40������
		Say("C�c lo�i tr�m c�i m�i nh�t ch� c� 200 l��ng, mua 1 c�i �i", 3, "Mua ng�n tr�m/hairpin", "Mua nh�ng v�t kh�c/yes", "Kh�ng giao d�ch/no")
	elseif (UTask_tm == 10*256+40) then		--�Ʒ��ƺ�10������
		Say("Nh�n m� n�o r�t ��p , 500 l��ng , kh�ng mua s� h�i h�n !", 3, "Mua nh�n m� n�o. /ring", "Giao d�ch/yes", "Kh�ng giao d�ch/no")
	else
		local Buttons = store_sel_extend();
		Say("Ch� ti�m t�p h�a : ta ch� n�y b�n l� c�c lo�i nam b�c t�p h�a , m�i xem v� ch�n th� m�nh c�n ?", getn(Buttons), Buttons);
	end
end;

function chicken()
	if (GetCash() >= 50) then
		Pay(50)
		AddEventItem(119)
		Msg2Player("Mua ���c ��i g�")
		AddNote("� ti�m t�p h�a th�nh d� mua ���c ��i g� ")
	else
		Say("Khi n�o �� ti�n h�y tr� l�i ho�c xem v�t kh�c �i", 2, "Giao d�ch/yes", "Kh�ng giao d�ch/no")		
	end
end;

function hairpin()
	if (GetCash() >= 200) then
		Pay(200)
		AddEventItem(63)
		Msg2Player("Mua ���c ng�n tr�m")
--		SetTask(29, 4)
		AddNote("� ti�m t�p h�a th�nh �� mua ���c ng�n tr�m ")
	else
		Say("Khi n�o �� ti�n h�y tr� l�i ho�c xem v�t kh�c �i", 2, "Giao d�ch/yes", "Kh�ng giao d�ch/no")		
	end
end;


function ring()
	if (GetCash() >= 500) then
		Pay(500)
		AddEventItem(165)
		Msg2Player("Mua ���c nh�n m� n�o ")
		AddNote("� ti�m t�p h�a th�nh d� mua ���c nh�n m� n�o")
	else
		Say("Khi n�o �� ti�n h�y tr� l�i ho�c xem v�t kh�c �i", 2, "Giao d�ch/yes", "Kh�ng giao d�ch/no")		
	end
end;

function yes()
Sale(14);  		--�������׿�
end;

function BuyChristmasCard()
	Sale(97);
end

function no()
end;
