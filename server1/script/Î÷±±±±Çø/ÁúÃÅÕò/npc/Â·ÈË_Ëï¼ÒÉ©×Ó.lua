-- 龙门镇　⒎人　孙家嫂子
-- by：Dan_Deng(2003-09-16)

Include("\\script\\global\\repute_head.lua")

function main()
	Uworld41 = GetByte(GetTask(41),1)
	if (GetLevel() >= 40) and (GetReputeLevel(GetRepute()) >= 5) then		-- 符合任务条件
		if (Uworld41 == 0) or (Uworld41 == 5) then			-- 任务启动
			Talk(4,"","Уn 玭g nh� n祔, t� s竛g n t鑙 c� m� tng vi詎 v玭g, c竔 g� l� ch� kh�, c竔 g� l� anh h飊g? To祅 l�  b� 甶, kh玭g lo cho cu閏 s鑞g hi謓 t筰.","这位大嫂，有什么头疼的盛？"," (哭声) ","... ")
			SetTask(41,5)
		elseif (Uworld41 == 10) or (Uworld41 == 30) then	-- 任务进行中
			Talk(1,"","碫LT31笙涝敢獍镂野研【昃突乩储穑扛屑げ痪。�")
		elseif (Uworld41 == 100) then					-- 已经救出小娟，任务未交
			Talk(1,"","VLT32小娟！我的孩子回来了！真是康了我的孩子了。你赶快去见父亲让他不要担心了.")
		else		-- 任务已完成
			Talk(1,"","VLT33媸歉行淮笙溃∥液推渌父鋈艘统ど└笙�.")
		end
	else
		Talk(1,"","蜼LT34壹依贤罚釉绲酵砭鸵恢毕瓜胧裁词侵酒裁词怯⑿郏咳际欠匣埃疾幌胍幌⑹导噬�!")
	end
end;
