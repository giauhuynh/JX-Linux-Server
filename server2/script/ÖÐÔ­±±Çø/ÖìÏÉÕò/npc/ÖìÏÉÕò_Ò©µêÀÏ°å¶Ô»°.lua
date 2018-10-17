--ÖĞÔ­±±Çø ÖìÏÉÕò Ò©µêÀÏ°å¶Ô»°
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
function main(sel)
Say("Kh¸ch quan muèn mua g×?", 3, "Giao dŞch/yes","Ta ®Õn lµ nhiÖm vô S¬ nhËp/yboss", "Ta chØ ghĞ qua th«i/no");
end;


function yes()
Sale(88);  		--µ¯³ö½»Ò×¿ò
end;


function no()
end;

