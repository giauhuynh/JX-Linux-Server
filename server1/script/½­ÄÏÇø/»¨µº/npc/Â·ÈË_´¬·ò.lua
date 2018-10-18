-- ������ �һ��� ·��_����.lua
-- by: Dan_deng(2004-05-15)

Include("\\script\\missions\\autohang\\head.lua")
g_mapList = {235, 236, 237, 238, 239, 240, 241};
function main()
	-- ���˫����
	if (AEXP_IsFreeTimeDoubleExp() == 1) then-- ���˫��������
		-- Say("�⸽���һ�����������ʢ. ����������Ҳ��������. ��ô�õĻ���.Ҫ֪���������. ����뷴��Ҫ��1800������. ", 2, "�س�/go_yes", "����/no")		
		Say("N�u nh� ng��i mu�n r�i kh�i ��o n�y th� ph�i m�t 1800 l��ng", 2, "��y 1800 l��ng ta c� ��y, mau ��a ta v�/go_yes", "ta ch�a mu�n v�/no")		
		return 1;
	end
	
	nValue = GetTask(AEXP_TASKID);
	if (nValue > AEXP_TIME_UPDATE) then -- ���йһ�ʱ��
		-- Say("��λ�͹�! ���������һ�����������ﴫ˵�е�������԰�?��˵ֻ���һ����ϵ���������й�Ч. ֻ��һСʱ��Ҫ����ʹ��. N�u nh?mu�n v?th�nh th?ph�i tr?1800 ng�n l��n���Ҫ�س���Ҫ֧��1800������.", 2, "�س�/go_yes", "����/no")
		Say("N�u nh� ng��i mu�n r�i kh�i ��o n�y th� ph�i m�t 1800 l��ng", 2, "��y 1800 l��ng ta c� ��y, mau ��a ta v�/go_yes", "ta ch�a mu�n v�/no")		
	else 
		-- Say("��λ�͹�! ���������һ�����������ﴫ˵�е�������԰�?��˵ֻ���һ����ϵ���������й�Ч. ֻ��һСʱ��Ҫ����ʹ��. N�u nh?mu�n v?th�nh th?ph�i tr?1800 ng�n l��n���Ҫ�س���Ҫ֧��1800������.", 2, "�س�/go_yes", "����/no")
		Say("N�u nh� ng��i mu�n r�i kh�i ��o n�y th� ph�i m�t 1800 l��ng", 2, "��y 1800 l��ng ta c� ��y, mau ��a ta v�/go_yes", "ta ch�a mu�n v�/no")		
	end
end

function go_yes()
	if (GetCash() >= 1800) then
		Pay(1800)
		Msg2Player("�� r�i ��o!")
		SetAutoHangMapFlag(0) -- �����˳��һ���ͼ���(�ſ�ԭ�������εĹ��ġ��سǵȹ���)
		
		-- ��¼�뿪ʱ������ʱ��
		nOLTime = GetGameTime();
		SetTask(AEXP_OLTIME_TASKID, nOLTime);
		
		back_home();
		SetFightState(1)
	else
		Talk(1,"","�Kh�ng c� ti�n m� c�ng ��i ng�i xe? <pic=15>, g�i ng��i c� th�m quy�n ��n ��n ng��i v�, ngh�o th� ch� bi�t <pic=0>")
	end
end;

function back_home()
	nSubWorldID = SubWorldIdx2ID();

	if (nSubWorldID == g_mapList[1]) then
		NewWorld(176, 1614, 2561) -- �ٰ�
	elseif (nSubWorldID == g_mapList[2]) then
		NewWorld(80, 1345, 3359) -- ����
	elseif (nSubWorldID == g_mapList[3]) then
		NewWorld(78, 1299, 3483) -- ����
	elseif (nSubWorldID == g_mapList[4]) then
		NewWorld(37, 1938, 2459) -- �꾩
	elseif (nSubWorldID == g_mapList[5]) then
		NewWorld(162, 1642, 2935) -- ����
	elseif (nSubWorldID == g_mapList[6]) then
		NewWorld(11,3100,4822) -- �ɶ�
	elseif (nSubWorldID == g_mapList[7]) then
		NewWorld(1, 1528, 2733) -- ����
	else
		Msg2Player("Kh�ng th� di chuy�n, xin li�n h� GM!");
	end	
end;

function no()
end;
