--���ϱ��� �ɶ��� ����16иԱ��Ի� ������40������
--author: yuanlan	
--date: 2003/5/23
-- Update: Dan_Deng(2003-08-12)

function main(sel)
	UTask_em = GetTask(1);
	if (UTask_em == 40*256+50) then 		
		UTask_emsub03 = GetByte(GetTask(29),3)
		if (UTask_emsub03 == 0) then 
			Say("t�n vi�n ngo�i : t�i h� b�nh sanh th�ch nh�t k�t giao giang h� hi�p kh�ch , c�c b�ng h�u ��c ngo�i hi�u g�i � M�nh Th��ng vi�n ngo�i � , v�n l� khen l�m , nh�ng g�n nh�t c� ng��i n�i t�i h� l� c� t�n c�u d� , t�i h� h�t s�c kh�ng cam l�ng . kh�ng bi�t n� hi�p c� th� hay kh�ng v� t�i h� gi�i ��p m�y nghi ng� ?", 2, "xin h�i/L40_V3_Q1", "ta c�n c� chuy�n kh�c/no")
		elseif (UTask_emsub03 == 3) then 
			L40_V3_Q1()
		elseif (UTask_emsub03 == 5) then 
			L40_V3_Q2()
		elseif ((UTask_emsub03 == 10) and (HaveItem(168) == 0)) then
			AddEventItem(168)
			Talk(1,"","n� hi�p kh�ng c�n kh�ch kh� , ng��i c�n th� l�y �i �i")
		else
			Talk(1,"","c� th� c�ng n� hi�p l�m b�ng h�u th�t l� vinh h�nh.")
		end
	else
		Talk(1,"","t�n vi�n ngo�i : t�i h� b�nh sanh th�ch nh�t k�t giao giang h� hi�p kh�ch , c�c b�ng h�u ��c ngo�i hi�u , g�i l� � M�nh Th��ng vi�n ngo�i � , th�t s� l� khen sai r�i")
	end
end;

function no()
	Talk(1,"","v�y ta kh�ng phi�n to�i n� hi�p!")
end;

function L40_V3_Q1()
	Say("t�n vi�n ngo�i : m�nh th��ng qu�n l� ng��i n��c n�o ", 4, "N��c S�/f1", "�� n��c/L40_V3_Q2", "n��c Tri�u/f1", "N��c Ng�y/f1")
end;

function f1()
	Talk(1,"","t�n vi�n ngo�i : gi�ng nh� kh�ng ��ng sao ? ta l�n tr��c n�i nh� v�y c�n b� ng��i kh�c nh�o b�ng m�t phen")
	SetTask(29, SetByte(GetTask(29),3,3))
end;

function L40_V3_Q2()
	Say("t�n vi�n ngo�i : Th� ra l� h�n l� �� qu�c nh�n a ! chi�n qu�c T� c�ng t� trong , tr� m�nh th��ng qu�n ? l�ng qu�n h�a b�nh nguy�n ra , ng��i c� c�n bi�t c�n m�t ai hay kh�ng v�y", 4, "long d��ng qu�n/f2", "t�nh qu�ch qu�n/f2", "xu�n th�n qu�n/L40_V3_prise", "thi�u nguy�n qu�n/f2")
end;

function f2()
	Talk(1,"","t�n vi�n ngo�i : gi�ng nh� kh�ng ��ng sao ? ta th� ch�a nghe n�i qua l�n n�o")
	SetTask(29, SetByte(GetTask(29),3,5))
end;

function L40_V3_prise()
	Talk(4, "select", "��ng r�i , th� m� ta kh�ng ngh� ��n, nghe n�i tr��c kia m�nh th��ng qu�n c� 3000 th�c kh�ch , ta m�c d� kh�ng c� kh� ph�ch nh� v�y , nh�ng l� r�t th�ch k�t giao gi�ng nh� n� hi�p b�ng h�u nh� th� . n� hi�p c�n ta tr� gi�p sao ?", "ta �ang t�m b�ch t� nh�n ", "sao kh�ng n�i s�m , ta c� m�t b�ch t� chi�c nh�n , �� ta ��a cho ng��i ", "�a t� vi�n ngo�i ! ")
end;

function select()
	AddEventItem(168)
Msg2Player("l�y ���c b�ch t� nh�n .")
	SetTask(29, SetByte(GetTask(29),3,10))
	AddNote("� th�nh �� t�n vi�n ngo�i ch� t�m ���c chi�c nh�n m� n�o ")
end;
