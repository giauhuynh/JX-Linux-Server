-- ���ְ�ܡ��Ƿ�ε����&�Ƿ�ε����
-- by��Dan_Deng(2003-09-16)
-- Update: Dan_Deng(2004-05-27) С��ʧ������

Include("\\script\\global\\repute_head.lua")
Include("\\script\\global\\map_helper.lua")
npc_name = "<#>Th�nh m�n v� binh"

function default_talk()
--	UTask_world42 = GetTask(42)	-- ��ַ����丿
--	if ((UTask_world42 == 0) and (GetLevel() >= 80) and (GetReputeLevel(GetRepute()) >= 7)) then		-- ���������������ȼ�������ֵ�Ĺ�ϵ���Ǻܷ�ȷ��Ҫ�ʷ���
--		Talk(6,"U42_get","�Ƿ�ε���ף���˵�ǵ��������С���޹�ʧ�","�Ƿ�ε���ң��ǰ�����ԭ�����ݷҶ��������С��Ҳ�����ˣ�����������Ұ����Ҷ��ӡ�","��ң���λ������������ʢ��","�Ƿ�ε���ף��Ǻǣ���λ��ϵ�Ǳ�̷̷��Ӣ�����䣬��������ܹ��⵵��ʢ����","��ң�������������ƽ�ε�ϵ�����ұ����֡�","�Ƿ�ε���ң���ѽ������ľ�Ǯ���󷻴�������")
--	else
		Talk(4,"","H�m nay ta th�y ���c 9 m� nh�n.","Ti�u t� ch�n s�ng ah!","Nh�n h� t�u h�u nh�n h�, kh�n gi� kh�n na, ��i li�u d� h�o.","Kh�ng sai! Th�t tuy�t ��p! ")
--	end;
end;

function U42_get()
	Say("��ng r�i, l� 5 v�n l��ng.",2,"Hai v� ��i hi�p th�t th� v�/yes1","G�t ���c ng��i kh�c, l�m sao g�t ���c ta!/no")
end;

function yes1()
	if (GetCash()>=50000) then 
		Pay(50000)
		Talk(1,"","C�c h� th�t h�o ph�ng. Nhanh �i D��c v��ng c�c h�i Qu�i nh�n ch�n nh�n. H�n bi�t b� m�t n�y.")
		SetTask(42, 10)
		AddNote("Nh�n nhi�m v�: �i D��c V��ng C�c t�m qu�i ch�n ��o nh�n h�i th�m tin t�c ��a tr�. ")
		Msg2Player("Nh�n nhi�m v�: �i D��c V��ng C�c t�m qu�i ch�n ��o nh�n h�i th�m tin t�c ��a tr�.")
	else
		Talk(1,"","�i �i, kh�ng c� ti�n th� ��i l�m c�i g�, tr� v� l�m n�ng �i!")
	end
end;

function no()
	Talk(1,"","�i �i, kh�ng c� ti�n th� ��i l�m c�i g�, tr� v� l�m n�ng �i!")
end;
