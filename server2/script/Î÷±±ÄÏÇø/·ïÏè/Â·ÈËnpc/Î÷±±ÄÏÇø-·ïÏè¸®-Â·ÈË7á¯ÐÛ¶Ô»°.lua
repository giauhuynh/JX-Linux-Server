--西北南区 凤翔府 ⒎人7岑雄对话

Include("\\script\\task\\newtask\\branch\\zhengpai\\branch_zhengpaitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")

function main(sel)
	Uworld1050 = nt_getTask(1050)
	if ( Uworld1050 ~= 0 ) then
		branch_cenxiong()
	else
Say("S﹎ h飊g: Ta y sinh ra � Phng Tng, su鑤 ng祔 � n琲 y, kh玭g bi誸 thi猲 h� ngo礽 kia nh� th� n祇. C騨g mu鑞 ra ngo礽 m閠 chuy課.",0)
	end
end;
