--description: 中原南区 襄阳府 药店老板对话 武当派出师任务
--author: yuanlan	
--date: 2003/5/17
-- Update: Dan_Deng(2003-08-17)

-- 炼制混元灵⒍
function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

function main(sel)
	UTask_wd = GetTask(5)
	UTask_wd60sub = GetByte(GetTask(17),1)
	if (UTask_wd == 60*256+20) then
		if (UTask_wd60sub == 2) then 
			Talk(2, "", "B﹜ gi� chi課 trng d辌h t譶h lan tr祅, xin h醝 c� bi謓 ph竝 g�? ", "Mu鑞 tr� d辌h b謓h c莕 5 lo筰 thu鑓 <color=Red> h頿 hoan ? huy襫 tham ? 琻g quy ? ph遪g k� ? chu sa <color>.  <color=Red>Ph鬰 Ng璾 S琻 чng<color> t譵!")
			SetTask(17, SetByte(GetTask(17),1,5))
			AddNote("Ch� ti謒 thu鑓 (201,202) k猽 甶 Ph鬰 Ng璾 S琻 чng t譵 5 lo筰 thu鑓.")
		elseif (UTask_wd60sub == 5) then
			if ( HaveItem(107) == 1 and HaveItem(134) == 1 and HaveItem(135) == 1 and HaveItem(136) == 1 and HaveItem(137) == 1) then
				Talk(2, "", "Х t譵 頲 5 lo筰 thu鑓, m阨 ngi luy謓 ch� thu鑓 cho binh l輓h � chi課 trng d飊g !!", "Qu鑓 gia g苝 n筺, th蕋 phu h鱱 tr竎h. Y猲 t﹎, ta nh蕋 nh luy謓 ch�, k辮 th阨 a n!")
				DelItem(107)
				DelItem(134)
				DelItem(135)
				DelItem(136)
				DelItem(137)
				SetTask(17, SetByte(GetTask(17),1,8))
				AddNote("T譵  5 lo筰 thu鑓, giao cho Ch� ti謒 thu鑓.")
				Msg2Player("T譵  5 lo筰 thu鑓, giao cho Ch� ti謒 thu鑓.")
			else
				Say("Mu鑞 tr� d辌h b謓h c莕 5 lo筰 thu鑓 <color=Red>h頿 hoan ? huy襫 tham ? 琻g quy ? ph遪g k� ? chu sa <color>. Thi誹 m閠 th� c騨g kh玭g 頲, n╩ lo筰 dc li謚 n祔 sinh trng �<color=Red> Ph鬰 Ng璾 S琻 чng<color>",
					2,
					"Giao d辌h/yes",
					"Kh玭g giao d辌h/no")
			end
		else
			Say("C竎 lo筰 thu鑓 tr� thng b鎛 ti謒 u c�, ngi mu鑞 mua thu鑓 g� ?",
				2,
				"Giao d辌h/yes",
				-- "Ta mu鑞 甶襲 ch� h鏽 nguy猲 linh /refine",
				"Kh玭g giao d辌h/no")
		end
	else
		Say("C竎 lo筰 thu鑓 tr� thng b鎛 ti謒 u c�, ngi mu鑞 mua thu鑓 g� ?",
			2,
			"Giao d辌h/yes",
			-- "Ta mu鑞 甶襲 ch� h鏽 nguy猲 linh /refine",
			"Kh玭g giao d辌h/no")
	end
end

function yes()
	Sale(12)  			--弹出交易框
end

function no()
end
