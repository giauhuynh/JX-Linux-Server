--description: ���Ž������Ԫ 50������
--author: yuanlan	
--date: 2003/3/12
-- Update: Dan_Deng(2003-08-13)

Include("\\script\\global\\repute_head.lua")

function main()
	UTask_tm = GetTask(2);
	Uworld123 = GetTask(123)
	Uworld37 = GetByte(GetTask(37),1)
	if ((GetLevel() >= 90) and (Uworld123 < 10) and (Uworld37 == 127) and (GetReputeLevel(GetRepute()) >= 5) and (GetFaction() ~= "tangmen")) or
		(GetLevel() >= 90 and GetCamp() == 4 and GetTask(5896) == 0) then		-- ��������������90���������ż������ӡ�����δ�����������ȼ�5��
		Talk(2,"U123_get","Ch�ng hay c�c h� ��n g�p ta c� chuy�n g�? kh�ng ph�i l� mu�n ��n ti�p nh�n nhi�m v� c�p 90 c�a ���ng m�n sao!","��ng r�i ���ng nguy�n ��i huynh!")
	elseif (Uworld123 >= 10) and (Uworld123 < 255) then			-- ���������
		Talk(1,"","Ch�ng hay c�c h� ��n ��y l� c� vi�c g�?")
	elseif (UTask_tm == 50*256+40) then  				--50������
		Talk(7, "", "GTT65������ʲô������?", "��ʦ�֣���������ȥ����������?", "�C�а�������ȥ�����ģ���ɨ����뿪��!", "���м�����ʦ����?", "˵����֣��������ڰ������ĺ��濴��һ���˺�����ʦ�֣��ҽ�����һ������֪�����ҴҾ����ˣ��һ���Ϊ���ϴ�������!", "���֪��ʦ�����ںδ�?", "�����ϳ��ŵ�ʱ�򣬿������� <color=Red>���ɽ<color>����ȥ�ˣ�����ȥ��<color=Red>��ˮ��<color>, ��˵����������Щ���Ѯ�.")
		SetTask(2, 50*256+60)
		Msg2Player(" GTT66�ڽ�����ҵ���Ԫ��֪���ƺ�ȥ�����ɽ����ˮ��")
		AddNote("�ڽ�����ҵ���Ԫ��֪���ƺ�ȥ�����ɽ����ˮ��")
	elseif (UTask_tm == 50*256+60) then  
		Talk(1,"","GTT67��ʦ�ֿ���ȥ��<color=Red>��ˮ��<color>, ��˵����������Щ���Ѯ�.")
	else
		Talk(1,"","Cha m� ta m�t s�m, nh� ng��i c�u nu�i n�ng n�n ng��i, c�u l� ng��i th�n thu�c nh�t c�a ta.")
	end
end;

function U123_get()
	if (GetCamp() == 0) and (GetTask(75) < 255) then		-- ����δѧҰ��ȭ�ģ������������
		Talk(1,"","hi�n t�i ta kh�ng th� ti�n h�nh nhi�m v� n�y!")
	else
		Say("���ng b�t nhi�m ta nghi ng� c� nh�ng bi�u hi�n b�t th��ng, hi�n t�i nh� ng��i h�y ��n g�p ng��i xem sao!?",2,"���c th�i, ta ph�i �i 1 chuy�n xem sao/U123_get_yes","th�i, ta kh�ng c� th�i gian �� l�m nhi�m v� n�y/no")
	end
end

function U123_get_yes()
	SetTask(123,10)
	SetTask(5896,1)
	Msg2Player("V� ���ng m�n ph�i, ��n t� t� ph�ng g�p ���ng b�t nhi�m")
	AddNote("V� ���ng m�n ph�i, ��n t� t� ph�ng g�p ���ng b�t nhi�m")
end

function no()
end
