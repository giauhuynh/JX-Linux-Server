-- 临安　⒎人　丁磊
-- by：Dan_Deng(2003-09-16)

-- 各个级别的同伴剧情任务实体处理文件
Include ("\\script\\task\\partner\\master\\partner_master_main_03.lua");

function main()

	-- 剧情篇
	if taskProcess_003_02:doTaskEntity()~=0 then return end;
	if taskProcess_003_04:doTaskEntity()~=0 then return end;

	-- 修炼篇
	if rewindProcess_003_02:doTaskEntity()~=0 then return end;
	if rewindProcess_003_04:doTaskEntity()~=0 then return end;


	Talk(1,"","nh vi猲 ngo筰 : b鋘 gi芻 kim u l� h鱱 d騨g v� m璾, l祄 sao c� th� nh l筰 nh� t鑞g c馻 ta 頲.")

end;
