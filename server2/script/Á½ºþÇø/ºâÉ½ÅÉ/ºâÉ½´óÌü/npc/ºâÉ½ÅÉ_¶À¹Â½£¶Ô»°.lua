--������ ��ɽ�� ���½��Ի� ��������������
-- By: Dan_Deng(2004-02-03)

Include("\\script\\global\\repute_head.lua")
Include("\\script\\global\\chuangong.lua")
Include("\\script\\task\\lv120skill\\head.lua")		-- 120����������

Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\g_dialog.lua")

function main()
Talk(1,"","Xin ch�o!")
	-- local nNpcIndex = GetLastDiagNpc();
	-- local szNpcName = GetNpcName(nNpcIndex);
	-- if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end
	-- local tbDailog = DailogClass:new(szNpcName);
	-- G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex);
	-- tbDailog.szTitleMsg = "<npc>�þò�����������ʲô��?"
	-- tbDailog:AddOptEntry("���������ݷ�һ��������", old_main)
	-- tbDailog:AddOptEntry("����֪���¸赺��Ĵ�����?", yuegedao_help)
	-- tbDailog:Show()
	
--	if (GetTask(TV_LAST_APPLY_TIME) > 0) then
--		Describe(strimg..GetName().."�þò����ˣ�����������ʲô�£�",3,"���������ݷ�һ�������㡣/old_main", "����������ڴ��������顣/chuangong_info", "����ȡ���ϴεĴ�������!/cg_undo")
--	else
--		Describe(strimg..GetName().."�þò����ˣ�����������ʲô�£�",2,"���������ݷ�һ�������㡣/old_main", "����������ڴ��������顣/chuangong_info" )
--		Describe(strimg..GetName().."�þò����ˣ�����������ʲô�£�",1,"���������ݷ�һ�������㡣/old_main");
--	end
end

function old_main()
	Uworld39 = GetTask(39)
	Uworld40 = GetTask(40)
	Udate = tonumber(date("%Y%m%d"))						-- ��Ҫת������ֵ����ֱ�ӽ��бȽ�
	if (Uworld39 == 10) then									-- ���������
		if (Uworld40 == 1023) then									-- bin(1111111111)���������
			U39_prise()
		else
			Talk(1,"U39_progress", 11332)
		end
	elseif (Uworld39 == 0) or ((Udate > Uworld39) and (Uworld39 > 20040101)) then			-- ������������������20���������ȼ�����2��������δ����������ɳ���1��
		if (GetLevel() >= 20) and (GetReputeLevel(GetRepute()) >= 2) then
			Say(11333 ,2,"�������⣬�ҿ�����. /U39_yes","�����ں�æ,���ʱ����˵. /no")
		else
			Talk(3,"", 11334, 11335, 11336)
		end
	elseif (Uworld39 >= Udate) then								-- ��������ɣ�δ���ظ�ʱ��
		Talk(2,"", 11337, 11338)
	else																	-- ����(???)
		Talk(1,"", 11339)
		SetTask(39,0)
		SetTask(40,0)
	end
end;

function U39_yes()
	Talk(1,"", 11340)
	SetTask(39,10)
	SetTask(40,0)
	Earn(10000)
	Msg2Player("��������̬������: ����½�ȥ��̽�����ɵ�̬�ȣ��Ƿ�Ըͬ�����. ")
	AddNote("��������̬������: ����½�ȥ��̽�����ɵ�̬�ȣ��Ƿ�Ըͬ�����. ")
end

function U39_prise()
	Talk(2,"", 11341, 11342)
	SetTask(39,date("%Y%m%d"))					-- ������Ϊ��ǰ����
	SetTask(40,0)									-- �ӱ�����λ
	i = 10+random(1,10)							-- �����������11---20��
	AddRepute(i)
	Msg2Player("��ɶ��½�������̬�����������������"..i.."��.")
	AddNote("������ɽ�󶦣���ɶ��½�������̬������")
end

function U39_progress()
	Uworld40 = GetTask(40)
	faction_list = {"��ü��","����","������","���̽�","�䵱��","������","������","ؤ��","������","�嶾��"}
	str = ""
	for i = 1,10 do									-- �������λ�����ɣ��б�˳������������˳��
		if (GetBit(Uworld40,i) == 1) then
			if (str == "") then
				str = faction_list[i]
			else
--				str = str + "��" + faction_list[i]
--				str = format("%s��%d", str, faction_list[i])
				str = str..", "..faction_list[i]
			end
		end
	end
	if (str == "") then								-- ���ݼ������Ӧ�Ի�
		Talk(1,"", 11343)
	else
		Talk(1,"","��������ȥ���������: "..str..", ϣ�����Կ�һ��. ")
	end
end

function no()
end

