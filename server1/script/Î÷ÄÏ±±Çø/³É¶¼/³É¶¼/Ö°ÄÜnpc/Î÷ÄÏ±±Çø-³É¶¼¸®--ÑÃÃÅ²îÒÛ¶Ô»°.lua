--���ϱ��� �ɶ��� ѷ�Ų��۶Ի� ʵ�����񣨳ɶ�ɱҰ��
-- Update: Dan_Deng(2004-03-19)

FESTIVAL06_NPCNAME = "<color=yellow>:<color>";

Include("\\script\\global\\repute_head.lua")

Include([[\script\global\����_ѷ��ε��.lua]]);

function main(sel)
    -- gsoldier_entance();
Talk(1,"","Ng��i d�m x�ng v�o nha m�n? th�t ��ng l� �n gan h�m m�t g�u r�i")
end;

function main_former()
	Uworld11 = GetTask(11)
	if (Uworld11 == 100) then			-- �������
		W11_prise()
	elseif (Uworld11 < 255) and (Uworld11 >= 1) then		-- ������
		Talk(1,"","Mu�n nh�n th��ng �, �i gi�t 10 con heo r�ng r�i n�i")
	elseif (Uworld11 > 255) then		-- �����Ѿ����
		Talk(1,"","L�n c�n th�nh �� c� r�t nhi�u n�i , th��ng c� heo r�ng xu�t hi�n , ph�i di�t ch�ng m�i c� th� ��m b�o thu ho�ch n�m nay.")
	else			-- δ������
		Talk(1,"","ng��i d�m x�ng v�o nha m�n ? th�t l� �n r�i gan h�m m�t g�u")
	end
end;

function W11_prise()
	Talk(1,"","�� gi�t ch�t m��i con heo r�ng ? th�t t�t qu� , ta thay m�t d�n ch�ng th�nh �� �a t� v� anh h�ng . ��y l� 500 l��ng t��ng th��ng")
	Earn(500)
	SetTask(11,date("%Y%m%d"))
	i = random(0,99)
	if (i < 50) then			-- 50%����
		x = 3
	elseif (i < 85) then		-- 35%����
		x = 4
	else							-- 15%����
		x = 5
	end
	AddRepute(x)
	Msg2Player("nhi�m v� ho�n th�nh , nh�n ���c 50 danh v�ng , danh v�ng t�ng th�m"..x.."�i�m.")
end;
