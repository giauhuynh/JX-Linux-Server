--���ϱ��� �ɶ��� ��ҩ��Ů�Ի������ɼ�ҩ�ġ�����
-- Update: Xiao_Yang(2004-04-26)�����ӡ��ɼ�ҩ�����񡱣�

Include("\\script\\global\\repute_head.lua")

function main(sel)
	Uworld132 = GetTask(132)
	Uworld133 = GetByte(GetTask(133),1)
	if (Uworld132 == 10) and (HaveItem(112) == 1) and (HaveItem(113) ==1) and (HaveItem(114) ==1) and (HaveItem(115) ==1) and (HaveItem(116) ==1) then
		Talk(2,"Uworld132_finish","Ti�u c� n��ng, th� ng��i mu�n ta ��u c�","c� th�t kh�ng ? r�t c�m t� ng��i !")
	elseif (GetLevel() >= 20) and (GetReputeLevel(GetRepute()) >= 2) and ((Uworld132 < 10) or ((GetGameTime() > Uworld132) and (Uworld132 > 255))) then		-- ���ɼ�ҩ�ġ�������������
		if (Uworld133 >= 5) then
			SetTask(133,0)
		end
		Talk(5,"Uworld132_get","...","ti�u c� n��ng c� chuy�n g� kh�ng?","thu�c c�a ta �i�m g�n ��y thi�u m�t s� ���c li�u quan tr�ng , c�c �ng ch� ti�m thu�c ph�i �i Th��ng Ch�u �� mua .","Ta kh�ng hi�u chuy�n mua b�n , nh�ng,, ta th��ng ��n ti�m c�a ng��i mua thu�c , c� c�i g� kh� kh�n ng��i vi�c n�i ,kh�ng ch�ng ta c� th� gi�p ng��i.","c� th�t kh�ng ? ng��i bi�t n�i n�o c� th� t�m ���c 5 lo�i thu�c : t?m�c t�c ? ��a c�m c?? thi�n c?? h?nh?c?c�ng linh chi sao","ha ha , qu?may m�n , nh�ng thu�c n�y ta �� th�y qua � d��c v��ng c�c ")
	else
		i = random(0,2)
		if (i == 0) then
			Talk(1,"","h�i thu�c thi�u n�: ch�ng ta th�nh �� ph?c�n s�n nh�ng nhi�u , g�n ��ch c?Nga Mi s�n ? n�i Thanh Th�nh , xa h�n m�t ch�t �i�m Th��ng s�n ? cung lai s�n ? d�n s�n . s�n nhi�u , th�o d��c d?nhi�n l?nhi�u , h�n n�a th�nh s�n xuy�n b�i ? x?h��ng ? ng�y t?d�i ? tr�ng c?")
		elseif (i == 1) then
			Talk(1,"","h�i thu�c thi�u n�: ta h�i th�o d��c , ���c ch�t �t �em b�n �i , c?ch�t b�n cho ti�m thu�c , ��i l�y ti�n nu�i s�ng ta c�ng b?n�i")
		else
			Talk(1,"","h�i thu�c thi�u n�: cha m?ta r�t s�m ngay khi ta c�n b? ch?c�n l�i ta c�ng b?n�i s�ng n��ng t�a l�n nhau , b?n�i l?ng��i th�n duy nh�t")
		end
	end
end;

function Uworld132_get()
	Say("v�y ng��i c� th� gi�p ta h�i m�t ch�t mang v� sao ?",2,"Ch� l� chuy�n nh�, c� n��ng ch� m�t ch�t. /Uworld132_yes"," n�i �� r�t nhi�u qu�i v�t , t�i h� v� ngh� kh�ng tinh , t�t nh�t l� �i tu luy�n th�m ��/Uworld132_no")
end

function Uworld132_yes()
	SetTask(132,10)
	Msg2Player("C� ng��i n�i � d��c v��ng c�c th�y ���c n�m lo�i d��c li�u n�y, cam k�t s� gi�p c� n��ng h�i. ")
end

function Uworld132_no()
end

function Uworld132_finish()
	
	local nResult = 0;
	
	-- �����Ʒ�ǻ���������� 1 ��ֱ�� return
	for i=112, 116 do
		nResult = HaveItem(i);
		if nResult~=1 then
			return
		end;
		DelItem(i);
	end;
	
	SetTask(132,GetGameTime()+3600)
	
	Uworld133 = GetByte(GetTask(133),1)
	Uworld133_2 = GetByte(GetTask(133),2)
	Cur_date = tonumber(date("%d"))
	if (Uworld133_2 == Cur_date) then
		Uworld133 = Uworld133 + 1
	else
		Uworld133 = 1
	end
	AddRepute(Uworld133)
	Msg2Player("Ng��i ��t t�i"..Uworld133.."danh v�ng tr?")
	if (Uworld133 >= 5)then
		SetTask(133,0)
		AddRepute(10)
		Msg2Player("nhi�u l�n ra tay tr?gi�p , ng��i ��t ���c 10 �i�m t��ng th��ng ")
	else
		Uworld133 = SetByte(Uworld133,2,Cur_date)
		SetTask(133,Uworld133)
	end
end
