-- �ٰ� ����NPC С̫����ؤ��50������
-- by��Dan_Deng(2003-07-28)

function main()
	UTask_gb = GetTask(8)
	if (UTask_gb == 50*256+40) then				--����50������
		Talk(2,"L50_pay","Ng��i n�o?","Ta l� t�o c�ng c�ng,t� qu� l�n c� mang �t qu� bi�t cho l�o gia, xin phi�n ng�i v�o b�o m�t ti�ng!")
	else
		Talk(1,"","Ti�u th�i gi�m : Mau �i �i ��ng c� l�ng v�ng � ��y.")
	end
end;

function L50_pay()
	Say("quen bi�t g� m� quen bi�t, n�u �� l� quen bi�t sao kh�ng bi�t lu�t � ��y.",2,"H�i l� 3000 ng�n l��ng! /L50_pay_yes","kh�ng cho/L50_pay_no")
end;

function L50_pay_yes()
	if (GetCash() >= 3000) then
		Pay(3000)
		Talk(1,"after_pay","V�ng v�ng, ��y l� 3000 l��ng bi�u ng�i u�ng r��u!")
	else
		Talk(1,"","Th�t keo ki�t �i mau")
	end
end;

function after_pay()
	NewWorld(177, 1569, 3169)
	Msg2Player("H�i l� 3000 l��ng cho ti�u th�i gi�m h�n cho ng��i v�o v��n hoa")
	Talk(1,"","Kh�ng c�n nhi�u th�i gian, t�u c�ng c�ng ��ng ng� � v��n hoa mau v�o t�m h�n!")
end

function L50_pay_no()
end;
