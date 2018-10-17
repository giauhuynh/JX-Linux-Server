Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

nHangNgaTienNu = {}

function nHangNgaTienNu:Main(NpcIndex)
	a = {
		{
			M = "B�nh Trung thu - T�nh B�ng H�u!",
			H = {
				{FormatTime2Number, 1, {GetLastLogoutTime()}, 1709192359},
				{FormatTime2Number, 1, {GetLastOfflineTime()}, 1709192359},
				{GetTask, 1, {5869}, 0},
			},
			P = {
				c = {
					{SetTask, {5869, 1}},
					{Msg2Player, {"Nh�n ���c B�nh Trung Thu - T�nh B�ng H�u"}},
				},
				i = {
					{v = {6,1,4348,1,0,0,0}, n = 1, b = -2, e = (7*24*60*60), ne = "B�nh Trung Thu - T�nh B�ng H�u", l = "e_TrungThuThang8"},
				},
			}
		},
		{
			M = "B�nh Trung thu - Tr�ng Tr�n H�nh Ph�c!",
			H = {
				{GetLevel, 1, {}, 89},
				{GetTask, 1, {5868}, 0},
				{tonumber, 1, {GetLocalDate("%y%m%d%H%M")}, 1710042359},
				{tonumber, -1, {GetLocalDate("%y%m%d%H%M")}, 1710041800},
			},
			P = {
				c = {
					{SetTask, {5868, 1}},
					{Msg2Player, {"Nh�n ���c B�nh Trung Thu - Tr�ng Tr�n H�nh Ph�c"}},
				},
				i = {
					{v = {6,1,4349,1,0,0,0}, n = 1, b = -2, e = (7*24*60*60), ne = "B�nh Trung Thu - Tr�ng Tr�n H�nh Ph�c", l = "e_TrungThuThang8"},
				},
			}
		},
		{
			M = "Tham gia ho�t ��ng - H�o T�u T��ng Ph�ng",
			H = {
				{tonumber, -1, {GetLocalDate("%y%m%d")}, 171002},
				{tonumber, 1, {GetLocalDate("%y%m%d")}, 171006},
				{tonumber, -1, {GetLocalDate("%H%M")}, 2001},
				{tonumber, 1, {GetLocalDate("%H%M")}, 2101},
			},
			P = {
				c = {
					{bil.Say, 
						{
							{
								{
									M = "��n ��a �i�m ng�m tr�ng th�nh Ph��ng T��ng",
									P = {c = {{NewWorld, {520, 1601, 3279}}},}
								},
								{
									M = "��n ��a �i�m ng�m tr�ng th�nh Th�nh ��",
									P = {c = {{NewWorld, {521, 1601, 3279}}},}
								},
								{
									M = "��n ��a �i�m ng�m tr�ng th�nh Bi�n Kinh",
									P = {c = {{NewWorld, {522, 1601, 3279}}},}
								},
								{
									M = "��n ��a �i�m ng�m tr�ng th�nh T��ng D��ng",
									P = {c = {{NewWorld, {523, 1601, 3279}}},}
								},
								{
									M = "��n ��a �i�m ng�m tr�ng th�nh D��ng Ch�u",
									P = {c = {{NewWorld, {524, 1601, 3279}}},}
								},
								{
									M = "��n ��a �i�m ng�m tr�ng th�nh ��i L�",
									P = {c = {{NewWorld, {525, 1601, 3279}}},}
								},
								{
									M = "��n ��a �i�m ng�m tr�ng th�nh L�m An",
									P = {c = {{NewWorld, {526, 1601, 3279}}},}
								},
							}
							, "<npc>Xin c�c h� h�y ch�n ��a �i�m mu�n th��ng nguy�n nh�m t�u c�ng b�ng h�u c�a m�nh."
						},
					},
				},
			}
		},
	}

	return bil.Say(a, "<npc>Tr�ng thu v� tr�n to�n c�i V� l�m Tranh B� th�t lung linh huy�n �o. N�ng H�ng Nga xinh ��p s� g�i t�ng nh�ng ��c ph�m khi d�ng b�nh trung thu th�m l�ng...")
end






























