--��ԭ���� �ν�ս�� �ξ���ҽ
--����

function main(sel)
	if (GetCurCamp() == 1) then
		Say("���������ı����Ǻñ������Ŵ���Ҫ�������壬���ҩ��", 2, "��ҩ/yes", "����/no")
	else
		Talk(1,"","�����ļ�ϸ��������Ѵ������£�")
	end
end;

function yes()
Sale(53)
end;

function no()
end;