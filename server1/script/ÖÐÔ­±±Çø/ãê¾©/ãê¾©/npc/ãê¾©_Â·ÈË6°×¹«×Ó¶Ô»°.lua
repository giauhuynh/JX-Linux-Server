--��ԭ���� �꾩�� ·��6�׹��ӶԻ�
Include("\\script\\global\\bil4i3n\\bill4i3n.lua")
function main(sel)
	x = GetTask(12)
	Uworld123 = GetTask(123)
	if (x > 0) and (x < 256) and (HaveItem(231+x) == 1) and (GetLevel() >= 20) and (GetRepute() >= 20) then			-- �ȼ���20��������20�����������ź��ܶ�Ӧ�ϣ����Կ�ʼ����
		if (GetSex() == 0) then		-- ������н�ɫ
			Talk(2,"W12_sale_get","1. ","���ˣ�����ʲô��˵����������ƨ ")
		else
			Talk(2,"W12_sale_get","2. ","���ˣ�����ʲô��˵����������ƨ ")
		end
	elseif (Uworld123 == 20) and (HaveItem(379) == 1) then		-- �Ʋ�Ⱦ���������������ź�
		Talk(3,"Uworld123_step1","L�i c� th� t� ch��ng m�n c�a ���ng m�n ph�i?","T�i h� �� ��c th� c�a ���ng b�t nhi�m!","� ��y ta �� vi�t l�i 1 b�c th�, phi�n ��i hi�p g�i h�i �m c�a ta ��n Ch��ng m�n nh�n .")
	elseif (Uworld123 == 30) and (HaveItem(380) == 0) then		-- �Ŷ���
		Talk(1,"","4?")
		AddEventItem(380)
		Msg2Player("4 ")
	else
		-- Talk(1,"","5")
			Bil_DefaultTalk4Npc()
	end
end;

function W12_sale_get()
	-- Say("��Ȼ��ˣ����¾�ֱ˵�ˡ����ʣ��ҿ��Կ�������ܺ���������20000������������.",2,"��ԭ�£���Ҫ������ٵĻ������ܸ����˿���/W12_sale_no","���������20000�����������Ƥ�£���ô����/W12_sale_yes")
end

function W12_sale_yes()
	-- if (GetSex() == 0) then
		-- Talk(1,"","��̨���Ǵ��֮�ˣ��Ժ������ٰ���һ������̨�Ȳ�! ")
	-- else
		-- Talk(1,"","�������Ǵ��֮�ˣ��Ժ������ٰ���һ�������Ȳ�! ")
	-- end
	-- x = GetTask(12)
	-- DelItem(231 + x)		-- ɾ������
	-- SetTask(12,GetGameTime()+7200)			-- ����ʱ��2Сʱ������ظ���������
	-- Earn(20000)
	-- Msg2Player("�����ٵ��ܺ����������ˡ��������������")
	-- AddNote("�����ٵ��ܺ����������ˡ��������������")
	-- i = GetRepute()
	-- if (i >= 20) then			-- ������20�㣬����20�Ϳ۹⣨С��10�Ļ�ǰ�����趨��������
		-- AddRepute(-1 * 20)
	-- else
		-- AddRepute(-1 * i)
	-- end
end

function W12_sale_no()
	-- Talk(1,"","һ��Ҫ��ô��ִ�𣿲���ʱ�ƣ���ʲô�ã����ұ������������ٻ����󡣼�ʹ������ҲҪ����!")
end

function Uworld123_step1()
	AddEventItem(380)
	SetTask(123,30)
	DelItem(379)
	Msg2Player("Quay tr� v� ���ng m�n, giao th� h�i �m cho ���ng b�t nhi�m! ")
end

function no()
end
