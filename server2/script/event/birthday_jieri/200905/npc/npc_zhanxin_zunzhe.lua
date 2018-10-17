Include("\\script\\lib\\awardtemplet.lua");
function main()
end

function Quit() end
tbAllSkill = {
	shaolin = {
		[1] = {10,14},
		[2] = {4,6,8},
		[3] = {15},
		[4] = {16},
		[5] = {20},
		[6] = {11,19,271},
		[7] = {21,273},
		[9] = {318,319,321,709},
	},
	tianwang = {
		[1] = {29,30,34},
		[2] = {23,24,26},
		[3] = {33},
		[4] = {31,35,37},
		[5] = {40},
		[6] = {42},
		[7] = {32,36,41,324},
		[9] = {322,323,325,708},
	},
	tangmen = {
		[1] = {45},
		[2] = {43,347},
		[3] = {303},
		[4] = {47,50,54,343},
		[5] = {345},
		[6] = {349},
		[7] = {48,58,249,341},
		[9] = {302,339,342,351,710},
	},
	wudu = {
		[1] = {63,65},
		[2] = {60,62,67},
		[3] = {66,70},
		[4] = {64,68,69,384},
		[5] = {73,356},
		[6] = {72},
		[7] = {71,74,75},
		[9] = {353,355,390,711},
	},
	emei = {
		[1] = {80,85},
		[2] = {77,79},
		[3] = {93},
		[4] = {82,89,385},
		[5] = {86},
		[6] = {92},
		[7] = {88,91,252,282},
		[9] = {328,332,380,712},
	},
	cuiyan = {
		[1] = {99,102},
		[2] = {95,97},
		[3] = {269},
		[4] = {105,113},
		[5] = {100},
		[6] = {109},
		[7] = {108,111,114},
		[9] = {336,337,713},
	},
	gaibang = {
		[1] = {119,122},
		[2] = {115,116},
		[3] = {129},
		[4] = {124,274},
		[5] = {277},
		[6] = {125,128},
		[7] = {130,360},
		[9] = {357,359,714},
	},
	tianren = {
		[1] = {135,145},
		[2] = {131,132,136},
		[3] = {137},
		[4] = {138,140,141},
		[5] = {364},
		[6] = {143},
		[7] = {142,148,150},
		[9] = {361,362,391,715},
	},
	wudang = {
		[1] = {153,155},
		[2] = {151,152},
		[3] = {159},
		[4] = {158,164},
		[5] = {160},
		[6] = {157},
		[7] = {165,166,267},
		[9] = {365,368,716},
	},
	kunlun = {
		[1] = {169,179},
		[2] = {167,168,171,392},
		[3] = {174},
		[4] = {172,173,178,393},
		[5] = {175,181},
		[6] = {90,176},
		[7] = {182,275,630},
		[9] = {372,375,394,717},
	},
}

function HoTroSkill()
	local szFaction = GetFaction()
	if szFaction == nil or szFaction == "" then
		return Say("<color=Orange>T©n Thñ Quan<color>: ".."§Ó nhËn ®­îc bé <color=yellow>Kü n¨ng m«n ph¸i <color>yªu cÇu thiÕu hiÖp  ph¶i <color=red>vµo ph¸i<color> tr­íc sau ®ã ®Õn ®©y gÆp l·o.", 1, "Ta biÕt råi./OnCancel")
	end
	if tbAllSkill[szFaction] == nil then
		return Say("<color=Orange>T©n Thñ Quan<color>: ".."§Ó nhËn ®­îc bé <color=yellow>Kü n¨ng m«n ph¸i <color>yªu cÇu thiÕu hiÖp  ph¶i <color=red>vµo ph¸i<color> tr­íc sau ®ã ®Õn ®©y gÆp l·o.", 1, "Ta biÕt råi./OnCancel")
	end
	for i=1, 7 do
		if tbAllSkill[szFaction][i] ~= nil then
			for j=1, getn(tbAllSkill[szFaction][i]) do
				if HaveMagic(tbAllSkill[szFaction][i][j]) == -1 then
						AddMagic(tbAllSkill[szFaction][i][j])
				end
			end
		end
	end
	AddMagic(210, 1)
	return Say("<color=Orange>T©n Thñ Quan<color>: ".."Chóc Mõng thiÕu hiÖp ®· nhËn ®­îc bé <enter><color=yellow>Kü n¨ng m«n ph¸i<color> h·y dïng chóng vµo hµnh tr×nh b«n <enter>tÈu cña ng­¬i.", 1, "§a t¹ ngµi!/OnCancel")
end

function OnCancel()
end