--��ԭ���� ������ ·�˾Ƶ��ƹ�ĶԻ�
--��������������: ���ֻ�
--by Dan_Deng(2003-07-21)

--ʹ�ñ���: UTask_world40,GetTask(68)

function main()
	UTask_world40 = GetTask(68)
	if ((UTask_world40 == 3) or (UTask_world40 == 4)) then
		Talk(1,"sele_buy","C� ��u ph� Ng� H��ng b�n kh�ng?")
	else
		i = random(0,1)
		if (i==0) then
			Talk(1,"","M�i kh�ch quan v�o b�n trong.")
		else
			Talk(1,"","�� nh�t ��c s�n � Chu Ti�n Tr�n n�y ch�nh l� ��u h� Ng� H��ng c�a ti�u qu�n.")
		end
	end
end;

function sele_buy()
	Say("��y l� ��c s�n � Chu Ti�n tr�n, ���ng nhi�n l� c� nh�ng gi� h�i ch�t, 100 l��ng b�c ng��i mua kh�ng?",2,"Mua/yes","��t qu�/no")
end;

function yes()
	if(GetCash() >= 100)then
		Talk(1,"","���c! M�t ph�n ��u ph� Ng� H��ng c�a ng��i ��y!")
		Pay(100);
		AddEventItem(187);
		Msg2Player("Mua ���c m�t ph�n ��u ph� Ng� H��ng");
		AddNote("Mua ���c m�t ph�n ��u ph� Ng� H��ng")
--		SetTask(68,4);
	else
		Talk(1,"","B�n qu�n mua b�n l� v�n ��u, khi n�o �� ti�n h�y quay l�i.")
	end
end;

function no()
end;
