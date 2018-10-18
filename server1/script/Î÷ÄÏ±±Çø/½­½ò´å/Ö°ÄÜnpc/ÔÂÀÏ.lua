-- Ԣ��.lua ���������NPC��NPC���ڵش���
-- By: Dan_Deng(2003-12-27)
-- Uworld67 == GetTask(67)������λ���壺1-7(��������״̬)��8-15(������)��16-23(����)��24(���)��25-32(����)
-- PS��2���Ƿ��͹���ָ��
-- GetTaskTemp(5)���Ǣ��Ƿ������ף������ף�
-- GetTaskTemp(6)���Ǣ������ߵ�����ID
-- GetTaskTemp(7)���Ǣ��������ߵ�����ID
-- ���������δ��, �ȼ�>=20, �з����ӳ�, �з�ȥ��Ԣ��˵��, Ȼ��Ů����ȥ˵������������
-- By: Dan_Deng(2004-03-02) ��д�ű��ṹ���Ա�ά��
-- Update: Dan_deng(2004-03-02) Э�����
-- Update: Fanghao_Wu(2004-8-20) ��Ϧ����
-- Update: �ӷ��� (2007-10-12) �޸��޸���״̬

Include("\\script\\global\\teamhead.lua");
Include("\\script\\event\\valentine2007\\event.lua");
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\answer.lua")

TK_DATE_APPLYDIV = 1779; --������������
TOTALSEC_OF_DAY = 60 * 60 * 24; -- 1����ڶ����룬���ڰ�����ת����
COSTOFSIMGLEDIV = 1000000; --������黨��

function main(sel)
	if (check_married() == 1) then
		SetTask(67, SetBit(GetTask(67), 24, 0));
		Msg2Player("<color=yellow>H�n ph�i c�a b�n �� thay ��i<color>");
	end;
	
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end

	local tbDailog = DailogClass:new(szNpcName)
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog)
	
	if (GetSex() == 0) and (GetTaskTemp(5) == 1) then	
		tbDailog.szTitleMsg = "<#><npc>� chung nh�n c�a ng��i v�n ch�a tr� l�i ng��i,h�y k�u c� �y nhanh ��n ��y?"
		tbDailog:AddOptEntry("T�i ngh� l�i c�u h�n c�a t�i qu� ���ng ��t,ng�i c� th� gi�p ta h�y b�?", male_cancel)
		tbDailog:AddOptEntry("V�ng,ta s� �i g�i", male_hurry)
	elseif (GetSex() == 1) and (GetTaskTemp(5) == 1) then	
		tbDailog.szTitleMsg = "<#><npc>Thi�u hi�p �ang ch� ng��i tr� l�i,c� ��ng � c�ng h�n s�ng qu�n ��i c�n l�i kh�ng?"
		tbDailog:AddOptEntry("V�ng,ta nguy�n c�ng ch�ng �i ��n h�t ki�p n�y.", female_yes)
		tbDailog:AddOptEntry("Kh�ng,ta v�n ch�a mu�n l�y ch�ng", female_cancel)
	else
		tbDailog.szTitleMsg = "<#><npc>Nguy�t l�o ta b�n nhi�u vi�c, ng��i c� g� may n�i ta nghe."
		tbDailog:AddOptEntry("Ta �� c� � trung nh�n,mu�n c�u h�n n�ng", Qmarry)
		tbDailog:AddOptEntry("Ch�ng ta t�nh t�nh kh�ng h�p mu�n chia tay.", divorce)
		tbDailog:AddOptEntry("Ch�ng t�i su�t ng�y g�y g�,xin �ng cho l�i khuy�n.", fix_marry)
		tbDailog:AddOptEntry("Ly h�n ��n ph��ng", singlediv_apply)
		tbDailog:AddOptEntry("��ng � ly h�n ��n ph��ng.", sure_process_dinglediv)
		tbDailog:AddOptEntry("Kh�ng c� g�,ta ch� gh� ngang qua.", no)
	end
	
	tbDailog:Show()
end
-----------���������----------------
--���뵥�������
function singlediv_apply()
	if (check_marrystate() == 0) then
		return
	end;
	
	local nDays = get_passdays();
	local str = "Kh�ng �� th�i gian y�u c�u ly h�n <color=yellow>1 ng�y<color>, ";
	if (nDays > 0) then
		str = format("Ng��i �� y�u c�u ly h�n<color=yellow>%d ng�y<color> nay, ",nDays);
	end;
	if (GetTask(TK_DATE_APPLYDIV) ~= 0) then
		Say(format("nguy�t l�o: %s kh�ng mu�n ti�n h�nh ly h�n.", str), 0);
		return
	end;
	
	Say(format("tr�m n�m m�i c� duy�n g�p m�t,ng�n n�m m�i c� duy�n v� ch�ng,n�u ng��i v�n ki�n quy�t ly h�n th� c�n ��ng ph� <color=yellow>%d v�n<color>. ng��i c� ch�c r�ng v�n gi� � ��nh?",COSTOFSIMGLEDIV), 2,
		"Ta �� suy ngh� k�/makesure_apply",
		"�� ta suy ngh� l�i/no");
end;

