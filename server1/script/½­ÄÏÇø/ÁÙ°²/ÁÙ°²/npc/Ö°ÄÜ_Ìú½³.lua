-- 临安　职能　铁匠
-- by：Dan_Deng(2003-09-16)
--update:zhaowenyi(2005-02-20)增加紫色及黄金装备铸造

Include("\\script\\global\\global_tiejiang.lua")


TIEJIANG_DIALOG = "<dec><npc>Ti謒 r蘮 n祔  c� t� th阨 玭g n閕 ta, tuy tay ngh� kh玭g gi醝 nh璶g c騨g kh玭g t�, kh竎h quan mu鑞 mua g�?";
function main()
	tiejiang_city(TIEJIANG_DIALOG);
end;


function yes()
	Sale(1);  				--弹出交易框
end;

