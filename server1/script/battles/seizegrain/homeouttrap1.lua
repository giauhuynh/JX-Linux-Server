--宋方后营外Trap点触发的脚本
IncludeLib("BATTLE");
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\battles\\seizegrain\\head.lua")

function main()
	--如果处于报名阶段时,玩家不能走到对方的领地中去，所以会将玩家扔到大营内
	if(GetCurCamp() == 1) then
		if (BT_GetData(PL_PARAM3) > 0) then
			Msg2Player("B筺 產ng v薾 chuy觧 Bao lng, kh玭g th� quay v� H藆 doanh?")
			file = GetMissionS(1)
			x,y = bt_getadata(file)
			SetPos(floor(x/32), floor(y/32))
		else
			SetPos(GetMissionV(MS_HOMEIN_X1), GetMissionV(MS_HOMEIN_Y1))
			SetFightState(0)
			BT_SetData( PL_LASTDEATHTIME, GetGameTime() )
		end
	elseif (GetCurCamp() == 2) then
		Msg2Player("Ph輆 trc s琻 c鑓 ch藀 tr飊g, ch綾 ch緉 c� ph鬰 binh! B筺 kh玭g n猲 t� ti謓 x玭g l猲!")
		SetFightState(1)
	end;
end;