--ȷ�����룺���������
function makesure_apply()
	local nDate = GetCurServerTime();
	SetTask(TK_DATE_APPLYDIV, nDate);
	
	WriteLog(format("%s\tAccount:%s[Name:%s] �� y�u c�u ly h�n.",
				GetLocalDate("%Y-%m-%d %H:%M:%S"),
				GetAccount(),
				GetName() ));	
	Say("Nguy�t l�o : m�c d� ng��i �� quy�t ��nh,nh�ng �� cho ng��i suy ngh� v� kh�ng h�i h�n, m�t tu�n sau g�p l�i ta.", 0);
	informother(Say, format("C�c h� %s �� ���c nguy�t l�o ch�p thu�n quay l�i sau m�t tu�n�<color=yellow>s� �o�n tuy�t m�i quan h�<color>.",GetName()), 0);
end;

--֪ͨ��ż
function informother(proc, ...)
	local Lover = GetMateName();
	if (Lover == "") then 
		return 1
	end;
	
	local nOldPlayer = PlayerIndex
	local nIdx = SearchPlayer(Lover);
	if (nIdx <= 0) then
		return 1;
	end;
	
	if (not proc or type(proc) ~= "function") then
		return 1;
	end;
	PlayerIndex = nIdx;
	call(proc, arg);
	
	PlayerIndex = nOldPlayer;
end;


--���뵥�������
function sure_process_dinglediv()
	if (check_marrystate() == 0) then
		return
	end;
	
	if (GetTask(TK_DATE_APPLYDIV) == 0) then
		Say("nguy�t l�o : ng��i v�n mu�n ly h�n?", 2,
			"��ng � ly h�n/singlediv_apply",
			"Ta suy ngh� l�i/no");
		return
	end;
	
	local nDays = get_passdays();
	local str = "Ch�a �� th�i gian ly h�n <color=yellow>1 ng�y<color>, ";
	if (nDays > 0) then
		str = format("Ng��i m�i y�u c�u ly h�n <color=yellow>%d ng�y<color>, ",nDays);
	end;
	if (nDays < 7) then
		Say(format("Nguy�t l�o : ng��i qu� n�ng l�ng v�n ch�a �� %s m�t tu�n, v� suy ngh� k� �i",str), 0);
		return 0;
	end;
	
	Say(format("tr�m n�m m�i c� duy�n g�p m�t,ng�n n�m m�i c� duy�n v� ch�ng,n�u ng��i v�n ki�n quy�t ly h�n th� c�n ��ng ph� <color=yellow>%d v�n<color>. Ng��i th�t mu�n �o�t tuy�t nh�n duy�n n�y?", COSTOFSIMGLEDIV), 2,
		"Ta ��ng �/process_dinglediv",
		"Ta c�n suy ngh� l�i/no");
end;

--���е��������
function process_dinglediv()
	if (GetCash() < COSTOFSIMGLEDIV) then
		Say(format("Nguy�t l�o : �� ly h�n c�n ��ng <color=yellow>%d<color> v�n, ng��i kh�ng mang �� ti�n!",COSTOFSIMGLEDIV), 0);
		return 0;
	end;
	
	if (Pay(COSTOFSIMGLEDIV) == 0) then
		return
	end;
	
	divorce_dateproc(PlayerIndex);
	WriteLog(format("%s\tAccount:%s[Name:%s] �� ti�n h�nh ly h�n.",
				GetLocalDate("%Y-%m-%d %H:%M:%S"),
				GetAccount(),
				GetName() ));
	Say("Nguy�t l�o : b�y gi� ng��i �� ly h�n, mong l� sau n�y ng��i s� t�m ���c ng��i t�t h�n.", 0);
	
	Msg2Player(format("�� ��ng <color=yellow>%d v�n<color> cho th� t�c ly h�n.", COSTOFSIMGLEDIV));
	Msg2Player("B�n �� th�nh ng��i ��c th�n.");
	informother(divorce_dateproc);
	informother(Say, format("c�c h� %s ��n nguy�t l�o xin<color=yellow>ly h�n<color>, �o�n tuy�t quan h� v� ch�ng.",GetName()), 0);
end;

--��������˶�����
function get_passdays()
	local nApplyDate = GetTask(TK_DATE_APPLYDIV);
	local nDate = GetCurServerTime();
	if (nApplyDate == 0 or nDate < nApplyDate) then
		return -1;
	end;
	
	local nDays = floor((nDate - nApplyDate) / TOTALSEC_OF_DAY);
	return nDays;
end;

--���õ����������
function divorce_dateproc()
	local nWorld67 = GetTask(67);
	nWorld67 = SetBit(nWorld67,24,0);
	SetTask(TK_DATE_APPLYDIV, 0);
	UnMarry();
	
	nRepute = GetRepute();				-- ����ϵ�ش���
	if (nRepute > 10) then
		nRepute = 10;
	end;
	AddRepute(-1 * nRepute)								-- ����10��(����10����Ϊ0);
	
	nDivorceTimes = GetByte(nWorld67,2) + 1
	if (nDivorceTimes > 100) then
		nDivorceTimes = 100;
	end;
	nWorld67 = SetByte(nWorld67, 2, nDivorceTimes);
	SetTask(67,nWorld67);
