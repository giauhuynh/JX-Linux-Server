--description: ���ִ�_С��
--author: wangzg	
--date: 2003/7/22
--update 2003/7/28 yuanlan
--Update: Dan_Deng(2003-08-07)
-- Update: Dan_Deng(2003-09-09) �޸�װ���������ɷ�ʽ

Include("\\script\\global\\itemhead.lua")

function main()
	UTask_world45=GetTask(73)
	if (UTask_world45 == 1) then
		Talk(4, "Fpay", "Ch�u l� Ti�u Long? Ch� ch�u �ang t�m ��, mau v� �i!", "Ch�u ch�a mu�n v�, t� t� cho ch�u 10 l��ng b�c b�o ch�u �i mua k�o, nh�ng ch�u �� l�m m�t ti�n r�i, t� s� m�ng ch�u th�i","Ch�u t�m xung quanh r�t l�u r�i c�ng kh�ng t�m ���c 10 l��ng b�c, hu hu hu.....","Ch�u ��ng lo ta cho ch�u 10 l��ng!")
	else
		Talk(1,"","T� r�t t�t v�i ta, nh�ng ta r�t s� t� �y!")
	end
end

function Fpay()
	if (GetCash() < 10) then
		Talk(1,"","Hu hu ta ��nh r�i 10 l��ng b�c r�i. Ng��i c� nh�n th�y ko?")
	else
		Pay(10)
		Talk(1,"","Ch�u c�m �n!S�i y�u ��i n�y l� ch�u kh�ng d�ng ��n. Ch�u xin t�ng cho �n nh�n!")
		SetTask(73,10)
		AddNote("T�m ���c Ti�u Long, ��a cho n� ti�n, thuy�t ph�c n� v� nh�. Nhi�m v� ho�n th�nh. ")
		Msg2Player("T�m ���c Ti�u Long, ��a cho n� ti�n, thuy�t ph�c n� v� nh�. Nhi�m v� ho�n th�nh. ")
		p1,p2,p3,p4,p5,p6 = RndItemProp(6,10)
		AddItem(0,6,0,1,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6)
		Msg2Player("Nh�n ���c m�t s�i d�y th�t l�ng b�ng da. ")
		AddRepute(5)
		Msg2Player("Danh v�ng c�a b�n t�ng th�m 5 �i�m.")
	end				
end

function no()
end
