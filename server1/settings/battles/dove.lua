Include( "\\script\\item\\checkmapid.lua" )
IncludeLib("BATTLE")

function EatMedicine()
	for j = 1, getn(tbCD_MAP) do
		if ( nMapId == tbCD_MAP[j] ) then
			Msg2Player("§¹o cô nµy chØ cã thÓ sö dông ë chiÕn tr­êng tèng kim.");
			return -1
		end
	end
	nowmissionid = BT_GetData(PL_RULEID);	--»ñÈ¡µ±Ç°MISSIONID
	curcamp = GetCurCamp();
	X = floor( X / 8 );
	Y = floor( Y / 16 );
	string = "<#><color=yellow>"..GetName().."<#><color><color=pink>: Ta b©y giê täa ®é lµ<color=yellow>("..X.."<#>£¬"..Y.."<#>)<color>tèc tíi gióp ta mét lùc c¸nh tay.";
	Msg2MSGroup( nowmissionid, string, curcamp );
	Msg2Player("Ng­¬i sö dông mét tÝn th­ c¸p, th«ng b¸o c¸c chiÕn h÷u ng­¬i b©y giê ®Õn täa ®é.");
end
