--中原南区 扬州府 铁匠对话

Include("\\script\\global\\global_tiejiang.lua")

-- TIEJIANG_DIALOG = "<dec><npc>你是侠客？这里有各种兵器，你喜欢哪一种?"
TIEJIANG_DIALOG = "<dec><npc>Nh� c� ngi  t� n祔 m� h玬 nay ta   nh鋍 h琻." 

function main(sel)
	tiejiang_city()
end;

function yes()
Sale(4);  			--弹出交易框
end;

