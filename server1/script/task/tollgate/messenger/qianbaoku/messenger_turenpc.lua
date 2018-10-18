-------------------------------------------------------------------------
-- FileName		:	messenger_turenpc.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-04-20 10:46:14
-- Desc			:   ǧ����ؿ��ĳ��ڴ��Ի�npc������
-------------------------------------------------------------------------
Include("\\script\\task\\newtask\\newtask_head.lua") --���� nt_getTask ͬ���������ͻ��˵���
Include("\\script\\task\\tollgate\\killbosshead.lua") --������ͼ�����
Include("\\script\\task\\tollgate\\messenger\\posthouse.lua") --��������������ݱ�����
Include("\\script\\task\\tollgate\\messenger\\messenger_losetask.lua")  --ȡ������
Include("\\script\\task\\tollgate\\messenger\\messenger_timeer.lua")    --���ü�ʱ��
Include ("\\script\\task\\partner\\master\\partner_master_main.lua");   --����ͬ�����������ɵĿ����ж�
Include("\\script\\activitysys\\g_activity.lua")			--��༭��
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")		--��༭��

Include("\\script\\task\\tollgate\\messenger\\qianbaoku\\messenger_baoxiangtask.lua")--�����乤�ߺ���

function main()
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end

	local tbDailog = DailogClass:new(szNpcName)
	tbDailog.szTitleMsg = "<#><npc>V� anh h�ng n�y. T�m ta c� vi�c g� kh�ng?"
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)

	tbDailog:AddOptEntry("Ta mu�n �i ra",messenger_main);
	
	--�����Ի���
	tbDailog:Show()
end

function messenger_main()
--	local Uworld1206 = nt_getTask(1206)
	local name = GetName()

	if ( messenger_middletime() == 10 ) then
		Msg2Player("Xin l�i! "..name.."! B�n �� h�t th�i gian th�c hi�n nhi�m v� T�n s�! Nhi�m v� th�t b�i!.")
		losemessengertask()
	else
		Describe(DescLink_XiaoZhen..":"..name..", c� ph�i ng��i �� th�ng qua kh�o nghi�m c�a Thi�n B�o Kh�, c� c�n ra kh�i �i kh�ng?"
			,3
			,"��ng! Ta mu�n r�i kh�i/messenger_comeback"
			,"Ta ch�a ho�n th�nh kh�o nghi�m, ta mu�n �i ra m�t ch�t/messenger_icantdo"
			,"Kh�ng ph�i! Ta c�n mu�n th� ti�p/no")	
		
--		if ( Uworld1206 == 0 ) then
--			Describe(DescLink_XiaoZhen.."��"..name.."�����ǲ����Ѿ�ͨ����ǧ����Ŀ��飬��Ҫ���أ�",3,"�ǵģ���Ҫ����/messenger_comeback","��û��ɿ��飬�����Ҳ����������/messenger_icantdo","���ǣ��һ�Ҫ�ٴ���/no")	
--		elseif ( Uworld1206 == 1 ) then
--			Describe(DescLink_XiaoZhen.."��ľ����ʹ"..name.."�����ǲ����Ѿ�ͨ����ǧ����Ŀ��飬��Ҫ���أ�",3,"�ǵģ���Ҫ����/messenger_comeback","��û��ɿ��飬�����Ҳ����������/messenger_icantdo","���ǣ��һ�Ҫ�ٴ���/no")
--		elseif ( Uworld1206 == 2 ) then
--			Describe(DescLink_XiaoZhen.."��ͭ����ʹ"..name.."���ˣ����ǲ����Ѿ�ͨ����ǧ����Ŀ��飬��Ҫ���أ�",3,"�ǵģ���Ҫ����/messenger_comeback","��û��ɿ��飬�����Ҳ����������/messenger_icantdo","���ǣ��һ�Ҫ�ٴ���/no")
--		elseif ( Uworld1206 == 3 ) then
--			Describe(DescLink_XiaoZhen.."��������ʹ"..name.."���ˣ��������������ǲ����Ѿ�ͨ����ǧ����Ŀ��飬��Ҫ���أ�",3,"�ǵģ���Ҫ����/messenger_comeback","��û��ɿ��飬�����Ҳ����������/messenger_icantdo","���ǣ��һ�Ҫ�ٴ���/no")
--		elseif ( Uworld1206 == 4 ) then
--			Describe(DescLink_XiaoZhen.."��������ʹ"..name.."���ˣ���ô����Զ�ĸϹ����������������ˣ��������ǲ����Ѿ�ͨ����ǧ����Ŀ��飬��Ҫ���أ�",3,"�ǵģ���Ҫ����/messenger_comeback","��û��ɿ��飬�����Ҳ����������/messenger_icantdo","���ǣ��һ�Ҫ�ٴ���/no")
--		elseif ( Uworld1206 == 5 ) then
--			Describe(DescLink_XiaoZhen.."�����ͽ�����ʹ"..name.."���ˣ��һ�����û���������ͽ����أ������㿪�����ˣ��������������ǲ����Ѿ�ͨ����ǧ����Ŀ��飬��Ҫ���أ�",3,"�ǵģ���Ҫ����/messenger_comeback","��û��ɿ��飬�����Ҳ����������/messenger_icantdo","���ǣ��һ�Ҫ�ٴ���/no")
--		end
	end
end

function messenger_comeback()
	if check_task_state()==30 then