end;

--�����������뵥��������״̬
function check_marrystate()
	local nLvl = GetLevel();
	local nSex = GetSex();
	local bMarried = GetBit(GetTask(67),24);
	
	if (nLvl < 20) then
		Say("nguy�n l�o : kh�ng n�n ��a gi�n,ng��i c�n ch�a �� tu�i th�nh gia ��u.", 0);
		return 0;
	end;
	
	local str = "N�";
	if (nSex == 1) then
		str = "Nam";
	end;
	
	if (bMarried == 0) then
		Say(format("nguy�t l�o : ��ng c� ��a gi�n v�i l�o ng��i c�n ch�a k�t h�n sao l�i ��i ly h�n mau �i t�m %s � trung nh�n �i.", str), 0);
		return 0;
	end;
	return 1;
end;
function check_married_team()
	local nOldPlayer = PlayerIndex;
	local nTeamSize = GetTeamSize();
	if (nTeamSize ~= 2) then
		return 1;
	end;
	local mem = {};
	mem[1] = GetTeamMember(1);
	mem[2] = GetTeamMember(2);
	local szName = "";
	for i = 1, nTeamSize do
		PlayerIndex = mem[i];
		if (check_married() == 1) then --��������������
			szName = GetName();
			SetBit(GetTask(67),24,0);
			SetTask(67,1);
		end;
		PlayerIndex = nOldPlayer;
	end;
	if (szName == "") then
		return 1
	end;
	
	local str = format("<color=yellow>Tr�ng th�i h�n nh�n  %s �� thay ��i<color>",szName)
	for i = 1, nTeamSize do
		OtherPlayer(mem[i], Msg2Player, str);
	end;
	return 1;
end;


function check_married()
	if (GetMateName() == "" and GetBit(GetTask(67),24) == 1) then
		return 1;
	end;
	return 0;
end;

----------------------- ��Ϧ���9�鰮���ɿ�����ȡ���� ------------------
function chocolate()
	Say("9 kh�i s�c t�nh duy�n c� th� ��i 999 v�n �i�m kinh nghi�m, ho�c c� th� ��i qu� ng��i l�a ch�n lo�i n�o?",3,"��i 9999 v�n kinh nghi�m/chocolate_exp","��i ph�n th��ng/chocolate_gift","Kh�ng ta ch� gh� qua th�i!/no");
end

function chocolate_exp()
	local nNowDate = tonumber(date("%d"));
	if(CalcEquiproomItemCount( 6, 1, 833, 1) < 9) then
		Say("Ng��i kh�ng �� 9 kh�i s�c t�nh duy�n, thi�u 1 c�i c�ng kh�ng ���c",0);
		return
	end
	if(GetTask(1564) == nNowDate) then
		if(GetTask(1565) > 0) then
			Say("N�u ng��i mu�n ��i th�nh �i�m kinh nghi�m th� m�i ng�y ch� c� th� ��i 1 l�n, l�o kh�ng th�ch nhi�u �� ng�t ��u.",0);
			return
		end
		ConsumeEquiproomItem( 9, 6, 1, 833, 1);
		AddOwnExp(9990000);
		SetTask(1565,GetTask(1565)+1);
	else
		ConsumeEquiproomItem( 9, 6, 1, 833, 1);
		AddOwnExp(9990000);
		SetTask(1565,1);
		SetTask(1564,nNowDate);
	end
end

function chocolate_gift()
	if(CalcEquiproomItemCount( 6, 1, 833, 1) < 9) then
		Say("Ng��i kh�ng �� 9 kh�i s�c t�nh duy�n, thi�u 1 c�i c�ng kh�ng ���c!",0);
		return
	end
	ConsumeEquiproomItem( 9, 6, 1, 833, 1);	
	local i = random(1,1000);
	if(i <= 300) then
		AddEventItem(353);
		Msg2Player("ng��i ��i ���c 1 tinh h�ng b�o th�ch");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: may m�n ��i ���c tinh h�ng b�o th�ch");	
	elseif(i > 300 and i <= 460) then
		AddEventItem(238);
		Msg2Player("Ng��i ��i ���c 1 lam th�y tinh");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: May m�n ��i ���c 1 lam th�y tinh");		
	elseif(i > 460 and i <= 620) then
		AddEventItem(240);
		Msg2Player("Ng��i ��i ���c 1 l�c th�y tinh");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: May m�n ��i ���c 1 l�c th�y tinh");		
	elseif(i > 620 and i <= 800) then
		AddEventItem(239);
		Msg2Player("ng��i ��i ���c 1 t� th�y tinh");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: May m�n ��i ���c 1 t� th�y tinh");		
	elseif(i > 800 and i <= 949) then
		AddItem(6,1,147,6,0,0);
		Msg2Player("ng��i ��i ���c 1 huy�n tinh kho�ng th�ch 6");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: May m�n ��i ���c huy�n tinh kho�ng th�ch 6 ");		
	elseif(i > 949 and i <= 979) then
		AddItem(6,1,147,7,0,0);
		Msg2Player("ng��i ��i ���c 1 huy�n tinh kho�ng th�ch 7");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: May m�n ��i ���c huy�n tinh kho�ng th�ch 7");		
	elseif(i > 979 and i <= 989) then
		AddItem(6,1,147,8,0,0);
		Msg2Player("ng��i ��i ���c 1 huy�n tinh kho�ng th�ch 8");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: May m�n ��i ���c huy�n tinh kho�ng th�ch 8");		
	elseif(i > 989 and i <= 990) then
		AddItem(6,1,147,9,0,0);
		Msg2Player("ng��i ��i ���c 1 huy�n tinh kho�ng th�ch 9");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: May m�n ��i ���c huy�n tinh kho�ng th�ch 9");		
	elseif(i > 990 and i <= 1000) then
		AddItem(6,1,398,9,0,0);
		Msg2Player("ng��i ��i ���c 1 th�n b� qu�ng th�ch ");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: May m�n ��i ���c 1 th�n b� qu�ng th�ch");		
	else
	end
