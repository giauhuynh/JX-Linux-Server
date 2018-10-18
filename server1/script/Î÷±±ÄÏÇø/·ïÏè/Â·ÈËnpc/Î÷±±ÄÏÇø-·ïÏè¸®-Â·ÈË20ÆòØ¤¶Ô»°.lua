--Î÷±±ÄÏÇø ·ïÏè¸® ¢·ÈË20ÆòØ¤¶Ô»° Êµ½çÈÎÎñ

function main(sel)

--UTask_world36 = GetTask(64);

if (UTask_world36 == 0) then 
Talk(3, "select", "KhÊt c¸i: aiii...", "TiÓu ca, thÕ n¬i nµy cã g×? ", "Xem ra ng­¬i lµ ng­êi míi tíi ®Şa ph­¬ng nµy, kh«ng cã thÊy c¸o thŞ cña quan phñ sao? MÊy ngµy nay quan phñ ph¸i ng­êi ®i thŞ s¸t, mÊy tªn khÊt kh«ng d¸m ra ®­êng ¨n xin. Nãi thªm ng¹i cho, mÊy ngµy nay kh«ng lµm ¨n ®­îc g×, ta ®©y còng cã nhµ lín nhµ nhá, nh­ng lµm sao sèng næi.")
return
end;

--if (UTask_world36 == 1) then 
Say("Xem ra ng­¬i lµ ng­êi míi tíi ®Şa ph­¬ng nµy, kh«ng cã thÊy c¸o thŞ cña quan phñ sao? MÊy ngµy nay quan phñ ph¸i ng­êi ®i thŞ s¸t, mÊy tªn khÊt kh«ng d¸m ra ®­êng ¨n xin. Nãi thªm ng¹i cho, mÊy ngµy nay kh«ng lµm ¨n ®­îc g×, ta ®©y còng cã nhµ lín nhµ nhá, nh­ng lµm sao sèng næi.", 0)
--end;

end;


function select()
Say("Nh×n thËt ®¸ng th­¬ng", 2, "§­a tiÒn/accept", "Kh«ng ®­a/refuse");
end;


function accept()

if (GetCash() > 1000) then							--²Î¿¼Öµ
	Talk(2, "select1", "TiÓu ca, ta ë ®©y cã chót b¹c. CÇm lÊy.", "Hai chóng ta míi gÆp lÇn ®Çu, nhµ ng­¬i l¹i cho ta nhiÒu tiÒn nh­ vËy, thËt lµ mét ®Êng nghÜa hiÖp. Ta lÊy tiÒn cña ng­¬i sÏ cho ng­¬i c¸i kh¸c. Xin h·y nhËn lÊy chót tÊm lßng cña ta.")	
else
	Say("Xem ra ng­¬i còng kh«ng kh¸ gi¶ g×. Th«i th× cã duyªn ¾t sÏ gÆp l¹i.", 0)
end;

end;


function refuse()
end;


function select1()
Pay(GetCash()/3)
AddOwnExp(1000)	
SetTask(64, 1)
end;
