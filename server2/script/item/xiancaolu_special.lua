--特效仙草露
--8小时经验双倍
IncludeLib("SETTING"); --载入SETTING脚本指令库


function main()
	if GetSkillState(440) == 1 then 
		Say("C竎 h� v蒼 c遪 h� tr� t� hi謚 鴑g Ti猲 th秓 l�, kh玭gth� d飊g nhi襲 l莕 c騨g l骳!", 0, "Ta bi誸 r錳!/OnCancel")
		return 1
	else
		AddSkillState(440, 1, 1, 64800 * 8, 1);
		return 0
	end
end;

function OnCancel() return end