end
----------------------- ��Ϧ���9�鰮���ɿ�����ȡ���� ------------------

----------------------- ͨ�ù��ܺ��� ------------------
function default_talk()			-- ȱʡ�Ի�
	Talk(1,"","N�u nh� ng��i �� c� � chung nh�n,ch� c�n c� 2 �� �� tu�i tr��ng th�nh v� ��u ��c th�n,h�y d�t t�i ��y ra m�t l�o,l�o s� t�c h�p cho 2 ng��i.ch� c�n ng��i c�u h�n v� n�ng ��ng � th� l��ng duy�n c�a 2 ng��i s� ���c t�c h�p.")
end

function check_team()
	Player1_ID = GetTeamMember(1)
	Player2_ID = GetTeamMember(2)
-- ��ѯ�����е�Ů�Գ�Ա��������Ǣ�����ID����ʱ����
	if (OtherPlayer(Player2_ID,GetSex) == 1) then
		His_ID = Player1_ID
		Her_ID = Player2_ID
		Her_world67 = OtherPlayer(Her_ID,GetTask,67)
		His_world67 = OtherPlayer(His_ID,GetTask,67)
	elseif (OtherPlayer(Player1_ID,GetSex) == 1) then
		His_ID = Player2_ID
		Her_ID = Player1_ID
		Her_world67 = OtherPlayer(Her_ID,GetTask,67)
		His_world67 = OtherPlayer(His_ID,GetTask,67)
	else
		His_ID = 0
		Her_ID = 0
	end
	return His_ID,Her_ID,His_world67,Her_world67
end

function do_qmarry_cancel()
	His_ID,Her_ID,His_world67,Her_world67 = check_team()
	if (OtherPlayer(His_ID,GetTaskTemp,0,5) == 1) and (OtherPlayer(Her_ID,GetTaskTemp,0,5) == 1) and (OtherPlayer(Her_ID,GetTaskTemp,0,6) == His_ID) and (OtherPlayer(His_ID,GetTaskTemp,0,7) == Her_ID) then	-- ˫�������ܶ��ϣ�����ɾ��
		OtherPlayer(His_ID,SetTaskTemp,5,0)
		OtherPlayer(His_ID,SetTaskTemp,6,0)
		OtherPlayer(His_ID,SetTaskTemp,7,0)
		OtherPlayer(Her_ID,SetTaskTemp,5,0)
		OtherPlayer(Her_ID,SetTaskTemp,6,0)
		OtherPlayer(Her_ID,SetTaskTemp,7,0)
--		Msg2Player("���ȡ���ɹ���")
--	else
--		Msg2Player("�޷�ȡ����顣")
	end
end

function OtherPlayer_talk(PlayerId, msg)		-- Ϊ���˷���Ϣ
	OldPlayer = PlayerIndex
	PlayerIndex = PlayerId
	Talk(1,"",msg)
	PlayerIndex = OldPlayer
end
----------------------- ���ϵ�� -----------------------
function Qmarry()			-- ����Լ����Ϸ��Լ��
	if (GetFaction() == "shaolin") or (GetFaction() == "emei") then		-- ������ò�׼���
		Talk(1,"","Ng��i l� ng��i xu�t gia l�m sao c� th� th�nh h�n,h�y r�i kh�i m�n ph�i tr��c �i.")
	elseif (GetSex() == 1) then											-- ��ͨ�Ķ�Ů�Ե�˵��
		Talk(1,"","Ng��i ���ng ���ng l� m�t c� n��ng l�m sao c� th� ch� ��ng,h�y �� nam nh�n ��n ng� l�i tr��c �i!")
	elseif (GetTeamSize() ~= 2) or (IsCaptain() ~= 1) then		-- (������Ա����)��(�Լ����Ƕӳ�)��תȱʡ�Ի�
		default_talk()
	else					-- ���������������ҿ�ʼ������
		His_ID,Her_ID,His_world67,Her_world67 = check_team();
--		check_married_team();
		if (Her_ID == 0) then				-- ��������Ů�Գ�Ա��תȱʡ�Ի�
			Talk(1,"","hai ng��i c�c ng��i ���ng ���ng l� nam t� h�n sao l�i c� th� k�t h�n,��nh h� d�a l�o �!")
