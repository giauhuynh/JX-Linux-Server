
Include("\\script\\lib\\remoteexc.lua")
function main()
	RemoteExc("\\script\\bil4i3n\\bil4i3n_worldrank_hook.lua", "bilRankHook:UpdateRank",{})
	Talk(1, "", "C�p Nh�t x�p h�ng th�nh c�ng !!");
	return
end