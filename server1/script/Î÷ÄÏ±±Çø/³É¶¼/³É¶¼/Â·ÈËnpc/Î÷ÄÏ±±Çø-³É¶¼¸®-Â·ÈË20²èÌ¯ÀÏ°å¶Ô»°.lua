--Î÷ÄÏ±±Çø ³É¶¼¸® ¢·ÈË20²èÌ¯µÏ°å¶Ô»°
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main(sel)
	if allbrother_0801_CheckIsDialog(185) == 1 then
		allbrother_0801_FindNpcTaskDialog(185)
		return 0;
	end
Say("T©n NhŞ thÈm : muèn uèng trµ g×? CÇn mét bÇu mao nhän nh­ thÕ nµo ?",0)

end;
