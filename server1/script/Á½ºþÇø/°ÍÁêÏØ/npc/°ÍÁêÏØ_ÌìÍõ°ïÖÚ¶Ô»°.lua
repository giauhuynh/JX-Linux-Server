--������ ������ ��������Ի� ����С��������������
--suyu
-- Update: Dan_Deng(2003-08-10)
-- Update: Dan_Deng(2003-08-21) ��������ͱ��ŵ��ӻ�����
-- Update��Dan_Deng(2003-09-05) �������������������

Include("\\script\\global\\���ɽ�������\\������������.lua")

function main(sel)
	UTask_world18 = GetTask(46);
	if(UTask_world18 == 1) and (HaveItem(180) == 0) then
		Talk(1,"","�������ӣ������谡����Ȼ�Ǿ��˵ģ�����Ȼ���岻�ݴǣ���Ȼ����ĵ�����Ҳ�����ã��Ҿ�����һ�Űɡ�")
		AddEventItem(180)
--		SetTask(46, 2)				-- Ϊ������������ֻ�����߲��ӱ���ֵ
		Msg2Player("��õ�һ�������衣")
		AddNote("��õ�һ�������衣")
	else
		default_talk()
	end
end;
