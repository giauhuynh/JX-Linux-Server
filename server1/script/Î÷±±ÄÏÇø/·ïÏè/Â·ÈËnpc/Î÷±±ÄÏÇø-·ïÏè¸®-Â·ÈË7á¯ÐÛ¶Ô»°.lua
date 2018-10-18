--Î÷±±ÄÏÇø ·ïÏè¸® ¢·ÈË7á¯ĞÛ¶Ô»°

Include("\\script\\task\\newtask\\branch\\zhengpai\\branch_zhengpaitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")

function main(sel)
	Uworld1050 = nt_getTask(1050)
	if ( Uworld1050 ~= 0 ) then
		branch_cenxiong()
	else
Say("S©m hïng: Ta ®©y sinh ra ë Ph­îng T­êng, suèt ngµy ë n¬i ®©y, kh«ng biÕt thiªn h¹ ngoµi kia nh­ thÕ nµo. Còng muèn ra ngoµi mét chuyÕn.",0)
	end
end;
