-- �ٰ���ְ�ܡ��ӻ����ϰ�
-- by��Dan_Deng(2003-09-16)

--========�ű��޸�==================================--
--�޸��ߣ�yfeng
--�޸����ڣ�2005-1-28
--�޸�ԭ�򣺴����г��
--
--
--==================================================--
Include "/script/event/chinesenewyear/eventhead.lua"
Include("\\script\\global\\global_zahuodian.lua");


--if CHINESENEWYEAR then
--	tinsert(Buttons,1,"������յ���/BuyNewyearItem")
--end 
	
function main()
local Buttons = store_sel_extend();
	local nDate = tonumber(GetLocalDate("%Y%m%d%H"));
	if (nDate >= 2006122200 and nDate <= 2007011424) then
		tinsert(Buttons,1,"N�p Th�/BuyVnXasCard")
	end;
	Say("Ch� ti�m t�p h�a : ti�m c�a ta t� x�ng �� nh�t, t�t c� m�t h�ng nam b�c ��ng t�y ��u c� �ng c�u ho�n,san h�,nh�n s�m,m�t t�ch...kh�ng th� n�o kh�ng c�",
			getn(Buttons),
			Buttons)
end;

function yes()
	Sale(2);  				--�������׿�
end;

function no()
end;

function BuyNewyearItem()
	Sale(101)
	return
end

function BuyChristmasCard()
	Sale(97);
end

function BuyVnXasCard()
	Sale(147)
end;
