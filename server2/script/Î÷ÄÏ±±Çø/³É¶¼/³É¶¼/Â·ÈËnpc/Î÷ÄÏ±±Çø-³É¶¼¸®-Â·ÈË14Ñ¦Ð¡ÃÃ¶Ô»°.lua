--���ϱ��� �ɶ��� ����14ѦС���Ի�  ������40������
--author: yuanlan	
--date: 2003/5/23
-- Update: Dan_Deng(2003-08-12)
-- �޸�Dan_Deng �Ĵ���QBJ(2003-10-3)

function main(sel)
	UTask_em = GetTask(1)
	UTask_emsub01 = GetByte(GetTask(29),1)
	if (UTask_em == 40*256+50) then		-- 40��������
		if (UTask_emsub01 == 0) then
		Talk(5, "", "Ti�t Ti�u mu�i : v� ��i t� n�y , nh� l�o c�ng � ta , c� chuy�n g� sao", " b�i v� mu�i t� tr�n ng��i ng��i c� m�t lo�i m�i th�m k� d� , cho n�n...", "Ti�t ti�u mu�i : a , ng��i th�t ng�i th�y sao ? ta d�ng linh x� h��ng nang , b�n trong h��ng li�u t� T�y V�c truy�n t�i ��y !", "��ng l� linh x� h��ng nang , kh� tr�ch th�m nh� v�y ! mu�i t� , ng��i c� th� hay kh�ng ��a c�i n�y linh x� h��ng nang b�n cho ta ? ta c� vi�c c�n d�ng"," Ti�t ti�u mu�i :Ta kh�ng b�n ��u , ta nghe n�i trong th�nh ti�m t�p h�a g�n nh�t m�i v�a c� chi ng�n tr�m , ng��i c�m m�t chi ng�n tr�m t�i c�ng ta ��i �i !")
			SetTask(29,SetByte(UTask_emsub01,1,1))			-- ��ַtask(29)��1���ֽ�Ϊ1
--			SetTask(29, 2)	
			AddNote("g�p Ti�t ti�u mu�i(383, 315) t�m ���c linh x� h��ng nang , nh�ng mu�n d�ng ng�n tr�m trao ��i .. ")
			Msg2Player("Ti�t ti�u mu�i �� ngh� d�ng ng�n tr�m ��i linh x� h��ng nang")
		elseif ((UTask_emsub01 == 1) and (HaveItem(63) == 1)) then
			Say("Ti�t ti�u mu�i : th�t l� ��p ��ch ng�n tr�m , c�i n�y h��ng nang s� ��a cho ng��i ", 1, "l�y ���c linh x� h��ng nang/get")
			DelItem(63)
			AddEventItem(166)
			SetTask(29,SetByte(UTask_emsub01,1,10))
--			SetTask(29, 2)
			AddNote("l�y ���c linh x� h��ng nang")
			Msg2Player("l�y ���c linh x� h��ng nang")
		elseif (UTask_emsub01 == 10) and (HaveItem(166) == 0) then
			AddEventItem(166)
			Talk(1,"","Ti�t ti�u mu�i : mua ���c ng�n tr�m sao ?")
		else
			Talk(1,"","Ti�t ti�u mu�i : ta kh�ng c� linh x� h��ng nang  , ng��i c�n c� chuy�n g�?")
		end
	else
		Talk(1,"","Ti�t ti�u mu�i : nh� l�o c�ng � ta , c� chuy�n g� sao ?")
	end
end;

function get()
end;
