--中原南区 襄阳府 ⒎人9范二春对话
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")

function main(sel)
	if allbrother_0801_CheckIsDialog(184) == 1 then
		allbrother_0801_FindNpcTaskDialog(184)
		return 0;
	end
i = random(0,1)

if (i == 0) then
Say("Ph筸 Nh� Xu﹏:ng t萿 t� trong nh� qu� kh� kh╪, b鋘 ta h� cho c竎 n祅g nh� a m閠 i i m� 甶, trc c鴘 c鴘 c蕄.",0)
return
end;

if (i == 1) then
Say("Ph筸 Nh� Xu﹏:  M鋓 ngi u l� nhai phng, gi髉  l蒼 nhau l� ph秈.",0)
end;

end;

