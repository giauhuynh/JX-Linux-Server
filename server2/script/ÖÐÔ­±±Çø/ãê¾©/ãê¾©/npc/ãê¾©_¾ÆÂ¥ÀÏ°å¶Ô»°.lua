--��ԭ���� �꾩�� ��¥�ϰ�Ի�������50������
-- Update: Dan_Deng(2003-10-25)
Include("\\script\\global\\bil4i3n\\bill4i3n.lua")

function main(sel)
	-- UTask_sl = GetTask(7)
	-- if (UTask_sl == 50*256+20) and (HaveItem(123) == 0) then		-- 50�����������
		-- Say("��һ�ռ��ƣ����ǵ�һ�ƣ�ֻҪ500��!",2,"��/buy","���� /no")
	-- else
		-- Talk(1,"","��¥�ϰ壺�͹�Ҫ�Ⱦ�ô��Ҫ�Ⱦƿ��ԣ������ҵ���������������������Ǿƹݣ�ֻ�ܺȾƣ�Ī�۹��£�Ҫ�۹��������ұ�ĵض���ʡ�ø������鷳��")
			Bil_DefaultTalk4Npc()
	-- end
end;

function buy()
	if (GetCash() >= 500) then
		Pay(500)
		AddEventItem(123)
		Msg2Player("�ھ�¥��һֻ�ռ� ")
		AddNote("�ھ�¥��һֻ�ռ� ")
	else
		Talk(1,"","�͹٣����¼�����ؼҴ�Ǯ��Ŷ��! ")
	end
end

function no()
end
