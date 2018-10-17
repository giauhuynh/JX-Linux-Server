Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc_memory.lua")
Include("\\script\\_missions\\tieu_bang_chien\\inc.lua")
Include("\\script\\_missions\\tieu_bang_chien\\addnpc.lua")
Include("\\script\\_missions\\tieu_bang_chien\\addtrap.lua")

function m_TieuBangChien:m_RemoteStop()
	self.m.StateWithNotMap = 0
end

function m_TieuBangChien:m_RemoteStart(_PreparingTime)
	if SubWorldID2Idx(self.MapId) < 0 then
		AddTimer(((_PreparingTime + self.m.TimeOpenMission) * 60 * 18), "m_TieuBangChien:m_RemoteStop", self.MapId)
		
		self.m.StateWithNotMap = 1
		
		return print("\t[_MIS] m_TieuBangChien:m_RemoteStart(".._PreparingTime.."): Can't start because MapId("..self.MapId..") is not in my gamesv!!!")
	end
	
	print("\t[_MIS] m_TieuBangChien:m_RemoteStart( ".._PreparingTime.." ): Successfully!")
	
	self.m.PreparingTimeTemp = _PreparingTime
	
	local Old_SubWorld = SubWorld
	SubWorld = SubWorldID2Idx(self.MapId)
	
	_MEMORY:Release("m_TieuBangChien")
	CloseMission(self.m.ID)
	OpenMission(self.m.ID)
	
	SubWorld = Old_SubWorld
end

function m_TieuBangChien:m_InitMission()
	self._MEMORY.Tong = {}
	self._MEMORY.Tong_ID = {}
	self._MEMORY.Mask = {}
	self._MEMORY.Player = {k = {}, v = {}}
	self._MEMORY.Rank = {p = {}, l = {}, d = {}, s = {}}
	
	for _i2 = 1, getn(self.Npc.Mask) do
		self._MEMORY.Mask[_i2] = nil
	end

	for _i = 1, 100 do 
		SetMissionV(_i , 0)
	end
	
	SetMissionV(self.m.i_State, 1)
	SetMissionV(self.m.i_PreparingTime, self.m.PreparingTimeTemp)
	
	StartMissionTimer(self.m.ID, self.m.TimerID, self.m.Timer_Interval)
	
	ClearMapNpc(self.MapId)
	ClearMapObj(self.MapId)
	
	self:AddNpc()
	self:AddTrap()
	
	bil.Msg2AllWorld(bil.C(1, "Ti�u Bang Chi�n")..bil.C(9, " �ang b��c v�o giai �o�n chu�n b�, c�c bang ch� h�y d�n d�t huynh �� ti�n v�o b�n �� chu�n b� ti�p nh�n nhi�m v�, th�i gian chu�n b� "..GetMissionV(self.m.i_PreparingTime).." ph�t"))
end

function m_TieuBangChien:m_RunMission()
	self:AddNpc(self.Add.SatThu)
	
	bil.Msg2AllWorld(bil.C(1, "Ti�u Bang Chi�n")..bil.C(9, " ch�nh th�c kh�i ��ng, c�c bang h�i �� c� th� ��ng k� h� t�ng Ti�u Xa, h�y nh� r�ng 'Ti�u t�c c� m�t � kh�p n�i!'"))
end

function m_TieuBangChien:m_EndMission()
	for _i = 1, 100 do 
		SetMissionV(_i , 0)
	end
	
	StopMissionTimer(self.m.ID, self.m.TimerID)
	
	_MEMORY:LogFunc()
end

function m_TieuBangChien:m_OnLeave(RoleIndex) end

function InitMission() return m_TieuBangChien:m_InitMission() end
function RunMission() return m_TieuBangChien:m_RunMission() end
function EndMission() return m_TieuBangChien:m_EndMission() end
function OnLeave(RoleIndex) return m_TieuBangChien:m_OnLeave(RoleIndex) end






























