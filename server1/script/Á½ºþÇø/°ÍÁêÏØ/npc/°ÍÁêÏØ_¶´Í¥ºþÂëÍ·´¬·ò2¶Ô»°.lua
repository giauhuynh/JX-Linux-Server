--������ ������ ��ͥ����ͷ����2�Ի�
-- Update: Dan_Deng(2003-08-21) ���ͳ���ȼ�Ҫ��Ϊ5��

function main(sel)
Say("C� ��i ta ��u s�ng v�i s�ng n��c! ��ng ��nh h� kh�ng ch� n�o ta kh�ng bi�t! Kh�ch quan mu�n �i ��u? ", 2, "�i Thi�n V��ng ��o/yes", "Ta s� l�m kh�ng �i ��u/no");
end;

function yes()
if (GetLevel() >= 5) then						--�ȼ��ﵽʮ��
	if (GetFaction() == "tianwang") then				--����������������ӣ���������Ǯ
		Say("N�i �� nguy hi�m l�m! Ng��i c� th�t s� mu�n �i kh�ng? ", 1, "ok/ok1")
	else	
		Say("N�i �� nguy hi�m l�m! N�u kh�ch quan mu�n �i th� cho t�i xin th�m �t ti�n. ", 1, "Nh�t tr�/ok2")
	end
else		
	Say("gia33", 0)
end
end;

function no()
end;


function ok1()
NewWorld(59, 1425, 3472)
SetFightState(0)								--ת��Ϊ��ս��״̬
end;


function ok2()
if (GetCash() >= 100) then							--�ο�ֵ
	Pay(100)
	NewWorld(59, 1425, 3472)
	SetFightState(0)							--ת��Ϊ��ս��״̬	
else
	Say("Kh�ng c� ti�n th� ta kh�ng ��a ng��i ��n �� ���c", 0)		
end
end;
