--ÖĞÔ­ÄÏÇø ÏåÑô¸® ¢·ÈË16¹ùÔ±Íâ¶Ô»°
-- edit by Ğ¡ÀË¶µ¶µ

Include("\\script\\event\\zhongqiu2007\\picture_head.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main(sel)
	if allbrother_0801_CheckIsDialog(183) == 1 then
		allbrother_0801_FindNpcTaskDialog(183)
		return 0;
	end
	local ndate = tonumber(GetLocalDate("%y%m%d%H%M"))
	if ndate > 0709220000 and ndate < 0710312400 then
		SetTaskTemp(TSK_TEMP,2)
		Describe("Qu¸ch viªn ngo¹i:  trung thu ®Õn, cÇn thu tËp ®ñ 6 <color=red>m¶nh häa ®å<color> hîp thµnh mét bøc vÏ hoµn chØnh mang ®Õn cho ta, ta sÏ ®­a ng­¬i mét <color=red>Phông NguyÖt Qu¶<color>.",2,"§æi Phông nguyÖt qu¶/makeItemUI","ThuËn tiÖn ghĞ qua/NoChoice")
	else
		Describe("Ta ®· ®em toµn bé gia s¶n hiÕn tÆng cho triÒu ®×nh, quèc gia gÆp n¹n, thÊt phu h÷u tr¸ch. Ta ch¼ng qua lµ cèng hiÕn mét chót søc lùc, c¨n b¶n còng kh«ng s¸ g×.",1,"Ta biÕt råi./NoChoice")
	end
end;
