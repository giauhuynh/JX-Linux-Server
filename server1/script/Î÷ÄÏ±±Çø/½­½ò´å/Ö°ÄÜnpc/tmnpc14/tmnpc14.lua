--description: ���Ž������Ԫ�˾� 50������ 
--author: yuanlan	
--date: 2003/3/12
-- Update: Dan_Deng(2003-08-13)

function main()
	UTask_tm = GetTask(2)
	if (UTask_tm == 50*256+40) then
		Talk(1,"","M� l�i 'GTT005' vui l�ng ch�p h�nh g�i cho admin �� fix l�i!")
	else
		Talk(1,"","Ta kh�ng c� con c�i, ch� c� 1 ��a ch�u ngo�i �ang h�c v� t�i ���ng M�n")
	end
end;
