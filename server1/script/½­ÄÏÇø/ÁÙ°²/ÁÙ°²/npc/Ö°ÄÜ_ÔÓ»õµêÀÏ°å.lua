-- 临安　职能　杂货店老板
-- by：Dan_Deng(2003-09-16)

--========脚本修改==================================--
--修改者：yfeng
--修改日期：2005-1-28
--修改原因：春节市场活动
--
--
--==================================================--
Include "/script/event/chinesenewyear/eventhead.lua"
Include("\\script\\global\\global_zahuodian.lua");


--if CHINESENEWYEAR then
--	tinsert(Buttons,1,"购Ⅱ节日道具/BuyNewyearItem")
--end 
	
function main()
local Buttons = store_sel_extend();
	local nDate = tonumber(GetLocalDate("%Y%m%d%H"));
	if (nDate >= 2006122200 and nDate <= 2019011424) then
		-- tinsert(Buttons,1,"N筽 Th�/BuyVnXasCard")
	end;
	Say("Ch� ti謒 t筽 h鉧 : ti謒 c馻 ta t� x璶g  nh蕋, t蕋 c� m苩 h祅g nam b綾 ng t﹜ u c� 鴑g c莡 ho祅,san h�,nh﹏ s﹎,m藅 t辌h... kh玭g th� n祇 kh玭g c�",
			getn(Buttons),
			Buttons)
end;

function yes()
	Sale(2);  				--弹出交易框
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
