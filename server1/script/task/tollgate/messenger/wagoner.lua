-------------------------------------------------------------------------
-- FileName		:	posthouse.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-04-05 16:28:14
-- Desc			:	�������񳵷�ű�
-------------------------------------------------------------------------
Include("\\script\\task\\tollgate\\messenger\\posthouse.lua") --��������������ݱ�����
Include("\\script\\task\\newtask\\newtask_head.lua") --���� nt_getTask ͬ���������ͻ��˵���
Include("\\script\\task\\tollgate\\messenger\\playerdead_tollgate.lua") --������������ű�
Include("\\script\\task\\tollgate\\messenger\\messenger_timeer.lua")    --���ü�ʱ��


--���������������1201��1202��1203�е�һ��Ϊ20
function messenger_wagoner()
--	Uworld1201 = nt_getTask(1201)
--	Uworld1202 = nt_getTask(1202)
	Uworld1203 = nt_getTask(1203)
	Uworld1204 = nt_getTask(1204)
	if ( Uworld1203 ~= 0 ) then
		if ( Uworld1203 == 10 or Uworld1203 == 20 or Uworld1203 == 21 ) then
			Say("C� mu�n v�o khu v�c kh�ng?",2,"Mu�n/messenger_storewagoner","Kh�ng mu�n/no")
		elseif ( Uworld1203 == 30 ) then
			for i=1,getn(citygo) do   --���Ӧ��������ͬ����
				if ( Uworld1204 == citygo[i][2]) then   --����
					Msg2Player("Xin l�i! Nhi�m v� T�n S� c�a b�n �� ho�n th�nh nh�ng ch�a giao tr�, m�i b�n �i giao tr� nhi�m v�."..citygo[i][4].."Giao nhi�m v� � D�ch tr�m") --����
				end
			end
		end
	else
		Msg2Player("Xin l��ng th�, ng��i v�n ch�a nh�n ���c nhi�m v� ��a Tin, h�y t�m D�ch Quan nh�n nhi�m v� tr��c ��")
	end
end


function messenger_storewagoner()
	SetRevPos(11,10)
	
	NewWorld(395,1417,3207)
	

end