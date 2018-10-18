--Á½ºşÇø °ÍÁêÏØ Ä¾×®ËÀÍö ĞÂÊÖ´åÁ·¼¶ÈÎÎñ(²»¿ÉÖØ¸´µÄÈÎÎñ)
-- Update: Dan_Deng(2003-08-09)

function learn()
	-- UTask_world32 = GetTask(32)
	-- if (UTask_world32 >= 20) and (UTask_world32 < 70) then
		-- SetTask(32,GetTask(32)+1)
	-- end
	
	local a = GetTask(5888)
	
	if a >= 1 and a <= 50 then
		a = a + 1
		SetTask(5888, a)
	end
	
	if mod((a-1), 10) == 0 then
		Msg2Player("B¹n ®· luyÖn ®­îc "..(a-1).." cäc gç")
	end
	
	if a == 51 then
		return Msg2Player("<color=yellow>§· luyÖn xong cäc gç, ®Õn chç vâ s­ ®Ó phôc mÖnh!")
	end
	
end;
