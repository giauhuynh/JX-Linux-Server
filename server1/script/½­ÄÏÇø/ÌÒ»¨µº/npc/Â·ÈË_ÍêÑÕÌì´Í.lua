-- ������ �һ��� ���� ·��_�������.lua
-- by: Dan_deng(2004-05-15)
-- Ϊ���̵��Ӽ����ʦ���Ӹ��¼���

Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\bil4i3n\\bill4i3n.lua")

function main()
	Bil_DefaultTalk4Npc()
--	Uworld137 = GetTask(137)
--	if (Uworld137 == 4) then			-- ������¼���
--		del_all_skill()
--		Talk(1,"skills_update","������ͣ��ߣ����������Ǹ����л���û����������С��һ·׷ɱ���������ý�������ӣ���ô�����䵽����ĵ��ĵز�����С�ӹ�����������ָ���㼸�֣��Ż���Щ��һ��ʲô��Ϣ�����ϻ�ȥ���棡")
--	elseif (Uworld137 == 24) then		-- �Ѿ����¹�����
--		Talk(1,"","������ͣ���С��ʶ��㣬����Ҳѧ�ˣ����������ȥ���£�")
--	else										-- ��������
		-- Talk(1,"","�ߣ��Ǹ����л��ӡ������ý��������ô�ᱻ����������. ")
--	end
end

function skills_update()			-- �ȸ�������ȼ�ɾ�������¼��뼼�ܣ�Ȼ�󲹻ؼ��ܵ�
	UTask = GetTask(4)
	if (GetTask(127) == 255) then		-- ѧ����90������
		the_lvl = 90
	elseif (HaveMagic(150) >= 0) then		-- �����ɾ�ѧ����
		the_lvl = 70
	elseif (UTask >= 60*256) then		-- �����50������
		the_lvl = 60
	elseif (UTask >= 50*256) then		-- �����40������
		the_lvl = 50
	elseif (UTask >= 40*256) then		-- �����30������
		the_lvl = 40
	elseif (UTask >= 30*256) then		-- �����20������
		the_lvl = 30
	elseif (UTask >= 20*256) then		-- �����10������
		the_lvl = 20
	elseif (UTask >= 10*256) then		-- ������
		the_lvl = 10
	end
	add_tr(the_lvl)			-- �ӻ�Ӧѧ��ļ���
	-- �����ܵ����� = (�ȼ�-1) + �Ӽ������� + �Ӽ��ܵ��� - ����δ�������				�����弼�ܣ���
	MagicPoint_total = GetLevel() + GetByte(GetTask(86),2) + GetByte(GetTask(80),1) - GetMagicPoint() - 1
	AddMagicPoint(MagicPoint_total)
	SetTask(137,24)
	Talk(1,"UpdateSkill","������! �����ҷԸ��������к���Ϣ�Ϳ����������")
end
