--两湖区 巴陵县 ⒎人5游客对话
--巴陵县孝手任务：古老太的宝贝
--suyu
-- Update: Dan_Deng(2003-08-10)

function main(sel)
	UTask_world19 = GetTask(47);
	if (UTask_world19 == 2) then
		if HaveItem(183) == 1 then
			Say("gia910",2,"gia911/yes","gia912/no")
		else
			Talk(1,"","gia913")
		end
	else
		i = random(0,3)
		if (i == 0) then
			Talk(1,"","!.. Bao gi� th� ta m韎 c� th� t譵 頲 m閠 b鴆 th� ph竝 qu� nh� th� n祔. ")
		elseif (i == 1) then
			Talk(1,"","чng ёnh h� n祔 c遪 頲 g鋓 l� 'V╪ M閚g Tr筩h'. ph輆 B綾 gi竝 Trng Giang, ph輆 Nam gi竝 b鑞 con s玭g Tng, T�, Nguy猲, Phong. Danh hi謚 l� 'B竧 B竎h L� чng ёnh H�.")
		elseif (i == 2) then
			Talk(1,"","Ph筸 V╪ Ch輓h C玭g trong b礽 'Nh筩 dng l莡 k�' c� vi誸: 'D� quan phu Ba L╪g th緉g tr筺g, t筰 чng ёnh nh蕋 h�. H祄 vi詎 s琻, Th玭 Trng Giang, h筼 h筼 thang thang, ho祅h v� t� nhai, tri襲 huy t辬h ﹎, kh� tng v筺 thi猲' . чng nh h� n祔 x鴑g")
		else
			Talk(1,"","чng ёnh h� r閚g m猲h m玭g, n骾 non ch鉻 v鉻, c 甶觤 l韓 nh蕋 l� ngo礽 h� c� h�, trong h� c� n骾, c� nhi襲 v� s�, lau s藋 um t飉, nc tr阨 m閠 s綾, h秈 ﹗ bay ln. Xu﹏ Thu t� qu� lu玭 thay i")
		end
	end
end;

function yes()
	i = 100 * (random(0,5)+10)
	Talk(2,"","gia918","gia919"..i.."gia920")
	DelItem(183)
	Earn(i)
	SetTask(47, 3)
	Msg2Player("gia921"..i.."gia922")
	AddNote("gia923")
end;

function no()
	Talk(1,"","gia924")
end;
