-- script viet hoa By http://tranhba.com  t©y nam b¾c khu thµnh ®« phñ nha m«n sai dŞch ®èi tho¹i thÕ giíi nhiÖm vô # thµnh ®« giÕt heo rõng # 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-03-19) 

FESTIVAL06_NPCNAME = "<color=yellow>:<color>"; 

Include("\\script\\global\\repute_head.lua")

Include([[\script\global\Â·ÈË_ÑÃÃÅÎÀ±ø.lua]]); 

function main(sel)
    -- gsoldier_entance();
Talk(1,"","Ng­¬i d¸m x«ng vµo nha m«n? thËt ®óng lµ ¨n gan hïm mËt gÊu råi")
end;

function main_former() 
Uworld11 = GetTask(11) 
if (Uworld11 == 100) then -- script viet hoa By http://tranhba.com  nhiÖm vô hoµn thµnh 
W11_prise() 
elseif (Uworld11 < 255) and (Uworld11 >= 1) then -- script viet hoa By http://tranhba.com  nhiÖm vô trung 
Talk(1,"","Muèn dÉn t­ëng a ? ®i giÕt m­êi con heo rõng trë l¹i l¹i nãi !") 
elseif (Uworld11 > 255) then -- script viet hoa By http://tranhba.com  nhiÖm vô ®· hoµn thµnh 
Talk(1,"","Thµnh ®« phô cËn cã rÊt nhiÒu s¬n , th­êng cã heo rõng xuÊt hiÖn , lÇn nµy cã ng­¬i míi cã thÓ b¶o ®¶m n¨m nay ®İch thu thµnh .") 
else -- script viet hoa By http://tranhba.com  kh«ng tiÕp nhËn vô 
Talk(1,"","Ng­¬i d¸m x«ng vµo nha m«n ? thËt lµ ¨n råi gan hïm mËt gÊu liÔu !") 
end 
end; 

function W11_prise() 
Talk(1,"","§· giÕt chÕt m­êi con heo rõng ? thËt tèt qu¸ , ta ®¹i biÓu thµnh ®« d©n chóng c¶m t¹ ng­¬i cïng c¸c vŞ anh hïng . ®©y lµ 500 hai t­ëng th­ëng !") 
Earn(500) 
SetTask(11,date("%Y%m%d")) 
i = random(0,99) 
if (i < 50) then -- script viet hoa By http://tranhba.com  50% tû lÖ 
x = 3 
elseif (i < 85) then -- script viet hoa By http://tranhba.com  35% tû lÖ 
x = 4 
else -- script viet hoa By http://tranhba.com  15% tû lÖ 
x = 5 
end 
AddRepute(x) 
Msg2Player("NhiÖm vô hoµn thµnh , t­ëng th­ëng 50 hai , ng­¬i danh väng gia t¨ng "..x.." ®iÓm .") 
end; 
