-- �ٰ������ˡ����ι�Ա (�ٰ���183/182)(NewWorld(176,1465,2927))
-- by��Dan_Deng(2003-09-16)
-- Update: Dan_Deng(2004-07-19) ����������90�������޷��õ����ܵ�BUG�Ĳ���

Include("\\script\\global\\skills_table.lua")

function main()
	faction_task = {7,3,2,10,1,6,8,4,5,9}
	faction_name = {"shaolin","tianwang","tangmen","wudu","emei","cuiyan","gaibang","tianren","wudang","kunlun"}
	quest_task = {122,121,123,124,125,126,128,127,129,130}
	LastFactionNo = GetLastFactionNumber()
	if (LastFactionNo < 0) then					-- û�����ɵĲ���������޸����̣�����������
		if (GetFaction() ~= "") then
			WriteLog("Ng��i ch�i' "..GetAccount().."'nh�n v�t'"..GetName().."': m�n ph�i kh�ng ��ng,kh�ng th� tu luy�n k� n�ng c�p 90.")
			Say("Ng��i l� ng��i c�a m�n ph�i n�o?,ta c�ng xem c�ng kh�ng gi�ng.",0)
		else
			Talk(1,"","Ta v�a b�m b�o ho�ng th��ng mu�n c�o l�o v� qu�,ta mu�n � ��y mua m�t m�nh v��n an h��ng tu�i gi�. ")
		end
		return
	end

	if (GetFaction() == "wudang") and (GetSeries() == 4) then	-- ֻҪ���䵱�ɾ�������м�飬����������ֱ���޸��˳���û������ļ������������
		MagicPoint_total = GetLevel() + GetByte(GetTask(86),2) + GetByte(GetTask(80),1) - 1		-- Ӧ�е���
		GetMagic_total = 	GetTotalSkill() + GetMagicPoint()												-- ʵ�е���
		if (HaveMagic(210) == 1) then GetMagic_total = GetMagic_total - 1 end		-- �������ж����ų���δѧ���Ṧ���˷���-1�Ӷ���֢��������������
		if (HaveMagic(400) == 1) then GetMagic_total = GetMagic_total - 1 end
		n = MagicPoint_total - GetMagic_total
		if (n > 0) then						--��ʵ�е���<Ӧ�е����������ܵ㶪ʧ
			SetTask(137,0)
			Say("ng��i tr� tu�i kh�ng n�n g�p g�p,h�y t�m c�ch �� tr�t b� �u phi�n,ai tr�n ��i m� kh�ng l�m sai.",1,"Xin �a t�./KickOutSelf")
			return
		end
	end

	i = faction_task[LastFactionNo + 1]
	j = quest_task[LastFactionNo + 1]
	k = floor(LastFactionNo/2)
	if (GetTask(2) == 80*256) and (GetSeries() == 1) and (HaveMagic(302) == 0) then
		AddMagic(302,1)				-- �޸�����õ������滨���ܵȼ�Ϊ0���Ĵ���
		Say("Ng��i c�n tr� kh�ng n�n v� m�t chuy�n nh� m� n�n l�ng,m�i chuy�n ��u c� c�ch gi�i quy�t,c� g�ng l�n n�o! ",0)
	elseif (GetTask(i) == 80*256) and (GetFaction() == faction_name[LastFactionNo+1]) and (GetSeries() == k) and (GetTask(j) == 245) then
		SetTaskTemp(20,0)		-- �����ʱ������׼��ʹ��
		repair90(i)			-- 90�������޸�
		SetTask(j,255)			-- ����״̬�޸�
		WriteLog("Ng��i ch�i "..GetAccount().."'nh�n v�t'"..GetName().."': C�p k� n�ng 90 ph�i truy�n th� theo m�n ph�i."..i..", nhi�m v� "..j.." ho�n to�n h�i ph�c! ")
		Say("Ng��i c�n tr� kh�ng n�n v� m�t chuy�n nh� m� n�n l�ng,m�i chuy�n ��u c� c�ch gi�i quy�t,c� g�ng l�n n�o! ",0)
		SetTaskTemp(20,0)		-- �����ʱ�������Ա�Ϣ��
	else
		Talk(1,"","B�n quan v�a m�i t� ch�c,ho�ng th��ng �� �n chu�n, ta chu�n b� tr��c m�t c�n nh� � ngo�i �, th�t t� �� an h��ng tu�i gi�.")
	end
end;

function repair90(x)
	if (x == 1) then
		SetTaskTemp(20,332)
		add_em(90)
	elseif (x == 2) then
		SetTaskTemp(20,351)
		add_tm(90)
	elseif (x == 3) then
		add_tw(90)
	elseif (x == 4) then
		SetTaskTemp(20,391)
		add_tr(90)
	elseif (x == 5) then
		add_wd(90)
	elseif (x == 6) then
		add_cy(90)
	elseif (x == 7) then
		add_sl(90)
	elseif (x == 8) then
		add_gb(90)
	elseif (x == 9) then
		SetTaskTemp(20,394)
		add_kl(90)
	elseif (x == 10) then
		SetTaskTemp(20,390)
		add_wu(90)
	end
end
