--���ϱ��� �ɶ��� ��ϵˢ�Ⱥ���ʦ�Ի�
--author: yuanlan	
--date: 2003/3/6
-- Update: Dan_Deng(2003-08-12)

function main(sel)
	UTask_em = GetTask(1);
	if (UTask_em <10) then				--���м��������
Talk(4, "", "T� v�n ph�p s�: Th� ch�, xem ra ng��i mu�n luy�n t�p v� ngh�, h�y �i t�i Th�nh ��,Nga My ph�i,ho�c th�c nam Tr�c H�i", "V� th� ch� ��y th�t c� c� duy�n,n�u kh�ng ng�i th� nghe l�o n�p n�i m�y c�u", "Nga mi ph�i thanh hi�u s� th�i c�ng c�c tr� tr� l� tu ��o b�n trong ch�a , n�ng l�m ng��i t� bi , s� kh�ng l�m kh� ng��i . Nh�ng m�y v� t�c gia �� t� v� c�ng cao c��ng ,n�u ng��i mu�n l�n Nga Mi , nh�t ��nh ph�i th�ng qua c�c kh�o nghi�m c�a n�ng m�i ���c .", "v� ph�n th�c nam tr�c h�i ch�nh l� ���ng m�n , l�o n�p khuy�n ng��i h�y ch� v�i li�u l�nh . �� t� ���ng m�n trong l�m vi�c qu� b� , ���ng m�n b�n ph�a c� quan n�ng n� , n�u mu�n x�ng qua tr�c h�i , s� r�ng d� nhi�u l�nh �t")
	elseif (UTask_em == 40*256+50) then 		--������40������
		UTask_emsub02 = GetByte(GetTask(29),2)
		if (UTask_emsub02 == 0) then 
			Say("A di �� ph�t ! ph�i Nga Mi ��ch th� n� hi�p , qu� ph�i ch��ng m�n thanh hi�u s� th�i ph�t l� th�ng su�t , m�n h� �� t� ph�t h�c th�nh t�u cao si�u , l�o t�ng kh�ng bi�t t� l��ng s�c m�nh , ch� mu�n m� r�ng ph�t ph�p", 2, "xin m�i ��i s� ch� �i�m/L40_V2_Q1", "V�n b�i c�n c� chuy�n kh�c /no")
		elseif (UTask_emsub02 == 3) then
			L40_V2_Q1()
		elseif (UTask_emsub02 == 5) then
			L40_V2_Q2()
		elseif (UTask_emsub02 == 7) then
			L40_V2_Q3()
		else
			if (HaveItem(167) == 0) then
				AddEventItem(167)
				Talk(1,"","n� hi�p qu� nhi�n kh�ng h� l� Nga Mi �� t� , n�i n�y c� c� h� th�n ph� , xin m�i nh�n l�y!")
			else
				Talk(1,"","Nga Mi n� hi�p ��ch  th� ph�t h�c  c�ng v� h�c th�nh t�u th�t kh�ng t�m th��ng , l�o t�ng b�i ph�c!")
			end
		end
	elseif ((UTask_em == 50*256+50) and (HaveItem(23) == 1)) then		--������50������
		Talk(5, "","t� v�n ph�p s� : A di �� ph�t ! n� hi�p c� chuy�n g� kh�ng ?","t�i h� ph�ng s� t�n chi m�nh , c� l� v�t t�ng qu� t� , l�m phi�n ��i s� h�i qu� t� t� h�i ph��ng tr��ng th�ng b�o m�t ti�ng .","�a t� t�n s� � t�t ,b�n t�ng c�ng kh�ng bi�t ph��ng tr��ng b�y gi� n�i n�o , �ang lo l�ng an nguy c�a ng��i.","kh�ng bi�t �� x�y ra chuy�n g� ?","n�i ��n th�t k� qu�i , ph��ng tr��ng s�ng nay nh�n m�t phong th� sau �� �i ngay ra h�u vi�n , cho t�i b�y gi� c�ng kh�ng c� �i ra , c�ng kh�ng bi�t x�y ra chuy�n g�.")
		SetTask(1, 50*256+60)
		AddNote("C�ng t� v�n ph�p s� n�i chuy�n sau T� h�i ��i s� �i h�u vi�n . ")
		Msg2Player("C�ng t� v�n ph�p s� n�i chuy�n sau T� h�i ��i s� �i h�u vi�n")
	elseif (UTask_em == 50*256+60) then
		Talk(1,"","n�i ��n th�t k� qu�i , ph��ng tr��ng s�ng nay nh�n m�t phong th� sau �� �i ngay ra h�u vi�n , cho t�i b�y gi� c�ng kh�ng c� �i ra , c�ng kh�ng bi�t x�y ra chuy�n g�.")
	elseif (UTask_em >= 50*256+80) and (GetFaction() == "emei") then
		Talk(1,"","�a t� n� hi�p c�u ph��ng tr��ng , Nga Mi n� hi�p qu� nhi�n danh b�t h� truy�n.")
	elseif (UTask_em == 70*256) then
		Talk(1,"","n� hi�p ng�y sau h�nh t�u giang h� , c� g� c�n v�n t� gi�p m�t tay ch� c�n m� l�i , v�n t� nh�t ��nh khuynh l�c t��ng tr�.")
	else
		Say("t� v�n ph�p s� : t�n s� c� kh�e kh�ng ?")	--��������ɺ�ķ�����Ի�
	end
