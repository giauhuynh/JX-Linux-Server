--ϴ���ܵ����ɮ
-- By: Dan_Deng(2003-08-29)
-- Update: Dan_Deng(2004-02-04) ϴ���޸�Ϊ����ϴ255��
-- Update: Dan_Deng(2004-05-27) С��ʧ������ (Uworld42 = GetTask(42))
-- ��ʱ�����趨: ���μ���(1),����ˮ��(257),���ˮ��(10),���(1024)
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\vng_event\\tochieukynang150\\head.lua")


function main()
Say("Ch�o v� thi�u hi�p")
	-- Uworld42 = GetTask(42)
	-- tbTrainSkill150:ResetDailyTask()
	-- if (Uworld42 == 40) then
		-- Talk(12,"","������ʧ�ٵ�С��! ","�����ӷ��������֮�ˣ�����������. ","ϣ����ʦ�ȱ���˵������!","�����ұ����ʦ�ţ������дȱ���","������ʦΪ���¶������ʦ��? ","������ô���������������Ĳ���Ҫ����˵Ϊʲô�����ʦ�ţ���Ҫ������ʧ��С������","������ԭ�����з�����","�����ӷ���������!","�����ѳԹ����Ĳ������. ","�������á���������Ե���Ҹ�����!","��ʦ��ʮ���˵������ǿ���Ц��","�ã���ȥ��һ���˽���׷�裬ֻ������֪���Ǹ���������")
		-- SetTask(42,50)
		-- AddNote("ʧ��С������ȥ����׷�裬ѯ��ʧ��С������Ϣ. ")
		-- Msg2Player("ʧ��С������ȥ����׷�裬ѯ��ʧ��С������Ϣ. ")
		-- else		
		-- local szTitle = "����������ֻҪ������ĸ����еĳ��򣬶���������ȥ��ϴ�赺������ƶɮϴ����ӷ��㡣"
		-- szTitle = szTitle .. "��������߿���������ȥ<color=yellow>�����ؾ�<color>������������þ�������ȡĳЩ���ܵ������ȡ�"
		
		-- local tbOpt = {}
		-- tinsert(tbOpt, {"����Ʒ", tbTrainSkill150.LoadItem, {tbTrainSkill150}})
		-- tinsert(tbOpt, {"����ȥ�����ؾ�", toWumingmijin})	
		-- tinsert(tbOpt, {"���ٿ�����", no})
		
		-- CreateNewSayEx(szTitle, tbOpt)

	-- end
end;

function toWumingmijin()
	local tbSkill_150 = {1055,1056,1057,1059,1060,1058,1066,1067,1069,1070,1071,1061,1062,1114,1063,1065,1075,1076,1074,1073,1079,1078,1080,1081,}
	local bResult = 0
	for i=1, getn(tbSkill_150) do
		if HaveMagic(tbSkill_150[i]) ~= -1 then
			bResult = 1
			break
		end
	end

	if bResult == 1 then
		NewWorld(967,1634, 3231)
	else
		Talk(1,"","ѧ��150���ܺ���ȥ�����ؾ�!")
	end
end

function rollback_0611()		-- Ϊ(2004-06-11)��Ƶ����ϴ��
	if (GetCash() >= 100000) then
		SetTaskTemp(1,1024)		-- �˴�ϴ������Ϊ1024
		rollback_prise()
	else
		Talk(1,"","�����߽�����ô�ã�100000 ����û����?")
	end
end

function rollback_1212()		-- Ϊ(2003-12-12)��Ƶ����ϴ�㣨��ȡ����
	if (GetCash() >= 100000) then
		SetTaskTemp(1,1)		-- �˴�ϴ������Ϊ1
		rollback_prise()
	else
		Talk(1,"","���Ǯ��û�У���ô���߽���?!")
	end
end

