--西北南区 凤翔府 铁匠铺迪板对话
-- VH by anhdung9992001 clbgamesvn--
Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<dec><npc>Th� r蘮: Mu鑞 mua binh kh� g�  ph遪g th﹏ kh玭g?"
function main(sel)
	tiejiang_city(TIEJIANG_DIALOG);
end;


function yes()
	Sale(19);  			--弹出交易框
end;

