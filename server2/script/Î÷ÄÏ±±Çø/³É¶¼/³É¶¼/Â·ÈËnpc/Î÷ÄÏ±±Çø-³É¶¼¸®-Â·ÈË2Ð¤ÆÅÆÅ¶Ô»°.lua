--���ϱ��� �ɶ��� ����2Ф���ŶԻ�
-- update by xiaoyang(2004\4\16) ��90������

Include("\\script\\global\\repute_head.lua")

function main(sel)
	Uworld125 = GetTask(125)
	Uworld36 = GetByte(GetTask(36),1)
	if ((Uworld125 < 10) and (Uworld36 == 127) and (GetReputeLevel(GetRepute()) >= 5) and (GetLevel() >= 90) and (GetFaction() ~= "emei")) or 
		(GetLevel() >= 90 and GetCamp() == 4 and GetTask(5894) == 0) then
		Talk(8,"Uworld125_task","c�c h� l�u l�c giang h� , c� c�m th�y m�t kh�ng?","th� gian c�n c� r�t nhi�u kh� kh�n , m�t m�i c�ng n�n ki�n tr�","T�t , c� ch� kh� . ta c� m�t nhi�m v� , ng��i d�m l�m kh�ng ?","nhi�m v� g� ?","ph�i Nga Mi s�ng l�p c� m�t m�t b� thi�n th� kh�ng c� ch�, tr��c ��y kh�ng l�u , ta nh�n ���c tin t�c , thi�n th� xu�t hi�n � n�i Thanh Th�nh ph� c�n , nh�ng kh�ng c� ai t�m ���c . ng��i c� th� �i m�t chuy�n ?","ng��i kh�ng s� ta t�m ���c r�i chi�m l�y lu�n sao ?","ha ha ha , thi�n th� kh�ng c� ch� ch� c� ng��i h�u duy�n m�i c� th� xem hi�u . cho d� t�m ���c , kh�ng c� c�ch n�o m� ra c�ng l� v� d�ng !","th� ra l� nh� v�y .")
   elseif (Uworld125 == 15) and (HaveItem(388) == 1) then
   	Talk(10,"Uworld125_fire","nh� th� n�o","�� t� l�y ���c.","�� cho ta xem m�t ch�t , qu� nhi�n l� thi�n th� kh�ng c� ch�  ..","tho�t nh�n ta l� ng��i h�u duy�n ..","ng��i c�m b� t�ch , giang h� kh�ng hi�u bao nhi�u ng��i mu�n !","c�n ch�a xong chuy�n . c�ng ng��i n�i , ta l� Nga Mi �� t� , �n c� � th�nh �� . ch��ng m�n c� b� l�m ��ng tin nhi�m v� cho ng��i , nhanh �i l�m �i !","b� b� ��y ?","ta �em gi�p ng��i ng�n c�n ��o t�c mu�n tr�m b� t�ch  !","tu�n l�nh !")
   elseif (Uworld125 == 30) and (HaveItem(389) == 1) then
   	Talk(6,"Uworld125_change","ng��i r�t c�c v�n ph�i ��n","th� n�o?","m�i v�a nh�n ���c chim b� c�u ��a tin c�a ch��ng m�n , �� cho ng��i nhanh tr� v� Nga Mi ?","trong th� kh�ng c� n�i r� r�ng , nh�ng d�a theo l�i ch��ng m�n, chuy�n n�y r�t g�p","ta l�p t�c �i ngay")
   elseif (Uworld125 == 10) then
   	Talk(2,"","nh� th� n�o ? kh�ng t�m ���c thi�n th� � ?","kh�ng n�n t�c gi�n , ta nh�t ��nh s� t�m ���c !")
   elseif (Uworld125 == 20) and (HaveItem(388) == 0) then
   	Talk(1,"","thi�n th� mu�n giao cho ch��ng m�n thanh hi�u s� th�i")
		AddEventItem(388)
		Msg2Player("�o�t ���c thi�n th� kh�ng c� ch�")
   elseif (Uworld125 == 30) then
   	Talk(1,"","ng��i kh�ng c� Nga Mi l�nh ti�n , ch�ng minh nh� th� n�o ng��i �� giao cho ch��ng m�n?")
   elseif (Uworld125 >= 50) then
   	Talk (1,"","ti�u huynh �� , giang h� hi�m �c , c�n b�o tr�ng .. ")
   else
		Talk(1,"","Ti�u b� b� : Ti�u H�n H�n l� m�t t�n h�o s�c , kh�ng ph�i l� �n tr�m g� tr�m ch� , ch�nh l� khi d� n� nhi , huy�n n�o m�i ng��i g� ch� kh�ng y�n. ")
	end
end

function Uworld125_task()
	if (GetCamp() == 0) and (GetTask(75) < 255) then		-- �׷�δѧҰ��ȭ�ģ������������
		Talk(1,"","xem ng��i g�y y�u nh� v�y , ch�u ���c sao ? ta ch�ng qua l� n�i gi�n , ng��i h�y �i luy�n c�ng , sau �� s� n�i . ")
	else
		Say("xong chuy�n , ta s� tr�ng �n ng��i.",2,"�� t� s� �i Thanh Th�nh m�t chuy�n .. /Uworld125_yes","ta c�n c� nh�ng chuy�n kh�c , s� r�ng kh�ng th� gi�p ng��i. /Uworld125_no")
	end
end

function Uworld125_yes()
	SetTask(125,10)
	SetTask(5894,1)
	Msg2Player("��theo nh� Ti�u b� b� n�i , �i ti�m th�nh t�m m� ph�n ")
	AddNote("��theo nh� Ti�u b� b� n�i , �i ti�m th�nh t�m m� ph�n ")
end

function Uworld125_no()
end

function Uworld125_fire()
	SetTask(125,20)
	Earn(10000)
	Msg2Player("theo nh� Ti�u b� b� n�i , �i Thanh Th�nh t�m b� k�p ")
	AddNote("�theo nh� Ti�u b� b� n�i , �i Thanh Th�nh t�m b� k�p ")
end

function Uworld125_change()
	SetTask(125,40)
	DelItem(389)
	Msg2Player("Ti�u b� b� cho ng��i 1 v�n l��ng , ��ng th�i �� cho ng��i mang thi�n th� ��a cho Nga Mi .")
	AddNote("Ti�u b� b� cho ng��i 1 v�n l��ng , ��ng th�i �� cho ng��i mang thi�n th� ��a cho Nga Mi .")
end