--			default_talk()
		elseif (OtherPlayer(Her_ID,GetFaction) == "emei") then		-- ��׼Ȣ���
			Talk(1,"","Ni c� th� l�m sao c� th� k�t h�n,ta khuy�n ng��i h�y ho�n t�c tr��c ��!")
		elseif (GetBit(His_world67,24) == 1) then				-- �з��ѻ�
			Talk(1,"","Ng��i �� c� th� t� kh�ng l� ng��i mu�n tam th� t� thi�p?")
		elseif (GetBit(Her_world67,24) == 1) then		-- Ů���ѻ�
			Talk(1,"","<#> ng��i l�"..OtherPlayer(Her_ID,GetName).."<#> g�i �� c� ch�ng l�m sao c� th� t�i gi� n�a!")
		elseif (GetLevel() < 20) or (OtherPlayer(Her_ID,GetLevel) < 20) then		-- ���˵ȼ�����
			Talk(1,"","ng��i c�n qu� nh� sau n�y tr��ng th�nh h�y quay l�i!")
		else									-- ������������
			SetTaskTemp(7,Her_ID)
			SetTaskTemp(6,His_ID)
			Say("thi�u hi�p c� ph�i ��nh c�ng c� n��ng k� b�n k�t th�nh phu ph�?",2,"��ng ta mu�n c�u h�n n�ng/qmarry_get","Kh�ng ch�ng ta ch� t�nh c� g�p/qmarry_no")
		end
	end
end

function qmarry_get()			-- �з�����������
	SetTaskTemp(5,1)
	His_ID,Her_ID,His_world67,Her_world67 = check_team()
	if (GetTeamSize() ~= 2) or (GetTaskTemp(7) ~= Her_ID) then			-- ���鷢���˸ı䣬�ܾ�������
		Talk(1,"","Ng��i do d� qu� l�u c� n��ng �� b� �i r�i!")
	else
		Her_Name = OtherPlayer(Her_ID,GetName)
		Talk(1,"","<#>R�t t�t hai ng��i qu� l� tr�i sinh m�t ��i"..Her_Name.."<#> �� ta h�i c� n��ng kia � ��nh ra sao.")
		Msg2Player("<#> ng��i quy�t ��nh c�u h�n "..Her_Name.."<#> �em t�m t� c�a m�nh n�i cho nguy�t l�o bi�t.")
		OtherPlayer(Her_ID,Msg2Player,GetName().."<#> Ng��i ��ng � g� cho h�n? h�y nhanh tr� l�i cho l�o bi�t.")
		OtherPlayer(Her_ID,SetTaskTemp,5,1)
		OtherPlayer(Her_ID,SetTaskTemp,6,His_ID)
		OtherPlayer(Her_ID,SetTaskTemp,7,Her_ID)
	end
end

function male_cancel()			-- �з���ȡ������
	do_qmarry_cancel()
	Talk(1,"","�p bu�c kh�ng h�nh ph�c,n�u n�ng ch�a s�n s�ng th� h�y ch� th�i gian sau!")
	Msg2Player("tr��c m�t ng��i c� n��ng c�m th�y x�u h�,bu�ng tha cho n�ng �� l�n sau h�i l�i.")
	OtherPlayer(Her_ID,Msg2Player,GetName().."<#> C� tuy�t l�i c�u h�n c�a ng��i.")		-- ��Ϣ�Ƿ���Ů����ע����Ϣ����ϵ��
end

function male_hurry()		-- ��飺�ߴ�
	Her_ID = GetTaskTemp(7)
	OtherPlayer(Her_ID,Msg2Player,GetName().."<#> Ng��i ��ng � g� cho h�n? h�y nhanh tr� l�i cho l�o bi�t!")
end

----------------------- ����顢ȷ�ϻ��� -------------
function female_cancel()		-- Ů�����ܾ�����
	do_qmarry_cancel()
	Talk(1,"","Ng��i kh�ng ��ng � �� ta n�i cho h�n bi�t!")
	Msg2Player("Qu� �en cho m�nh l� thi�n nga ? ng��i nh�t ��nh c� tuy�t l�i c�u h�n c�a h�n.")
	OtherPlayer(His_ID,Msg2Player,GetName().."<#> n�ng �� c� tuy�t l�i c�u h�n c�a ng��i,c� g�ng l�n sau nha!")
end

