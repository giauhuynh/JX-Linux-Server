--������ ������ ��ͥ����ͷ����1�Ի�
-- Update: Dan_Deng(2003-08-21) ���ͳ���ȼ�Ҫ��Ϊ5��

function main(sel)
	Say("C� ��i ta ��u s�ng v�i s�ng n��c! ��ng ��nh h� kh�ng ch� n�o ta kh�ng bi�t! Kh�ch quan mu�n �i ��u?", 2, "�i Thi�n V��ng ��o/yes", "Ta kh�ng �i ��u/no")
end;

function yes()
	if (GetLevel() >= 5) then						--�ȼ��ﵽʮ��
		if (GetFaction() == "tianwang") then				--����������������ӣ���������Ǯ
			Say("H�m nay m�t tr�i n�n ta s� ��a ng��i l�n Thi�n V��ng ��o mi�n ph�", 1, "Th� th� c�n g� b�ng/ok1")
		else	
			Say("Thi�n V��ng ��o v� c�ng kh� �i n�n ng��i cho ta xin �t l� ph� l� 100 l��ng", 1, "��ng � mau ��a ta �i/ok2")
		end
	else		
		Talk(1,"","�� ��n Thi�n V��ng ��o b�o tr�ng nh� anh b�n")
	end
end;

function no()
end;

function ok1()
NewWorld(59, 1425, 3472)
SetFightState(0)					--ת��Ϊ��ս��״̬
end;

function ok2()
if (GetCash() >= 100) then							--�ο�ֵ
	Pay(100)
	NewWorld(59, 1425, 3472)
	SetFightState(0)							--ת��Ϊ��ս��״̬	
else
	Say("Kh�ng c� ti�n l� ph� ta kh�ng ��a ng��i �i ���c", 0)		
end
end;
