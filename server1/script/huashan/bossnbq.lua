function OnDeath () 

if (GetTask(169) == 96) then 
SetFightState(0);
SetTask(169,97)
--AddEventItem(128)
Msg2Player("��nh b�i Nh�c B�t Qu�n, h�y n�i chuy�n v�i �ng ta") 
Talk(1,"","Ng��i th�t ��c �c !")
NewWorld(333,186*8+3,180*16)
end
end




