--西北南区 永乐镇 铁匠对话
Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<dec><npc>Kh竎h quan mu鑞 mua lo筰 v� kh� n祇, c莕 lo筰 n祇 c� lo筰 !"

function main(sel)
	tiejiang_village()
end;


function yes()
Sale(83);  			--弹出交易框
end;
