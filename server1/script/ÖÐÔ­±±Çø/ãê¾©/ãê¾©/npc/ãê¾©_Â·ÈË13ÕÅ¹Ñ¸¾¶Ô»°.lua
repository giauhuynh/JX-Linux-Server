--description: ��ԭ���� �꾩�� ·��13�ŹѸ��Ի� ���̳̽�ʦ����
--author: yuanlan	
--date: 2003/5/19
-- Update: Dan_Deng(2003-08-14)
Include("\\script\\global\\bil4i3n\\bill4i3n.lua")

function main(sel)
--	UTask_tr = GetTask(4)		--û��Ҫ��������״̬
--	if (UTask_tr == 62) then
	-- UTask_trsub60 = GetByte(GetTask(28),1)
	-- if (UTask_trsub60 == 1) and (HaveItem(63) == 1) then
		-- Talk(2, "", " ��������ǳ���������������͸���ģ���һֱ���������⣬ֻ��û��������ף���֪��.....", "��ʵ����ʵ�Ҷ���Ҳ���кøУ�ֻ�ǡ�ֻ������һ���Ѹ�����ô���ȿ����أ���������������ַ��Ƶģ��鷳�������͸������͡������������!")
		-- DelItem(63)
		-- AddEventItem(64)
		-- SetTask(28, SetByte(GetTask(28),1,2))
		-- AddNote("�¶�����ŵ��������գ�������ˮ�� ")
		-- Msg2Player("���һ����� ")
	-- elseif (UTask_trsub60 == 2) and (HaveItem(64) == 0) then
		-- AddEventItem(64)
		-- Talk(1,"","�㡣Ϊʲô�����������Ҳ����?")
	-- elseif (UTask_trsub60 >= 2) then 
		-- Talk(1,"","�aл�����Һ�����ǣ�ߣ�Ҫ��Ȼ����ľ�Ҫ����������! ")
	-- else
		-- if (random(0,1) == 0) then
			-- Talk(1,"","�ŹѸ���������ǰ��ò����ˣ��Ҷ��ؿչ룬���Ƕ������갡��")
		-- else
			-- Talk(1,"","�ŹѸ�������˵���Ǳ��ķ���̫Ϊ���Ǵ�δı����ɷ���������ʮ��ѣ�������̫�����ˣ�")
		-- end
			Bil_DefaultTalk4Npc()
	-- end
end;
