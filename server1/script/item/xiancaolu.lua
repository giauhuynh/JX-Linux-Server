IncludeLib("SETTING"); --����SETTING�ű�ָ���


function main()
	if GetSkillState(440) == 1 then 
		Say("C�c h� v�n c�n h� tr� t� hi�u �ng Ti�n th�o l�, kh�ngth� d�ng nhi�u l�n c�ng l�c!", 0, "Ta bi�t r�i!/OnCancel")
		return 1
	else
		AddSkillState(440, 1, 1, 64800, 1);
		return 0
	end
end

function OnCancel() return end