Include( "\\script\\item\\checkmapid.lua" )
IncludeLib("BATTLE")

function EatMedicine()
	for j = 1, getn(tbCD_MAP) do
		if ( nMapId == tbCD_MAP[j] ) then
			Msg2Player("��o c� n�y ch� c� th� s� d�ng � chi�n tr��ng t�ng kim.");
			return -1
		end
	end
	nowmissionid = BT_GetData(PL_RULEID);	--��ȡ��ǰMISSIONID
	curcamp = GetCurCamp();
	X = floor( X / 8 );
	Y = floor( Y / 16 );
	string = "<#><color=yellow>"..GetName().."<#><color><color=pink>: Ta b�y gi� t�a �� l�<color=yellow>("..X.."<#>��"..Y.."<#>)<color>t�c t�i gi�p ta m�t l�c c�nh tay.";
	Msg2MSGroup( nowmissionid, string, curcamp );
	Msg2Player("Ng��i s� d�ng m�t t�n th� c�p, th�ng b�o c�c chi�n h�u ng��i b�y gi� ��n t�a ��.");
end
