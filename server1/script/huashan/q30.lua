--De Tu Treu gheo
function OnDeath () 
-- dofile("script/huashan/q30.lua");

if (GetTask(169) == 32) then
SetPos(182*8+7,186*16+8)
Msg2Player("D�y cho t�n h�o s�c n�y b�i h�c, quay v� b�o cho Ph��ng Tuy�t") 
Talk(2,"","� !Ta ch�a r�i, t� nay kh�ng d�m tr�u gh�o c� n��ng �y n�a ! ","Mau quay v� b�o cho <color=pink>Tuy�t Anh<color> c� n��ng")
SetTask(169,33)
SetFightState(0); 

end
end