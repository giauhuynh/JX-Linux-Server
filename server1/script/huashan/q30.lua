--De Tu Treu gheo
function OnDeath () 
-- dofile("script/huashan/q30.lua");

if (GetTask(169) == 32) then
SetPos(182*8+7,186*16+8)
Msg2Player("D¹y cho tªn h¸o s¾c nµy bµi häc, quay vÒ b¸o cho Ph­¬ng TuyÕt") 
Talk(2,"","¸ !Ta chõa råi, tõ nay kh«ng d¸m trªu ghÑo c« n­¬ng Êy n÷a ! ","Mau quay vÒ b¸o cho <color=pink>TuyÕt Anh<color> c« n­¬ng")
SetTask(169,33)
SetFightState(0); 

end
end