end;

function no()
	Talk(1,"","l�o t�ng c�ng kh�ng qu�y r�y n� hi�p ngh� ng�i")
end;

function L40_V2_Q1()
	Say("Ph�t gi�o l� � th�i gian n�o truy�n v�o trung th�  ?", 4, "Chi�n qu�c/ /f1", "Nh� H�n /L40_V2_Q2", "Nh� ���ng /f1", "Nh� Minh /f1")
end;

function f1()
	Say("A di �� ph�t ! xem ra n� hi�p ��i v�i ph�t h�c hi�u r� c�n ch�a �� s�u ")
	SetTask(29, SetByte(GetTask(29),2,3))
end;

function L40_V2_Q2()
	Say("r�t t�t . n� hi�p bi�t v� cao t�ng ���ng tri�u ��n Thi�n Tr�c th�nh kinh l� ai ?", 4, "Bi�n k�/f2", "Gi�m th�t/f2", "Nh�t ��i/f2", "���ng T�ng/L40_V2_Q3")
end;

function f2()
	Say("C� ph�i n� hi�p �� nh� nh�m hay kh�ng", 0)
	SetTask(29, SetByte(GetTask(29),2,5))
end;

function L40_V2_Q3()
	Say("kh�ng t� , qu� ph�i v� tr� Nga Mi s�n l� m�t trong thi�n h� t� ��i ph�t s�n, n� hi�p c� bi�t c�i n�o kh�ng thu�c v� t� ��i ph�t s�n ?", 4, "Ph� �� s�n/f3", "C�u Hoa S�n/f3", "tung s�n/L40_V2_prise", "Ng� ��i s�n/f3")
end;

function f3()
	Say("ch�ng l� t�n s� ch�a n�i v�i c�c ng��i sao ?", 0)
	SetTask(29, SetByte(GetTask(29),2,7))
end;

function L40_V2_prise()
	Talk(1,"","Nga Mi �� t� ��ch ph�t h�c c�ng v� h�c th�nh t�u kh�ng t�m th��ng , l�o t�ng b�i ph�c , xin t�ng �ng t�nh h� th�n ph� ��a cho n� hi�p , �� b�y t� t�m �")
	AddEventItem(167)
	SetTask(29, SetByte(GetTask(29),2,10))
	AddNote("Nh�n ���c �ng t�nh h� th�n ph� . ")
	Msg2Player("b�t ���c �ng t�nh h� th�n ph� . ")
end;
