--中原南区 襄阳府 ⒎人6龚阿牛对话


Include("\\script\\task\\newtask\\branch\\zhengpai\\branch_zhengpaitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")


function main(sel)

i = random(0,2)
	Uworld1051 = nt_getTask(1051)
	if ( Uworld1051 ~= 0 ) then
		branch_taokan()
	else
		if (i == 0) then
Say("Cung A Ng璾:  Ra kh醝 th祅h, 甶 v� hng B綾, kh玭g xa ch輓h l� V� ng S琻 .",0)
		return
		end;
		
		if (i == 1) then
Say("Cung A Ng璾:  Nghe n鉯 chng m玭 ph竔 V� ng l� m閠 c o ch﹏ nh﹏, kh玭g bi誸 頲 c� ph秈 hay kh玭g c o l� c� th� trng sanh b蕋 l穙 ",0)
		return
		end;
		
		if (i == 2) then
Say("Cung A Ng璾:  N誹 kh玭g ph秈 l� trong nh� c� m� gi�, ta  s韒 l猲 V� ng s琻 b竔 s� h鋍 ngh� r錳.",0)
		end;
	end
end;

