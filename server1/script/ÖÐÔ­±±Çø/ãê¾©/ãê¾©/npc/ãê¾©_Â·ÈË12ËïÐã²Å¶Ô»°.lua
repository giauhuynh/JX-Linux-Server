--description: ��ԭ���� �꾩�� ·��12����ŶԻ� ���̳̽�ʦ����
--author: yuanlan	
--date: 2003/5/19
-- Update: Dan_Deng(2003-08-14)
Include("\\script\\global\\bil4i3n\\bill4i3n.lua")

function main(sel)
	-- UTask_tr = GetTask(4)
	-- if (UTask_tr == 60*256+20) then
		-- UTask_trsub60 = GetByte(GetTask(28),2)
		-- if (UTask_trsub60 == 0) then 
			-- DelItem(128)			--�����ؽ��������Ҽ���������ߵ����
			-- AddNote("���������꾩�����ź�����Ų���")
			-- L60_sub2_Q1()
		-- elseif (UTask_trsub60 == 2) then
			-- L60_sub2_Q1()
		-- elseif (UTask_trsub60 == 3) then
			-- L60_sub2_Q2()
		-- elseif (UTask_trsub60 == 4) then 
			-- L60_sub2_Q3()
		-- elseif (UTask_trsub60 == 5) then 
			-- L60_sub2_Q4()
		-- elseif (UTask_trsub60 == 6) then 
			-- L60_sub2_Q5()
		-- elseif (UTask_trsub60 == 10) and (HaveItem(128) == 0) then		-- ���߶�ʧ
			-- AddEventItem(128)
			-- Talk(1,"","���º�������µĴ������ǣ������´˽�����Ҫ�ƴ�! ")
		-- else
			-- Talk(1,"","��������!")
		-- end
	-- else
		-- i = random(0,3)
		-- if (i == 0) then
			-- Talk(1,"","����ɽ���ڣ��Ǵ���ľ���ʱ�����ᣬ�ޱ����ġ�����������������!         ")
		-- elseif (i == 1) then
			-- Talk(1,"","������ˮ����ɳ��ҹ���ػ����Ƽҡ���Ů��֪�����ޣ������̳���ͥ�����������ɱ����ɱ�! ")
		-- elseif (i == 2) then
			-- Talk(1,"","��ʱ���º�ʱ�أ����ﳤ����δ������ʹ���Ƿɽ��ڣ����̺������ɽ����������̾����̾! ")
		-- else
			-- Talk(1,"","�������ţ�������Ļ���β�ʮ���˼ҡ������غ����t��ѡ���������ӣ�ʮ��ɻ����������ɺް��ɺޣ��������������Ϊ���״ʣ����˿���Ҳ����������ְ�")
		-- end
			Bil_DefaultTalk4Npc()
	end
-- end

function L60_sub2_Q1()
	Say("С���м������գ���ڤ˼���벻����⣬��֪��²��µó�������ǰ���¹⡱�Ǹ�ʲô�֣� ", 3, "��/no1", "��/yes1", "��/no1")
end;

function no1()
	SetTask(28, SetByte(GetTask(28),2,2))
	Talk(1,"","��һ�������ܲµ���?")
end;

function L60_sub2_Q2()
	Say("���еڶ�����: �нſ���� ��������� ��ˮ����� ���ݻ����š���ʲô���أ�", 3, "��/no2", "��/no2", "��//L60_sub2_Q3")
end;

function no2()
	SetTask(28, SetByte(GetTask(28),2,3))
	Talk(1,"","��Ҳ����Ҳ ")
end;

function L60_sub2_Q3()
	Say("�����ˣ���������: ����ֻΪ����������Ǹ�ʲô�֣�", 3, "ؤ/yes3", "��/no1", "��/ /no3")
end;

function no3()
	SetTask(28, SetByte(GetTask(28),2,4))
	Talk(1,"","�ҿ���������!")
end;

function L60_sub2_Q4()
	Say("Th?ch?th?4: '�i���ө���ս��ߡ����Ǹ�ʲô�֣�", 3, "��/no2", "��/yes4", "��/no4")
end;

function no4()
	SetTask(28, SetByte(GetTask(28),2,5))
	Talk(1,"","���񲻶�����?")
end;

function L60_sub2_Q5()
	Say("�����ֲ��Ѳ�! ��ͥǰ���¶�ӳ��Ӱ������һ�С�����ֿɾ��Ѳ�����", 3, "��/yes5", "��/no1", "��/no5")
end;

function no5()
	SetTask(28, SetByte(GetTask(28),2,6))
	Talk(1,"","�����û��! ")
end;

function L60_sub2_prise()
	-- Talk(1,"","�����С���ܸ������������ѣ�С�����游����ң���С��������ѧ�ģ��游������ѽ������ǣ�����С��")
	-- AddEventItem(128)
	-- SetTask(28, SetByte(GetTask(28),2,10))
	-- AddNote("�o������������е����գ���ö�ˮ��")
	-- Msg2Player("��ö�ˮ�� ")
end;