--		nt_setTask(1203,30)  --ǧ��������������������Ϊ�������״̬
--		nt_setTask(1213,0)  --˫������ʱ��
--		nt_setTask(1215,0)  --bossˢ�ֿ���
--		local nRealjifen = 0;
--		if ( Uworld1214 ~= 0 ) then
--			--���ݾȳ������������Ӧ����
--			if ( SubWorldIdx2ID( nMapIndex ) == 393 ) then
--				AddOwnExp(50000*Uworld1214)
--				local Uworld1205 = nt_getTask(1205)
--				nRealjifen = Uworld1214*16;
--				nt_setTask(1205,Uworld1214*16+Uworld1205)
--			elseif ( SubWorldIdx2ID( nMapIndex ) == 394 ) then
--				AddOwnExp(100000*Uworld1214)
--				local Uworld1205 = nt_getTask(1205)
--				nRealjifen = Uworld1214*18;
--				nt_setTask(1205,Uworld1214*18+Uworld1205)
--			elseif ( SubWorldIdx2ID( nMapIndex ) == 395 ) then
--				AddOwnExp(150000*Uworld1214)
--				local Uworld1205 = nt_getTask(1205)
--				nRealjifen = Uworld1214*24;
--				nt_setTask(1205,Uworld1214*24+Uworld1205)		
--			end				 
--			nt_setTask(1214,0)
--		end
--		local nBeishu = greatnight_huang_event(2);--by Сɽ
--		if (nBeishu > 0) then--by Сɽ
--			nOrgRealjifen = floor(nRealjifen / nBeishu);--by Сɽ
--		end;
--		tongaward_message(nRealjifen);	--by Сɽ
		
		nt_setTask(1203,30)

		DisabledUseTownP(0)
		SetFightState(0)		-- �����̺��Ϊ��ս��״̬
		nt_setTask(1211,0)
		SetPunish(1)
		SetCreateTeam(1);
		SetPKFlag(0)
		ForbidChangePK(0);
--		taskProcess_002_08:doTaskEntity()
		SetDeathScript("");
		
--		local n_level = GetLevel();
--		G_ACTIVITY:OnMessage("FinishMail", 3, n_level);
		
		SetPos(1414,3197);
	else
		Describe(DescLink_XiaoZhen..": Xin l��ng th�, hi�n t�i ng��i v�n ch�a ho�n th�nh m�c ti�u c�a �i, � trong b�n �� Thi�n B�o Kh� ng��i ph�i d�a theo th� t� nhi�m v� m� ra 5 B�o R��ng m�i ���c xem l� qua �i.",1,"K�t th�c ��i tho�i/no")
	end
end

function messenger_icantdo()
	if nt_getTask(1203) ==25 then
		Talk(1, "", "Nhi�m v� c�a ng��i �� ho�n th�nh, hay l� ta tr�c ti�p ti�n ng��i ra kh�i �i nh�.")
		messenger_comeback()
	else
		Describe(DescLink_XiaoZhen..": Ng��i quy�t ��nh r�i kh�i �, nhi�m v� ch�a ho�n th�nh ng��i v�n c� th� quay l�i b�t c� l�c n�o!",2,"��ng! Ta mu�n r�i kh�i/q_fallmessengertask","�� ta ngh� l�i xem sao/no")
	end
end

function q_fallmessengertask()
--	local Uworld1207 = nt_getTask(1207)  --��ʹ����ǰɱ�ּ�����
--	local Uworld1204 = nt_getTask(1204)  --�������������ص��������
--	local Uworld1214 = nt_getTask(1214)  --�����Ů����
--	local name = GetName()
--	
--		nt_setTask(1203,25)  --ǧ��������������������Ϊ���������״̬
--		nt_setTask(1213,0)  --˫������ʱ��
--		nt_setTask(1215,0)  --bossˢ�ֿ���
--		local nRealjifen = 0;
--		if ( Uworld1214 ~= 0 ) then
--			--���ݾȳ������������Ӧ����
--			if ( SubWorldIdx2ID( nMapIndex ) == 393 ) then
--				AddOwnExp(50000*Uworld1214)
--				local Uworld1205 = nt_getTask(1205)
--				nRealjifen = Uworld1214*16;
--				nt_setTask(1205,Uworld1214*16+Uworld1205)
--			elseif ( SubWorldIdx2ID( nMapIndex ) == 394 ) then
--				AddOwnExp(100000*Uworld1214)
--				local Uworld1205 = nt_getTask(1205)
--				nRealjifen = Uworld1214*18;
--				nt_setTask(1205,Uworld1214*18+Uworld1205)
--			elseif ( SubWorldIdx2ID( nMapIndex ) == 395 ) then
--				AddOwnExp(150000*Uworld1214)
--				local Uworld1205 = nt_getTask(1205)
--				nRealjifen = Uworld1214*24;
--				nt_setTask(1205,Uworld1214*24+Uworld1205)		
--			end				 
--			nt_setTask(1214,0)
--		end
--		local nBeishu = greatnight_huang_event(2);--by Сɽ
--		if (nBeishu > 0) then--by Сɽ
--			nOrgRealjifen = floor(nRealjifen / nBeishu);--by Сɽ
--		end;
--		tongaward_message(nRealjifen);	--by Сɽ

--		nt_setTask(1203,25)  --ǧ��������������������Ϊ���������״̬

		DisabledUseTownP(0)
		SetFightState(0)		-- �����̺��Ϊ��ս��״̬
		nt_setTask(1203,21)--��ʱ�ж�����
		SetPunish(1)
		SetCreateTeam(1);
		SetPKFlag(0)
		ForbidChangePK(0);
		SetDeathScript("");
		SetPos(1414,3197);
end

function no()
end