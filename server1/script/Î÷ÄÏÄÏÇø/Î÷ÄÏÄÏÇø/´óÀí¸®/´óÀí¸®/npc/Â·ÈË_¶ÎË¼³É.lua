-- ������ˡ���˼��
-- by��Dan_Deng(2003-09-16)
-- update by xiaoyang(2004\4\22) ����90������

Include("\\script\\global\\repute_head.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main()
	if allbrother_0801_CheckIsDialog(14) == 1 then
		allbrother_0801_FindNpcTaskDialog(14)
		return 0;
	end
	Uworld126 = GetTask(126)
	Uworld36 = GetByte(GetTask(36),2)
	if (Uworld126 < 10) and (GetLevel() >= 90) and (Uworld36 == 127) and (GetReputeLevel(GetRepute()) >= 5) and (GetFaction() ~="cuiyan") then
		Talk(6,"Uworld126_get","Haiz ....","C�ng t� v� sao l�i th� d�i ?","Ng��i tr� tu�i ph�i c� ch� h��ng l�n.","Ch�ng l� � trung nh�n c�a c�c h� kh�ng c� � ��y.","N�ng v�n c�n ��y, nh�ng t�m �� ch�t.","Ch� c�n ng��i th�nh t�m th�nh �, chuy�n g� c�ng c� th� th�nh. C�c h� c� g� kh� kh�n, c� vi�c n�i..")
	elseif (Uworld126 == 10) and (HaveItem(391) == 0) then
		AddEventItem(391)
		Msg2Player("Nh�n ���c th�")
		if (GetSex() == 0) then
			Talk(1,"","Mu�n g�p m� nh�n c�ng kh�ng c�n v�i v� nh� v�y ��u? Th� c�n kh�ng c� c�m n�a.")
		else
			Talk(1,"","C�c h� qu�n mang th�.")
		end
	elseif (Uworld126 == 40) then
		SetTask(126,45)
		Talk(8,"Uworld126_jump","��ng n�i l�!","�o�n c�ng t� ... ng��i ng��i �� cho L� Thu Th�y h��ng t�n c�ng vinh hoa ph� qu�, n� nh�n nh� v�y th� thi�u g�, 10 l��ng ��n 100 l��ng c� ��y.","N�i nh� v�y c�ng kh�ng ��ng, xin c�c h� r�i kh�i n�i n�y nhanh cho.","�o�n nh� th�nh, ng��i r��u m�i kh�ng u�ng mu�n u�ng r��u ph�t h�, ta kh�ng ch�u n�i nh� ng��i n�a r�i, n�u nh� ng��i c�n kh�ng tr� l�i, ta .. ta ..","H�  ","Nh�n l�y ti�u t�! ","Aa.....","�o�n c�ng t�")
	elseif (Uworld126 == 45) then			-- �������
		Talk(1,"Uworld126_jump","Ng��i tr�n kh�ng tho�t kh�i c�i mi�u n�y, xem chi�u..!")
	elseif (Uworld126 == 50) then
		Talk(8,"Uworld126_set","�o�n c�ng t� kh�ng ph�i l� ��i th� c�a h�n!","May nh� ng��i t�i k�p th�i, t�i h� c�n c� th� ch�u ��ng ���c.","Ng��i t� ��u t�i ��y?","Ta �� h�a v�i L� Thu Th�y ��n ��y",".....c�, ta c�ng l� c� n��ng n�i d�i, n�i ng��i b� th��ng n�ng.","Vi�c n�y kh�ng ���c t�t cho l�m.","C� ��i h�nh ph�c, ch�ng l� kh� kh�n kh�ng th� v��t qua ���c �?","�o�n t� th�nh: H�o.. c�c h� mu�n th� n�o c�ng ���c. �o�n m� ��u nghe theo..")
	elseif (Uworld126 == 70) then
		Talk(3,"U126_70","Sao? L� c� n��ng t�i th�m ng��i sao?","N�ng t�i, ch�ng ta n�i chuy�n r�t vui v�, ng��i gi�p ta r�t nhi�u, �a t�.","C�n g� ph�i c�u n�, ch� c�n 2 ng��i h�nh ph�c, chuy�n nh� th�i, c� ��ng g�.")
	elseif (Uworld126 > 10) and (Uworld126 < 50)then
		Talk(1,"","Tr��c l� do ta sai l�m r�i, th�t kh�ng bi�t n�n c�m �n nh� th� n�o !...")
	else
		Talk(2,"","Ch�ng ta s�ng � ��i L�, h�ng n�m cung ph�ng cho thi�n tri�u, t� l�a, n�nh b�, x� h��ng.","B�n qu�n Kim tham lam, c�ng hi�n bao nhi�u c�ng kh�ng ��.")
   end
end;

function Uworld126_get()
	if (GetCamp() == 0) and (GetTask(75) < 255) then		-- �׷�δѧҰ��ȭ�ģ������������
		if (GetSex() == 0) then
			Talk(1,"","Huynh ��i ��ch h�o �, t� th�nh minh k�.")
		else
			Talk(1,"","Huynh ��i ��ch h�o �, t� th�nh minh k�.")
		end
	else
		Say("Th�c kh�ng d�m gi�u gi�m, tr��c kia ta �� c� l�i v�i n�ng, b�y gi� h�i h�n �� ch�m. Ta giao cho ng��i m�t phong th�. Hy v�ng c�c h� c� th� t� tay giao cho L� Thu Th�y.",2,"Chuy�n n�y kh� kh�n g�/Uworld126_yes","T�i h� c�n c� vi�c, c�c h� t�m ng��i kh�c �i!/Uworld126_no")
	end
end

function Uworld126_yes()
	AddEventItem(391)
	SetTask(126,10)
	Msg2Player("Nh�n ���c �o�n t� th�nh th�, ��n Th�y Y�n m�n giao cho L� Thu Th�y. ")
	AddNote("Nh�n ���c �o�n t� th�nh th�, ��n Th�y Y�n m�n giao cho L� Thu Th�y.")
end

function Uworld126_no()
end

function Uworld126_jump()
	SetFightState(1)
	NewWorld(230,1613,3175)
end

function Uworld126_set()
	SetTask(126,60)
	Msg2Player("L�a g�t Thu Th�y �i g�p �o�n T� Th�nh.")
	AddNote("L�a g�t Thu Th�y �i g�p �o�n T� Th�nh.")
end

function U126_70()
	Talk(1,"","��ng r�i, Thu Th�y n�i ng��i ��n g�p ch��ng m�n, kh�ng hi�u c� chuy�n g�.")
	SetTask(126,80)
	Msg2Player("N�i chuy�n c�ng v�i L� Thu th�y r�t vui v�, nhanh �i t�m Du�n Ng�m Nh�n.")
end