function female_yes()			-- Ů������������
	His_ID,Her_ID,His_world67,Her_world67 = check_team()
	His_Name	= OtherPlayer(His_ID,GetName)
	Her_Name	= GetName()
	if (GetBit(Her_world67,24) == 1) then				-- �ѻ�
		Talk(1,"","Ng��i �� c� phu qu�n sao c�n mu�n l�y ng��i kh�c?")
	elseif (GetTeamSize() ~= 2) then		-- ���������Ѹı�
		Talk(1,"","Ta kh�ng th�y � chung nh�n c�a ng��i,h�y c�ng ��n v�i nhau ta m�i c� th� k�t h�p!")
	elseif (His_ID ~= GetTaskTemp(6)) then			-- �ӳ����������
		Talk(1,"","Gi�ng nh� ng��i mu�n c�ng nhi�u ng��i k�t h�n,th�t ra ng��i mu�n l�y ng��i n�o?")
	else				-- �����Ѿ����ϣ����н�鴦��
		DoMarry(GetTeam())
		
				-- �������жϻ�����ϵ�Ƿ�����ȷ��������ֱ�ӷ��� by zero 2007/06/27
		local szMaleName, szFemaleName = "","";
		local nOldPlayerIndex = PlayerIndex;
		
			PlayerIndex = His_ID;
			szMaleName = GetMateName();
			PlayerIndex = nOldPlayerIndex;
			szFemaleName = GetMateName();
			
		if szMaleName == "" or szFemaleName=="" then
			Msg2Player("<color=yellow>Quan h� v� ch�ng ch�a ���c c�ng nh�n h�y th� l�i l�n n�a!<color>");
			OtherPlayer(His_ID, Msg2Player, "<color=yellow>Quan h� v� ch�ng ch�a ���c c�ng nh�n h�y th� l�i l�n n�a!<color>");
			return
		end;
		
		
		SetTaskTemp(5,0)		--ȡ�����״̬
		SetTaskTemp(6,0)
		SetTaskTemp(7,0)
		OtherPlayer(His_ID,SetTaskTemp,5,0)
		OtherPlayer(His_ID,SetTaskTemp,6,0)
		OtherPlayer(His_ID,SetTaskTemp,7,0)
		Her_world67 = SetBit(Her_world67,24,1)		-- ���ý�����
		His_world67 = SetBit(His_world67,24,1)
		if (GetBit(Her_world67,2) == 0) and (GetLevel() >= 50) then		-- Ů���ͽ�ָ
			Her_world67 = SetBit(Her_world67,2,1)		-- ���ý����������ͽ�ָ��
			present_ring(Her_ID)
		end
		if (GetBit(His_world67,2) == 0) and (OtherPlayer(His_ID,GetLevel) >= 50) then		-- �з��ͽ�ָ
			His_world67 = SetBit(His_world67,2,1)		-- ���ý����������ͽ�ָ��
			present_ring(His_ID)
		end
		SetTask(67,Her_world67)
		OtherPlayer(His_ID,SetTask,67,His_world67)

		Msg2Player("<#> Ng��i ti�p nh�n l�i c�u h�n"..His_Name.."<#> ch�c m�ng hai v� tr�m n�m t�nh duy�n m�ng,b�c ��u ngh�a phu th�!")
		OtherPlayer(His_ID, Msg2Player, Her_Name.."<#> �� ti�p nh�n l�i c�u h�n, ch�c hai v� tr�m n�m t�nh duy�n m�ng,b�c ��u ngh�a phu th�!")
		OtherPlayer_talk(His_ID, "Ch�c m�ng hai v� d�y t� h�ng �� ch�i ch�t,sau n�y ng�t b�i c�ng h��ng!")
		OtherPlayer_talk(Her_ID, "Ch�c m�ng hai v� d�y t� h�ng �� ch�i ch�t,sau n�y ng�t b�i c�ng h��ng!")
		AddGlobalCountNews("<#> Ch�c ta c�ng nhau ch�c m�ng "..His_Name.."<#> k�t duy�n c�ng "..GetName().."<#> c�ng ch�c cho h� tr�m n�m t�nh duy�n m�n,b�c ��u ngh�a phu th�!",3)
		
	end
end

function present_ring(PlayerId)			-- �ͽ�ָ���жϡ��ñ����������������У�
	OldPlayer = PlayerIndex
	PlayerIndex = PlayerId

	item_level = floor(GetLevel() / 10) + 2
	if (item_level > 10) then
		item_level = 10
	end
--	item_lucky = (item_level - 3) * 5
	p = {0,0,0,0,0,0}
	j = item_level - 6
	if (j > 6) then j = 6 end
	for i=1,j do
		if (item_level - i - 2 < 0) then
			p[i] = 0
		else
			p[i] = item_level - i - 2
		end
	end
	AddItem(0,3,0,item_level,random(0,4),5,p[1],p[2],p[3],p[4],p[5],p[6])
	Msg2Player("Nguy�n l�o ��a cho ng��i m�t chi�c nh�n ")
	PlayerIndex = OldPlayer
end