function biguan_talk()
	if (GetLevel() < 120) then
		describe_talk({npc_string(1, "�㻹û�е�120�����������㣬��û��ǲ�Ҫ���������.")})
	elseif (GetLastFactionNumber() == -1) then
		describe_talk({npc_string(1, "���������ɣ��Һ���Ҳû��ʲô��ϵ.")})
	else
		local szTemp = "Huynh ��"
		if (GetSex() == 1) then
			szTemp = "����"
		end
		local tDialog =
		{
			npc_string(1, "λ"..szTemp.." ��, ���������������˵Ĺ������е������ˣ��㻹������ʲô����?"),
			speak_string(1, "���Ұ�����������Ϊһ��С������.��������ʿ���У����ʱ�仹��̫ƽ��û��ʲô��ʽ�ı��䡣������ľ�������ȥ�е㲻Ѱ�������������˲�����һ��"),
			npc_string(1, "��֪��֮ǰ����ʮ���궯����Ҳ��Ϊ����ʮ�����ɵ���ʿ�����ڽ����ϣ���Ϊ���ֵİ���������������."),
			speak_string(1, "�����Ϊ�����ֵİ������ѵ������ֲ����淢����"),
			npc_string(1, "���ԣ����ڻ�����ʱ�򣬿�����Ҳ�����˽����������飬��˵ʲô���ԣ���������Ҫʱ���˽⡣�����Ȼ�ȥ���һ�������Ҫ����."),
			speak_string(1, "���ˣ���������ҾͲ��˷Ѱ�����ʱ���ˡ������������˵���ǣ���λ������ʿ����������ֻ������Ϊ������Ĵ����������Ҳϣ���������չ�������µ����ࡣ���ȸ�ǡ�"),
			self_string(1, "���������뿪��ɽ�ɣ��Լ�ȥ����������ˡ�����ºͶ��´����йأ�һ��Ҫ��<color=white>��������<color> ����."),
		}
		describe_talk(tDialog)
		SetTask(LV120_SKILL_STATE, 2)
		SyncTaskValue(LV120_SKILL_STATE)
	end
end

function yuegedao_help()
	Talk(2, "yuegedao_fix", "���½���������ʱ�����߽�����������������ʲô��?",
													"��ң������¸����ֳ����ڽ����ϣ����ӵõ���֪����ô���òź�?")
end

function yuegedao_fix()
	local TSK_LV150_SKILL = 2885
	local FINAL_150SKILL_TASKSTATE = 14
	local tbname_150skill_list = {
		[0] = {1055, 1056, 1057},
		[1] = {1058, 1059, 1060},
		[2] = {1069, 1070, 1071, 1110},
		[3] = {1066, 1067},
		[4] = {1061, 1062, 1114},
		[5] = {1063, 1065},
		[6] = {1073, 1074},
		[7] = {1075, 1076},
		[8] = {1078, 1079},
		[9] = {1080, 1081},
	}
	local tbFactStepList = {
		[5] = 6,
		[2] = 7,
		[4] = 7,
		[3] = 5,
		[6] = 9,
		[7] = 9,
		[0] = 6,
		[8] = 5,
		[1] = 4,
		[9] = 5,
	}
	local nLevel = GetLevel()
	if nLevel < 150 then
		Talk(1, "", "�㲻��150����û���ʸ����¸���!")
		return
	end
	local nFact = GetLastFactionNumber()
	if nFact == -1 then	
		Talk(1, "", "�㻹û�м������ɣ�û���ʸ����¸���!")
		return 1
	end
	local tbSkill = tbname_150skill_list[nFact]
	local nGetAllSkill = 1
	for i = 1, getn(tbSkill) do
		local nSkillId = tbSkill[i]
		if HaveMagic(nSkillId) == -1 then
			nGetAllSkill = 0
			break
		end
	end
	local nYueGedaoStep = mod(floor(GetTask(TSK_LV150_SKILL)/100), 100)
	if nGetAllSkill == 1 or nYueGedaoStep >= FINAL_150SKILL_TASKSTATE then
		Talk(1, "", "���������¸赺���Ѿ�����˺ܶ࣬�㲻����Ҫ�����ˣ�Զ�߽�������ȥ��.")
		return
	end
	local nTaskStep = mod(GetTask(TSK_LV150_SKILL), 100)
	if nTaskStep < tbFactStepList[nFact] then
		Talk(1, "", "֮ǰ���ʦ�Ž�����������ɵĶ��ܺ�.")
		return
	end
	if CalcItemCount(-1, 6, 1, 2908, -1) > 0 then
		Talk(1, "", "���Ե��������¸�����.")
		return
	end
	if CalcFreeItemCellCount() < 1 then
		Talk(1, "", "��������Ҫ��1���ո�")
		return
	end
	Talk(1, "", "�һ���1���¸�������ȥ�ɣ��������.")
	local tbAward = {
		{szName = "�¸���", tbProp = {6,1,2908,1,0,0,}, nBindState = -2,},
	}
	tbAwardTemplet:GiveAwardByList(tbAward, "�����½�- ��ɽ�ɵõ��¸���")	
end
