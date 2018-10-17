function OnDeath () 

if (random(0,99) < 65) then 
Msg2Player("Ng­¬i tho¸t ®i thÇn bÝ s¸t thñ , cã thÓ ®i gi¶i cøu giíi v« tµ ") 
AddNote("Ng­¬i tho¸t ®i thÇn bÝ s¸t thñ , cã thÓ ®i gi¶i cøu giíi v« tµ ") 
Talk(1,"","Thö nghiÖm thµnh c«ng")
AddEventItem(128)
else
Talk(1,"","Thö nghiÖm tiÕp tôc thµnh c«ng")
Msg2Player("Ng­¬i giÕt chÕt mét ng­êi thÇn bÝ s¸t thñ ") 
AddEventItem(126)
end 
end