--description: 唐门江津村唐元舅舅 50级任务 
--author: yuanlan	
--date: 2003/3/12
-- Update: Dan_Deng(2003-08-13)

function main()
	UTask_tm = GetTask(2)
	if (UTask_tm == 50*256+40) then
		Talk(1,"","M� l鏸 'GTT005' vui l遪g ch魀 h譶h g鰅 cho admin  fix l鏸!")
	else
		Talk(1,"","Ta kh玭g c� con c竔, ch� c� 1 a ch竨 ngo筰 產ng h鋍 v� t筰 Л阯g M玭")
	end
end;
