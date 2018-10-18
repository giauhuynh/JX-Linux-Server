Include("\\script\\missions\\citywar_city\\head.lua");
CityWarID = 221;--攻城战的地图ID
MSBegin = MS_TOOLBEGIN;
Count = g_nMaxToolCount;
NpcTempl = 527;
NpcLevel = 60;

function main()

--看当前位置是否处在攻城战地图上
W,X,Y = GetWorldPos();
nSubWorldID = SubWorldIdx2ID(SubWorld);

if (nSubWorldID ~= CityWarID) then 
	Msg2Player("B筺 kh玭g th� s� d鬾g V﹏ K� Binh ph� t筰 y ")
	return 1;
end

if (GetCurCamp() ~= 1) then 
	Msg2Player("Ch� c� phe ph遪g th� m韎 頲 s� d鬾g V﹏ K� Binh ph� t筰 y ")
	return 1
end;


bAdd = 0
for i  = 1, Count do 
	if (GetMissionV(MSBegin + i - 1) == 0) then 
		ToolIndex = AddNpc(NpcTempl, NpcLevel, SubWorld, X * 32, Y * 32, 1, GetName().." L輓h nh thu� ", 1);
		if (ToolIndex > 0) then
			SetNpcCurCamp(ToolIndex, 1);
			SetNpcDeathScript(ToolIndex, "\\script\\missions\\citywar_city\\tooldeath.lua");
			SetMissionV(MSBegin + i - 1, ToolIndex); 
			Msg2MSAll(MISSIONID, "<color=green>"..GetName().."<color> Ph竔 n m閠 v� s�  <color=yellow>k衞 c�<color>, h� tr� chi課 u ");
			WriteLog(GetLoop()..GetName().."T╪g th猰 m閠 yaoqi"..ToolIndex)
			bAdd = 1
			return 0
		end;
	end;
end

if (bAdd == 0) then 
	Msg2Player("Trc m総 s� qu﹏ ph竔 n h� tr�  , t筸 th阨 kh玭g th� ph竔 th猰 n鱝 ")
	return 1
end;

return 0;
end;
