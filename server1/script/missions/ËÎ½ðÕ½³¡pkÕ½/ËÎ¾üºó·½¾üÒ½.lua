--��ԭ���� �ν�ս�� �ξ��������ҽ
--���� 2004-10-14

function main(sel)
if (GetCurCamp() == 1) then
	SetFightState(0)
	Say("׳ʿӦ����Щ��ҩ����ս����������!", 2, "��ҩ /yes", "����/no")
else
	Talk(1,"","���ˣ�����ץ���")
end;
end;

function yes()
Sale(53)
end;

function no()
end;