--������\�ٰ�\�ٰ�\npc\����_��СȪ.lua 
--by xiaoyang (2004\4\20)

Include("\\script\\global\\repute_head.lua")

function main()
	Uworld121 = GetTask(121)
	Uworld38 = GetByte(GetTask(38),1)
	if ((Uworld121 < 10) and (GetLevel() >= 90) and (GetReputeLevel(GetRepute()) >= 5) and (Uworld38 == 127) and (GetFaction() ~= "tianwang")) or 
		(GetCamp() == 4 and GetLevel() >= 90 and GetTask(5897) == 0) then
		Talk(3,"Uworld121_get","C�c v� h�o b�ng h�u","T�i h� �� s�m ng��ng m� t�i l�m �ao c�a Tr��ng gia. th�t danh b�t h� truy�n","Kh�ng bi�t c�c h� c� th� gi�p ta m�t chuy�n kh�ng?","N�i �i!")
	elseif (Uworld121 == 10) and (HaveItem(373) == 0) then
		Talk(1,"","Ta c�ng b�i ph�c c�c h�, c�y �ao c�n ch�a c�m �� v�i v� �i.")
		AddEventItem(373)
		Msg2Player("Nh�n l�y �ao ")
	else
		if (random(0,1) == 0) then
			Talk(1,"","Nh� ta 3 ��i ��u theo ngh� l�m �ao c�ng c� ch�c danh ti�ng, ph� th�n ta hy v�ng ta theo h�c ngh� n�y, sau s� m� m�t c�a hi�u nh� nh�ng ta l�i kh�ng th�ch. ")
		else
			Talk(1,"","Ti�u Tuy�n : nh� ta ba ��i ��u l�m �ao c�ng c� ch�c danh ti�ng, cha v�n mu�n ta n�i nghi�p nh�ng ta l�i kh�ng th�ch.")
		end
	end
end

function Uworld121_get()
	if (GetCamp() == 0) and (GetTask(75) < 255) then		-- ����δѧҰ��ȭ�ģ������������
		Talk(1,"","Kh�ng ���c, ta kh�ng th� l�m vi�c n�y.")
	else
		Say("Ta c� m�t thanh �ao tinh luy�n,hy v�ng c�c h� c� th� chuy�n ��n cho s� gi� th�y y�n.",2,"�� s�m nghe ti�ng H� ti�n t�,��y c�ng l� c� h�i g�p m�t/Uworld121_getjd","Xa qu� ta kh�ng �i ���c! /Uworld121_no") --��������
	end
end

function Uworld121_getjd()
	AddEventItem(373)
	Msg2Player("L�y ���c ti�u tuy�n �ao")
	AddNote("L�y ���c �ao l�p t�c t�i Th�y y�n g�p H� ti�n t�.")
	SetTask(121,10) --�����������Ϊ10
	SetTask(5897,1) 
end

function Uworld121_no()
end