----------------------- �޸�������ϵ -------------------
function fix_marry()
	if( GetTeamSize() == 2 ) then
		His_ID,Her_ID,His_world67,Her_world67 = check_team()
		His_Name = GetName()
		Her_Name = OtherPlayer(Her_ID,GetName)
		if (His_ID ~= 0) and (Her_ID ~= 0) and (GetBit(His_world67,24) == 1) and (GetBit(Her_world67,24) == 1) and (OtherPlayer(His_ID,GetMateName) == "") and (OtherPlayer(Her_ID,GetMateName) == "") then		-- ���ԡ����˶��顢���ѻ飬����Ϊ�����޸�
			Talk(1,"","Phu th� g�y g� l� chuy�n th��ng,c�ng suy ngh� l�i v� b�t tay gi�ng h�a!")
			DoMarry(GetTeam())
			Msg2Player("<#> ng��i c�ng"..Her_Name.."<#> �� kh�i ph�c m�i quan h� t�t l�nh")
			OtherPlayer(Her_ID,Msg2Player,"<#> ng��i c�ng"..His_Name.."<#> �� kh�i ph�c m�i quan h� t�t l�nh")
		elseif (GetBit(GetTask(67),24) == 1) and (GetMateName() == "") then			-- �����޸������Է�����������
			if (GetSex() == 0) then
				Talk(1,"","Phu th� g�y g� l� chuy�n th��ng,ng��i h�y c�ng ng��i y�u t�i ��y �� l�o cho m�t l�i khuy�n!")
			else
				Talk(1,"","Phu th� g�y g� l� chuy�n th��ng,ng��i h�y c�ng ng��i y�u t�i ��y �� l�o cho h�n !")
			end
		else			-- �Լ�����������
			if (GetSex() == 0) then
				Talk(1,"","R� r�ng kh�ng c� g�, ng��i l�a ta?")
			else
				Talk(1,"","kh�ng c� g� ��ng phi�n ta!")
			end
		end
	else
		if (GetSex() == 0) then
			Talk(1,"","Phu th� g�y g� l� chuy�n th��ng,ng��i h�y c�ng ng��i y�u t�i ��y �� l�o cho m�t l�i khuy�n!")
		else
			Talk(1,"","Phu th� g�y g� l� chuy�n th��ng,ng��i h�y c�ng ng��i y�u t�i ��y �� l�o cho m�t l�i khuy�n!")
		end
	end
end

----------------------- ���ϵ�� -----------------------
function divorce()
	if (GetTeamSize() == 2) and (IsCaptain() == 1) then		-- ��ӡ�����Ϊ2���Լ��Ƕӳ�
		His_ID,Her_ID,His_world67,Her_world67 = check_team()
		His_Name = OtherPlayer(His_ID,GetName)
		Her_Name = OtherPlayer(Her_ID,GetName)
		if (GetBit(His_world67,24) == 1) and (OtherPlayer(His_ID,GetMateName) == Her_Name) and (GetBit(Her_world67,24) == 1) and (OtherPlayer(Her_ID,GetMateName) == His_Name) then		-- ˫������ϵ��ȷ
			Say("Ly h�n kh�ng ph�i l� tr� ��a, ng��i n�n suy ngh� k�?",2,"Ta �� quy�t ��nh ly h�n!/divorce_yes","�� ta suy ngh� l�i/no")
		else
			Talk(1,"","Ng��i mu�n c�ng ai ly h�n? ng��i n�y kh�ng ph�i v� ng��i!")
		end
	else
		Talk(1,"","Mu�n ly h�n ph�i c� ch�ng v� v� �i c�ng ta m�i ti�n h�nh ���c!")
	end
end

function divorce_yes()
	His_ID,Her_ID,His_world67,Her_world67 = check_team()
	if (GetTeamSize() ~= 2) or (His_ID == 0) or (Her_ID == 0) or (OtherPlayer(His_ID,GetMateName) ~= Her_Name) or (OtherPlayer(Her_ID,GetMateName) ~= His_Name) then			-- �������״̬
		Talk(1,"","Ng��i do d� qu� l�u, ng��i kia �� �i m�t r�i!")
	elseif (GetCash() >= 50000) then
		Pay(50000)
		UnMarry(GetTeam())						-- ���������ϵ]
--Msg2Player("His_world67="..His_world67.."  Her_world67="..Her_world67)
		His_repute = OtherPlayer(His_ID,GetRepute)				-- �з�ϵ�ش���
		if (His_repute > 10) then His_repute = 10 end
		OtherPlayer(His_ID,AddRepute,-1 * His_repute)								-- ���з�����10��(����10����Ϊ0)
		His_DivorceTimes = GetByte(His_world67,2) + 1								-- ����������
		if (His_DivorceTimes > 100) then His_DivorceTimes = 100 end			-- ����100�β��ټǢ�
		His_world67 = SetByte(His_world67,2,His_DivorceTimes)						-- ������д��
		His_world67 = SetBit(His_world67,24,0)											-- ����״̬
--Msg2Player("His_world67="..His_world67)
		OtherPlayer_talk(His_ID,"N�u c� hai c�ng ��ng � th� ta s� ti�n h�nh ly h�n, c� 2 �� ���c t� do.")		-- Ϊ˫���������Ϣ
		Her_repute = OtherPlayer(Her_ID,GetRepute)				-- Ů��ϵ�ش���
		if (Her_repute > 10) then Her_repute = 10 end
		OtherPlayer(Her_ID,AddRepute,-1 * Her_repute)								-- ��Ů������10��(����10����Ϊ0)
		Her_DivorceTimes = GetByte(Her_world67,2) + 1
		if (Her_DivorceTimes > 100) then Her_DivorceTimes = 100 end
		Her_world67 = SetByte(Her_world67,2,Her_DivorceTimes)
		Her_world67 = SetBit(Her_world67,24,0)
--Msg2Player("Her_world67="..Her_world67)

		OtherPlayer(His_ID,SetTask,67,His_world67)
		OtherPlayer(Her_ID,SetTask,67,Her_world67)
		OtherPlayer_talk(Her_ID,"N�u c� hai c�ng ��ng � th� ta s� ti�n h�nh ly h�n, c� 2 �� ���c t� do.")
	else
		Talk(1,"","ng��i kh�ng mang �� ti�n ly h�n c�n 5 v�n l��ng!")
	end
