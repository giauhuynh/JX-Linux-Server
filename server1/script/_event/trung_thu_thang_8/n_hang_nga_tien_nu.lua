Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

nHangNgaTienNu = {}

function nHangNgaTienNu:Main(NpcIndex)
	a = {
		{
			M = "B¸nh Trung thu - T×nh B»ng H÷u!",
			H = {
				{FormatTime2Number, 1, {GetLastLogoutTime()}, 1709192359},
				{FormatTime2Number, 1, {GetLastOfflineTime()}, 1709192359},
				{GetTask, 1, {5869}, 0},
			},
			P = {
				c = {
					{SetTask, {5869, 1}},
					{Msg2Player, {"NhËn ®­îc B¸nh Trung Thu - T×nh B»ng H÷u"}},
				},
				i = {
					{v = {6,1,4348,1,0,0,0}, n = 1, b = -2, e = (7*24*60*60), ne = "B¸nh Trung Thu - T×nh B»ng H÷u", l = "e_TrungThuThang8"},
				},
			}
		},
		{
			M = "B¸nh Trung thu - Tr¨ng Trßn H¹nh Phóc!",
			H = {
				{GetLevel, 1, {}, 89},
				{GetTask, 1, {5868}, 0},
				{tonumber, 1, {GetLocalDate("%y%m%d%H%M")}, 1710042359},
				{tonumber, -1, {GetLocalDate("%y%m%d%H%M")}, 1710041800},
			},
			P = {
				c = {
					{SetTask, {5868, 1}},
					{Msg2Player, {"NhËn ®­îc B¸nh Trung Thu - Tr¨ng Trßn H¹nh Phóc"}},
				},
				i = {
					{v = {6,1,4349,1,0,0,0}, n = 1, b = -2, e = (7*24*60*60), ne = "B¸nh Trung Thu - Tr¨ng Trßn H¹nh Phóc", l = "e_TrungThuThang8"},
				},
			}
		},
		{
			M = "Tham gia ho¹t ®éng - H¶o Töu T­¬ng Phïng",
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
									M = "§Õn ®Þa ®iÓm ng¾m tr¨ng thµnh Ph­îng T­êng",
									P = {c = {{NewWorld, {520, 1601, 3279}}},}
								},
								{
									M = "§Õn ®Þa ®iÓm ng¾m tr¨ng thµnh Thµnh §«",
									P = {c = {{NewWorld, {521, 1601, 3279}}},}
								},
								{
									M = "§Õn ®Þa ®iÓm ng¾m tr¨ng thµnh BiÖn Kinh",
									P = {c = {{NewWorld, {522, 1601, 3279}}},}
								},
								{
									M = "§Õn ®Þa ®iÓm ng¾m tr¨ng thµnh T­¬ng D­¬ng",
									P = {c = {{NewWorld, {523, 1601, 3279}}},}
								},
								{
									M = "§Õn ®Þa ®iÓm ng¾m tr¨ng thµnh D­¬ng Ch©u",
									P = {c = {{NewWorld, {524, 1601, 3279}}},}
								},
								{
									M = "§Õn ®Þa ®iÓm ng¾m tr¨ng thµnh §¹i Lý",
									P = {c = {{NewWorld, {525, 1601, 3279}}},}
								},
								{
									M = "§Õn ®Þa ®iÓm ng¾m tr¨ng thµnh L©m An",
									P = {c = {{NewWorld, {526, 1601, 3279}}},}
								},
							}
							, "<npc>Xin c¸c h¹ h·y chän ®Þa ®iÓm muèn th­ëng nguyÖn nh©m töu cïng b»ng h÷u cña m×nh."
						},
					},
				},
			}
		},
	}

	return bil.Say(a, "<npc>Tr¨ng thu vÒ trªn toµn câi Vâ l©m Tranh B¸ thËt lung linh huyÒn ¶o. Nµng H»ng Nga xinh ®Ñp sÏ göi tÆng nh÷ng ®Æc phÈm khi dïng b¸nh trung thu th¬m lõng...")
end






























