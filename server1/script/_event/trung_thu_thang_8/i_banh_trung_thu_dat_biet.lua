Include("\\script\\task\\task_addplayerexp.lua")

iBanhDacBiet = {
	i = {
		[4348] = {n = "B¸nh Trung Thu §Æc BiÖt - T×nh B»ng H÷u", er = {10000000, 15000000}},
		[4349] = {n = "B¸nh Trung Thu §Æc BiÖt - Tr¨ng Trßn H¹nh Phóc", s = {451, 20, 1,(72*60*60*18)}},
	}
}

function iBanhDacBiet:Main(ItemIndex, bIsExpired)
	local a_G, a_D, a_P, a_L, a_S = GetItemProp(ItemIndex)
	local c = nil
	
	if not(self.i[a_P]) or a_G ~= 6 then
		return Talk(1, "", "Kh«ng nhËn d¹ng ®­îc vËt phÈm, xin vui lßng thö l¹i hoÆc liªn hÖ víi bé phËn hç trî ®Ó ®­îc trî gióp!")
	end
	
	if a_P == 4349 then
		if GetLevel() >= 89 then
			return Talk(1, "", "Lo¹i b¸nh ®Æc biÖt nµy chØ ph¸t huy c«ng n¨ng trªn c¸c nh©n vËt tõ cÊp 89 trë xuèng, b¶n th©n ®· lµ cao thñ, sao l¹i so ®o víi bËc hËu bèi?")
		end
		
		c = 5868
	elseif a_P == 4348 then		
		c = 5869
	end
	
	local b = GetTask(c)
	
	if b ~= 1 and b ~= 2 then
		return Talk(1, "", "B¸nh nµy kh«ng ph¶i cña b¹n, kh«ng thÓ sö dông!")
	end
	
	if b >= 2 then
		return Talk(1, "", "B¹n ®· sö dông "..self.i[a_P].n.." råi, l¹m dông nhiÒu sÏ ¶nh h­ëng kh«ng tèt ®Õn néi c«ng!")
	end
	
	if GetSkillState(451) == 1 then
		return Talk(1, "", "HiÖu øng cña b¸nh trung thu ®Æc biÖt hiÖn vÉn cßn, kh«ng thÓ sö dông!")
	end
	
	SetTask(c, 2)
	
	ConsumeEquiproomItem(1,a_G, a_D, a_P,-1)
	
	if self.i[a_P].s and getn(self.i[a_P].s) > 0 then
		AddSkillState(unpack(self.i[a_P].s))
	end
	
	if self.i[a_P].er and getn(self.i[a_P].er) > 0 then
		tl_addPlayerExp(random(self.i[a_P].er[1], self.i[a_P].er[2]))
	end
	
	return Msg2Player("<color=yellow>Sö dông thµnh c«ng: "..self.i[a_P].n)
end






