end

----------------------- �ϻ���ϵ�� ---------------------
function gather_bonus()
	Say("Ta c�n 3 h�p hoan bao,3 uy�n ��ng m�t, 3 t�nh � k�t c� th� ��i 1 kh�i th�y tinh v� 1 t�m t�m t��ng �nh ph�.\n 2 h�p hoan bao,2 uy�n ��ng m�t h�a,2 t�nh � k�t h�p th�nh 1 kh�i ng�n nguy�n b�o 1 t�m tam t��ng �nh ph�.  \n 1 h�p hoan bao,1 uy�n ��ng m�t h�a,1 t�nh � k�t h�p th�nh 1 t�m tam t��ng �nh ph� \n Ng��i mu�n ��i lo�i n�o",4,"Ta ��i th�y tinh v� t�m t�m t��ng �nh ph� /gather_bonus1","Ta mu�n ��i ng�n b�o v� t�m t�m t��ng �nh ph�/gather_bonus2","Ta ch� ��i t�m t�m t��ng �nh ph�/gather_bonus3","Th�t xin l�i ta ch� gh� qua/no")
end

function gather_bonus1()
	if (GetItemCount(344) >= 3) then				-- �ϻ���
		if (GetItemCount(345) >= 3) then			-- ԧ����
			if (GetItemCount(346) >= 3) then		-- �����
				for i=1,3 do
					DelItem(346)
					DelItem(345)
					DelItem(344)
				end
				AddItem(6,1,18,1,0,0,0)			-- ����ϵӡ��
				i = 238 + random(0,2)		-- �����һ�ű�ʯ
				AddEventItem(i)
				Talk(1,"","Th�t t�t qu� ta g�i ng��i 1 th�y tinh v� 1 t�m t�m t��ng �nh ph� ch�c 2 ng��i h�nh ph�c!")
			else
				Talk(1,"","Ng��i kh�ng �� 3 t�nh � k�t ")
			end
		else
			Talk(1,"","Ng��i kh�ng �� 3 uy�n ��ng m�t")
		end
	else
		Talk(1,"","Ng��i kh�ng �� 3 h�p hoan bao")
	end
end

function gather_bonus2()
	if (GetItemCount(344) >= 2) then				-- �ϻ���
		if (GetItemCount(345) >= 2) then			-- ԧ����
			if (GetItemCount(346) >= 2) then		-- �����
				for i=1,2 do
					DelItem(346)
					DelItem(345)
					DelItem(344)
				end
				AddItem(6,1,18,1,0,0,0)			-- ����ϵӡ��
				AddEventItem(342)
				Talk(1,"","Th�t t�t qu� ta g�i ng��i 1 ng�n b�o v� 1 t�m t�m t��ng �nh ph� ch�c 2 ng��i h�nh ph�c!")
			else
				Talk(1,"","Ng��i kh�ng �� 2 t�nh � k�t")
			end
		else
			Talk(1,"","Ng��i kh�ng �� 2 uy�n ��ng m�t")
		end
	else
		Talk(1,"","Ng��i kh�ng �� 2 h�p hoan bao")
	end
end

function gather_bonus3()
	if (HaveItem(344) == 1) then				-- �ϻ���
		if (HaveItem(345) == 1) then			-- ԧ����
			DelItem(344)
			DelItem(345)
			AddItem(6,1,18,1,0,0,0)			-- ����ϵӡ��
			Talk(1,"","Th�t t�t qu� ta g�i ng��i 1 t�m t�m t��ng �nh ph� ch�c 2 ng��i h�nh ph�c!")
		else
			Talk(1,"","Ng��i kh�ng �� 1 uy�n ��ng m�t")
		end
	else
		Talk(1,"","Ng��i kh�ng �� 1 h�p hoan bao")
	end
end

-------------- 2004-8-22 ��Ϧ���� ------------------
function present_QiXi( nPlayerIndex )
	local nPreservedPlayerIndex = PlayerIndex;
	
	PlayerIndex = nPlayerIndex;

	Talk( "H�m nay l� ng�y t�t nguy�t l�o t�ng cho 2 ng��i l� v�t v� ch�c c� hai b�c ��u giai l�o!" );
	-- ��2��������ϵӡ����
	for i = 1, 2 do
		AddItem( 6, 1, 18, 1, 0, 0 ,0);
	end
	Msg2Player( "B�n nh�n ���c 2 t�m t�m t��ng �nh ph�" );
	-- ��9�䡰õ�廨��
	for i = 1, 9 do
		AddItem( 6, 0, 20, 1, 0, 0 ,0);
	end	
	Msg2Player( "B�n nh�n ���c 9 ��a hoa h�ng" );
	-- 50��������Ҽ���1������ɽ�񢶡�
	if( GetLevel() >= 50 ) then
		AddItem(6, 1, 72, 1, 0, 0, 0);
		Msg2Player( "b�n nh�n ���c m�t b�nh thi�n s�n b�o " );
	end
	
	PlayerIndex = nPreservedPlayerIndex;
end

----------------------- end ----------------------------
function no()
end
