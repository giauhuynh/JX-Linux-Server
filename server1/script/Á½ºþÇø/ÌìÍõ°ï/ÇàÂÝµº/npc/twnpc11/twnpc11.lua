--description: ���ݵ���ͷ����
--author: yuanlan	
--date: 2003/4/28


function main()

if (GetFaction() == "tianwang") then					--����������������ӣ���������Ǯ
	Say("Thi�u hi�p mu�n �i nh� kh�ng!", 2, "phi�n ng�i!/yes", "th�i /no")
else	
	Say("kh�ng ph�i ng��i c�a thi�n v��ng, m�i l�n 500 l��ng!", 2, "��a ta �i/yes1", "th�i/no")
--	Talk(1,"","�������ڣ��㲻�Ǳ�����ӣ���ô�쵽����������ģ���")
end;

end;


function yes()
NewWorld(59, 1425, 3472)						--��������
SetFightState(0)							--ת��Ϊ��ս��״̬
end;


function yes1()
if (GetCash() >= 500) then						--�ο�ֵ
	Pay(500)
	NewWorld(59, 1425, 3472)					--��������
	SetFightState(0)						--ת��Ϊ��ս��״̬
else
	Say("ûǮ�͸Ͽ���!", 0)		
end;
end;


function no()
end;
