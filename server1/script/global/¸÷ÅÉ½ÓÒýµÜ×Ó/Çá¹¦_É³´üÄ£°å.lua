--Á½ºşÇø °ÍÁêÏØ É³´üËÀÍö ĞÂÊÖ´åÁ·¼¶ÈÎÎñ(²»¿ÉÖØ¸´µÄÈÎÎñ)
-- Update: Dan_Deng(2003-08-09)

function learn()
	-- UTask_world32 = GetTask(32)
	-- if (UTask_world32 >= 80) and (UTask_world32 < 130) then
		-- SetTask(32,GetTask(32)+1)
	-- end
	
	local a = GetTask(5888) or 0
	
	if a >= 103 and a < 153 then
		a = a + 1
		SetTask(5888, a)
	end
	
	if mod((a-3), 10) == 0 then
		Msg2Player("B¹n ®· luyÖn ®­îc "..(a-3-100).." bao c¸t")
	end
	
	if a == 153 then
		return Msg2Player("<color=yellow>§· luyÖn xong bao c¸t, ®Õn chç vâ s­ ®Ó phôc mÖnh!")
	end
	
end;
