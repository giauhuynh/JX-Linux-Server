--description: ��ԭ���� ������ �����Ի� �䵱�ɳ�ʦ����
--author: yuanlan	
--date: 2003/5/17
-- Update: Dan_Deng(2003-08-08)
-- Update: Dan_Deng(2003-08-17)

Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<dec><npc>Ta ��c bi�t chuy�n v� ch� t�o binh kh�, r�t b�n r�n, ng�i mu�n mua v� kh� sao? C� t� nhi�n m� ch�n."

function main(sel)
	UTask_wd = GetTask(5);
	UTask_wd60sub = GetByte(GetTask(17),2)
	if (UTask_wd == 60*256+20) then
		if (UTask_wd60sub == 2) then 
			Talk(2, "", "B�y gi� chi�n tr�n kh�n c�p, quan binh qu�n gi�i ch�a ��, ng��i h�y t�m cho ta m�t �t nguy�n li�u �� ch� t�o v� kh�. ", "Ta l�m ng�y l�m ��m, nguy�n li�u v�n kh�ng �� d�ng. <color=Red>M� thi�t, m� b�c c�ng m� ��ng<color> d�ng h�t c� r�i. Ng��i c� th� ��n <color=Red>ph�a T�y Nam th�nh<color> t�m gi�p ta kh�ng?")
			SetTask(17, SetByte(GetTask(17),2,5))
			AddNote("Th� r�n (193,201) n�i, mu�n ch� t�o binh kh� c�n 3 lo�i kho�ng th�ch: M� thi�t, m� b�c v� m� ��ng. C� th� t�m th�y � T�y Nam th�nh T��ng D��ng.")
		elseif (UTask_wd60sub == 5) then 
			if ( HaveItem(138) == 1 and HaveItem(118) == 1 and HaveItem(121) == 1) then
				Talk(2, "", "Ta �� t�m �� kho�ng th�ch, hy v�ng c� th� ch� t�o ra binh kh� t�t nh�t, tr� gi�p binh s� kh�ng Kim", "Qu�n s� ch� cao nh� n�i, nh�t ��nh c� th� �u�i ��nh �u�i qu�n Kim!")
				DelItem(138)
				DelItem(118)
				DelItem(121)
				SetTask(17, SetByte(GetTask(17),2,8))
				AddNote("T�m ���c 3 lo�i kho�ng th�ch, c� th� �em v� cho th� r�n!")
				Msg2Player("T�m ���c 3 lo�i kho�ng th�ch, c� th� �em v� cho th� r�n!")
			else
				tiejiang_city("Kh�ng c� kho�ng th�ch, kh�ng c�ch n�o l�m ���c binh kh�. Ng��i c� th� �i <color=Red>b�n ngo�i th�nh ph�a nam<color> t�m m�t �t <color=Red> m� thi�t, m� b�c c�ng m� ��ng<color>?")
			end
		else
			tiejiang_city()
		end		
	else
		tiejiang_city()
	end
end;

function yes()
	Sale(10);  			--�������׿�
end;

