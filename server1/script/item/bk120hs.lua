Include("\\script\\global\\login_head.lua")

function main(nItemIdx)
-- dofile("script/item/bk120hs.lua")
if (GetTask(169) == 150)  and  (GetLevel() >= 120) then 
AddMagic(1364,20)
Msg2Player("C¸c h¹ nghiªn cøu thµnh c«ng kinh th­, häc ®­îc vâ c«ng §o¹t MÖnh KiÕm cña Hoa   S¬n")
SetTask(169,151)
elseif  (GetLevel() < 120) then
Talk(1,"","<color=fire>§¹t cÊp 120 trë lªn míi l·nh ngé ®­îc cuèn s¸ch nµy<color>")
return 1
else 
Talk(1,"","ChØ cã ®Ö tö Hoa S¬n luyÖn KiÕm míi l·nh héi ®­îc bİ kİp nµy hoÆc lµ c¸c h¹ ®· l·nh héi råi!")
return 1
end
end 