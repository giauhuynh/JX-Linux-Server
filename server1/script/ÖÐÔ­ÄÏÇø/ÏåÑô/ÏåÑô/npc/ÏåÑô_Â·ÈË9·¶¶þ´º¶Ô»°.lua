--ÖĞÔ­ÄÏÇø ÏåÑô¸® ¢·ÈË9·¶¶ş´º¶Ô»°
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")

function main(sel)
	if allbrother_0801_CheckIsDialog(184) == 1 then
		allbrother_0801_FindNpcTaskDialog(184)
		return 0;
	end
i = random(0,1)

if (i == 0) then
Say("Ph¹m NhŞ Xu©n:§Æng tÈu tö trong nhµ qu¸ khã kh¨n, bän ta h¹ cho c¸c nµng nhµ ®­a mét ®¹i ®¹i mÔ ®i, tr­íc cøu cøu cÊp.",0)
return
end;

if (i == 1) then
Say("Ph¹m NhŞ Xu©n:  Mäi ng­êi ®Òu lµ nhai ph­êng, gióp ®ì lÉn nhau lµ ph¶i.",0)
end;

end;