function found_jewel_yes()		-- �ҵ���ʯ�����ؼ��ܵ�
	if (GetCash() >= 100000) then
		j238 = GetItemCountEx(238)
		j239 = GetItemCountEx(239)
		j240 = GetItemCountEx(240)
		if (j238+j239+j240 == 3) then
			Pay(100000)
			SetTask(13,GetTask(13) + 256)	-- �ѱ����ĳ��ù���ʯ��״̬
			for i = 1,j238 do DelItemEx(238) end
			for i = 1,j239 do DelItemEx(239) end
			for i = 1,j240 do DelItemEx(240) end
			AddMagicPoint(3)		-- ����ϴ��۳���3�㡣
			Talk(1,"KickOutSelf","���ˣ���������Ϣһ�£��ָ�һ��!")
		elseif (j238+j239+j240 > 3) then
			Say("�����3��ˮ���ȣ��Ҳ��ܰ���!",1,"�����Ժ����/rollback_no")
		else
			Talk(1,"","�㲻��3��ˮ��")
		end
	else
		Talk(1,"","���ˣ���������Ϣһ�£��ָ�һ��!")
	end
end

function rollback_get()
	Say("���ˣ��Һ��ۡ�����Ҵ�����!",2,"����ʮ���������ʦ����. /pay_yes","������/rollback_no")
end;

function rollback_no()
	Talk(1,"","�������ݹ��٣����յ�ʮ����������!. ")
end;

function pay_yes()					-- ����ϴ�㣬���õı�ʯ�����ۼ��ܣ�
	if (GetCash() >= 100000) then
		if (GetByte(GetTask(13),2) == 0) then		-- ���ù�ˮ���Ͳ���������ˮ��ϴ��
			Say("���ȸ���3��ˮ�����Ҳ��ܰ���!",3,"����3�� /pay_jewel","��û�У��������ˣ��ܲ�����. /jewel_none","���Ҿ������� /rollback_no")
		else
			jewel_none()
		end
	else
		Talk(1,"","������ĳ��������ȥ��! ")
	end
end

function pay_jewel()
	j238 = GetItemCountEx(238)
	j239 = GetItemCountEx(239)
	j240 = GetItemCountEx(240)
	if (j238+j239+j240 == 3) then
		SetTaskTemp(1,257)		-- ��ס���ñ�ʯϴ�ĵ㣨ϴ�����ֵΪ257����1��
		Talk(2,"rollback_prise","���ˣ���������Ϣһ�£��ָ�һ��!","����������ǰ��")
	elseif (j238 + j239 + j240 > 3) then
		Say("���ȸ���3��ˮ�����Ҳ��ܰ���!",1,"�����Ժ����/rollback_no")
	else
		Talk(1,"","������û��3��ˮ��")
	end
end

function NEWpay_yes()		-- �ڶ��Σ����Ժ�ϴ��ʱ���ã�ֱ�Ӽ��Ǯ�ͱ�ʯ�����ټ�¼�Ƿ�ʯϴ
	if (GetCash() >= 100000) then
		j238 = GetItemCountEx(238)
		j239 = GetItemCountEx(239)
		j240 = GetItemCountEx(240)
		if (j238+j239+j240 == 3) then
			SetTaskTemp(1,10)		-- �Ѿ���ʼϴ������
			Talk(2,"rollback_prise","���ˣ���������Ϣһ�£��ָ�һ��!","����������ǰ��")
		elseif (j238 + j239 + j240 > 3) then
			Say("���ȸ���3��ˮ�����Ҳ��ܰ���!",1,"�����Ժ����/rollback_no")
		else
			Talk(1,"","������û��3��ˮ��")
		end
	else
		Talk(1,"","100000 ����û�У�����ô����?")
	end
end

function jewel_none()
--	SetTask(13,GetTask(13) + 1)
	SetTaskTemp(1,1)		-- ��ס���ü��ܵ���ϴ�ĵ㣨ϴ�����ֵΪ1����257��
	Talk(2,"rollback_prise","���ˣ���������Ϣһ�£��ָ�һ��!","����������ǰ��")
end

