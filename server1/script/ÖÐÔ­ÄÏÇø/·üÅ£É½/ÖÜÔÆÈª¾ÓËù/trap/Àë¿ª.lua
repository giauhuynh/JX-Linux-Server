-- ����Ȫ���� ���͵� �뿪.lua
-- By: Dan_Deng(2004-04-08)
-- �ص���ţɽ�������Ķ���ڣ�

function main()
	if (GetSex() == 0) then
		Talk(1,"","������ɽ������Ȼ���׾�����������С�ӣ������'! ")
	else
		Talk(1,"","������ɽ������Ȼ���׾�����������С�ӣ������'! ")
	end
	i = random(0,99)
	if (i < 33) then
		NewWorld(41, 1951, 2989)
	elseif (i < 67) then
		NewWorld(41, 1685, 3268)
	else
		NewWorld(41, 1788, 3085)
	end
end
