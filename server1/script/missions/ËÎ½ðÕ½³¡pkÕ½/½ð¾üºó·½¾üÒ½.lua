--��ԭ���� �ν�ս�� ����������ҽ
--���� 2004-10-14

function main(sel)
if (GetCurCamp() == 2) then
	SetFightState(0)
	Say("������Ҫ��ʲô��?", 2, "��ҩ/yes", "����/no")
else
	Talk(1,"","������ü���ۣ���ƭ���������������ҩ���㰡?")
end;
end;

function yes()
Sale(53)
end;

function no()
end;