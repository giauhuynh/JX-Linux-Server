-- ��ݵĺ���
-- By: Dan_Deng(2003-08-22)

function main(sel)
	if (GetTeamSize() > 1) and (IsCaptain() == 1) then			-- ֻ�жӳ������������
		Talk(1,"Wswear_select", 11374)
	else
		Talk(1,"", 11375)
	end
end;

function Wswear_select()
	if (GetSex() == 0) then
		P_sex = "����"
	else
		P_sex = "Ů��"
	end
	Say("������ʦ��˵�úã�ֻ��Ҫ"..P_sex.." 3000���޷���, ʲô�¶���˵.",2,"�� 3000 ��. /Wswear_yes","����Ҫ!/Wswear_no")
end;

function Wswear_yes()
	if (GetCash() >= 3000) then
		if(SwearBrother(GetTeam()) == 1)then
			Pay(3000)
			Msg2Team("��ϲ��λ�������. ")
		else
			Msg2Team("�����з��޹�ϵ�����ʧ��. ")
		end
	else
		Talk(1,"", 11376)
	end
end;

function Wswear_no()
end;
