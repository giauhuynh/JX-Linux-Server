function OnDeath () 

if (random(0,99) < 65) then 
Msg2Player("Ng��i tho�t �i th�n b� s�t th� , c� th� �i gi�i c�u gi�i v� t� ") 
AddNote("Ng��i tho�t �i th�n b� s�t th� , c� th� �i gi�i c�u gi�i v� t� ") 
Talk(1,"","Th� nghi�m th�nh c�ng")
AddEventItem(128)
else
Talk(1,"","Th� nghi�m ti�p t�c th�nh c�ng")
Msg2Player("Ng��i gi�t ch�t m�t ng��i th�n b� s�t th� ") 
AddEventItem(126)
end 
end