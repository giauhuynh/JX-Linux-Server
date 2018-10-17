SPREADERNPC_ISADD = 1 -- script viet hoa By http://tranhba.com 1 thªm t¸i # nil kh«ng thªm t¸i 

spreadernpc = { 
                     {1785,2,4,53,1621,3182,0,"T­îng §µi Ng­êi LÝnh",0,"\\script\\global\\quanlygame\\sukien\\event2thang9\\cotco.lua",},
                      {255,3,4,53,1622,3193,0,"Thî May",0,"\\script\\global\\quanlygame\\sukien\\event2thang9\\thomay.lua",},
-- script viet hoa By http://tranhba.com  tay míi th«n “ trß ch¬i phæ biÕn réng r·i viªn ” 
-- {87,80,4,20,3545,6213,0," Hoµnh Ba Tiªn Tö ",0,"\\script\\misc\\spreader\\spreader.lua"}, 
-- {87,80,4,53,1618,3179,0," Hoµnh Ba Tiªn Tö ",0,"\\script\\misc\\spreader\\spreader.lua"}, 
-- {87,80,4,121,2010,4494,0," Hoµnh Ba Tiªn Tö ",0,"\\script\\misc\\spreader\\spreader.lua"}, 
-- {87,80,4,99,1625,3184,0," Hoµnh Ba Tiªn Tö ",0,"\\script\\misc\\spreader\\spreader.lua"}, 
-- {87,80,4,100,1611,3180,0," Hoµnh Ba Tiªn Tö ",0,"\\script\\misc\\spreader\\spreader.lua"}, 
-- {87,80,4,101,1692,3130,0," Hoµnh Ba Tiªn Tö ",0,"\\script\\misc\\spreader\\spreader.lua"}, 
-- {87,80,4,174,1639,3301,0," Hoµnh Ba Tiªn Tö ",0,"\\script\\misc\\spreader\\spreader.lua"}, 
-- {87,80,4,153,1622,3232,0," Hoµnh Ba Tiªn Tö ",0,"\\script\\misc\\spreader\\spreader.lua"}, 

-- {1495,80,4,53,1608,3216,0," C©y th«ng gi¸ng sinh ",0,"\\script\\event\\xmas07_makesnowman\\makesnowman.lua"}, 
-- {644,80,4,53,1600,3200,0," ¤ng giµ Noel ",0,"\\script\\event\\xmas06_makesnowman\\makesnowman.lua"},  -- ong gia noel

}
function add_spreadernpc(tbnpc) 
if (SPREADERNPC_ISADD) then 
for i = 1 , getn(tbnpc) do 
Mid = SubWorldID2Idx(tbnpc[i][4]); 
if (Mid >= 0 ) then 
TabValue5 = tbnpc[i][5] * 32; 
TabValue6 = tbnpc[i][6] * 32; 
local nNpcIdx = AddNpc(tbnpc[i][1],tbnpc[i][2],Mid,TabValue5,TabValue6,tbnpc[i][7],tbnpc[i][8]); 
SetNpcScript(nNpcIdx, tbnpc[i][10]); 
end; 
end; 
end; 
end
