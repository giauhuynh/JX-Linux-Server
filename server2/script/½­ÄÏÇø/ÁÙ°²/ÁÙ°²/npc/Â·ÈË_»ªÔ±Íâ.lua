-- 临安　⒎人　华员外
-- by：Dan_Deng(2003-09-16)
-- edit by 小浪兜兜
Include("\\script\\event\\zhongqiu2007\\picture_head.lua")
function main()
	local ndate = tonumber(GetLocalDate("%y%m%d%H%M"))
	if ndate > 0709220000 and ndate < 0710312400 then
		SetTaskTemp(TSK_TEMP,1)
		Describe("Hoa vi猲 ngo筰 : trung thu  n ch� c莕 thu th藀  6 <color=red>M穘h v� v鬾 <color> h頿 th祅h m閠 t� ho祅 ch豱h 甧m n cho ta,ta s� t苙g ngi m閠 <color=red>cung th竛g ph� dung<color>.",2,"фi cung th竛g ph� dung th祅h b竛h trung thu/makeItemUI","ch� 甶 ngang qua/NoChoice")
	else
		if (random(0,1) == 0) then
			Talk(1,"","Hoa vi猲 ngo筰 : ta tuy kh玭g ph秈 l� ngi trong quan trng, nh璶g c騨g quen bi誸 nhi襲 quan l筰, ch� c莕 c� b筩 l� 頲.")
		else
			Talk(1,"","Hoa vi猲 ngo筰 : ai c騨g mu鑞 l祄 quan nh璶g u bi誸 quan trng gian hi詍, c� nh� ta ung dung t� t筰.")
		end
	end
end;
