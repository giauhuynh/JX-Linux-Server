
-- ====================== 文件信息 ======================

-- 剑侠情缘online 转生任务 北斗长生术基础篇 道具
-- FileName: jiayi_shengong.lua
-- Edited: 子非鱼
-- 2007-03-30	20:14:00

-- ======================================================

Include("\\script\\task\\metempsychosis\\task_func.lua")

function main()
	if GetLevel() >= 180 then
		if (GetTask(TSK_ZHUANSHENG_FLAG) == 0) then
			SetTask(TSK_ZHUANSHENG_FLAG,1);
			Msg2Player("<color=green>Х h鋍 頲 <B綾 u Trng Sinh Thu藅 - C� S� Thi猲>!")
			Say("<color=orange>B綾 u Trng Sinh Thu藅<color>: <color=green>Х h鋍 頲 B綾 u Trng Sinh Thu藅 - C� S� Thi猲<color> nh璶g v� c玭g v蒼 ch璦 頲 n﹏g c蕄, xem ra trong y v蒼 c� 甶襲  b� 萵 v蒼 ch璦 頲 kh竚 ph�.<enter>C莕 n Minh Nguy謙 Tr蕁 g苝 Minh nguy謙 l穙 nh﹏  h鋍 ti誴 cu鑞 B綾 u Trng Sinh Thu藅 - T﹎ Ph竝 Thi猲 m韎 c� th� hi觰 頲 h誸 � ngh躠 c馻 n�!", 0)
			return 0
		else
			Say("<color=orange>B綾 u Trng Sinh Thu藅<color>: Ngi  c hi觰 quy觧 m藅 t辌h n祔, kh玭g c莕 c th猰 n鱝!", 0)
			return 1
		end
	else
		Say("<color=orange>B綾 u Trng Sinh Thu藅<color>: Ngi di ng c蕄 180 nh譶 v祇 s� kh玭g hi觰 y l� cu鑞 m藅 t辌h ghi ch衟 v� m玭 v� c玭g n祇!", 0)
		return 1
	end
end
