--中原北区 汴京府 铁匠2对话

Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<npc> Giang h祅g i khuy課 m穒, 產o ki誱 c玭 b鎛g trng g藋 g閏 cu鑓 x蝞g, 128 lo筰 v� kh� nh� binh ta y c�  th輈h c竔 g� c� v祇 y xem th� 甶."

function main(sel)
	tiejiang_city();
end;

function yes()
Sale(7);  			--弹出交易框
end;