function rollback_cancel()		-- �ѷ��������ú���
	i = GetTaskTemp(1)
	if (i > 0) then		-- ����Ѿ���ʼ���̣�����10W������
		Talk(1,"","�һ���Ǯ!")
		Msg2Player("��Ǯ����. ")
	end
end

function rollback_prise()
--- �ȿ�Ǯ�ͱ�ʯ���ñ���
	UTask13 = GetTask(13)
	j238 = GetItemCountEx(238)
	j239 = GetItemCountEx(239)
	j240 = GetItemCountEx(240)
	addon = GetTaskTemp(1)
	if (addon == 1024) then			-- ���������ϴ��
		Uworld137 = GetTask(137) + 40
		SetTask(137,Uworld137)
		AddMagicPoint(3)
	elseif (addon == 257) then		-- �ǳ���ϴ�㣬�������ñ�ʯϴ��
		for i = 1,j238 do DelItem(238) end
		for i = 1,j239 do DelItem(239) end
		for i = 1,j240 do DelItem(240) end
		AddMagicPoint(3)		-- ��3�㼼�ܣ�����ϴ��۳���3�����ö��ϡ�
		SetTask(13,UTask13 + 257)	-- ϴ������ĸı�Ϊԭ��ֵ���ϴ˴�����ֵ���������ϴ���+0��
	elseif (addon == 10) then		-- ���ǳ���ϴ�㣬���б�ʯ��Ҳ��3�㼼��
		for i = 1,j238 do DelItem(238) end
		for i = 1,j239 do DelItem(239) end
		for i = 1,j240 do DelItem(240) end
		AddMagicPoint(3)
		SetTask(13,UTask13 + 1)	-- ϴ������ĸı�Ϊԭ��ֵ���ϴ˴�����ֵ
	elseif (addon == 1) then		-- ����ϴ�㣬�õ��Ǽ���
		SetTask(13,1)	-- ϴ������ĸı�Ϊԭ��ֵ���ϴ˴�����ֵ
	else
		Talk(1,"","ϴ��״̬�еĴ�������ϵGM���!")
		return 0
	end
	Pay(100000)
--- Ȼ��ʼϴ��
	i = HaveMagic(210)		-- �Ṧ�������
	j = HaveMagic(400)		-- ���ٸ���ƶ���������
	n = RollbackSkill()		-- ������ܲ��������м��ܵ㣨�����Ṧ�����⼼�ܣ�
	x = 0
	if (i ~= -1) then x = x + i end		-- �������ж����ų���δѧ���Ṧ���˷���-1�Ӷ����µ�������������
	if (j ~= -1) then x = x + j end
	rollback_point = n - x - 3			-- �Ѽ��ܵ㵱�����е������������ȿ۳��Ṧ��
	if (rollback_point + GetMagicPoint() < 0) then		-- ���ϴ���˸���������0��Ϊ�Ժ���ϴ�㱣����
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
--	AddMagic(53,1)				-- ���صĻ������ܣ��������̱���Զ�̣����ش���
--	AddMagic(1,1)
--	AddMagic(2,1)
	if (i ~= -1) then AddMagic(210,i) end			-- ���ѧ���Ṧ��ӻ�ԭ�еȼ�
	if (j ~= -1) then AddMagic(400,j) end			-- ���ѧ�����ٸ���ƶ��ͬ������
	if (UTask13 == 254) or (UTask_13 == 510) then		-- �Ѿ�û��ϴ������ˣ�����һ�����
		Msg2Player("��3��ˮ�����м���ϴ�裬��ûؼ���Ϣһ��!")
		Say("��ϴ��̫����ˣ��������ˣ����� <color=red>����ϴ����<color> !",1,"��֪����. /KickOutSelf")
	else
		Msg2Player("��ϴ���꼼�ܵ㣬����Խ������·���!")
		Say("��ϴ���꼼�ܵ㣬����Խ������·���!",1,"��. /KickOutSelf")
	end
--	KickOutSelf()
end;

function no()
end
