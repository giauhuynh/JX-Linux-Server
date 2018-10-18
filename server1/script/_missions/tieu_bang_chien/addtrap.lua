Include("\\script\\lib\\getrectangle_point.lua")
Include("\\script\\_missions\\tieu_bang_chien\\inc.lua")

function m_TieuBangChien:AddTrap()
	ClearMapTrap(self.MapId)

	local a = {
		tbtoppoint={1757,3393},
		nleftstep = 20,
		nrightstep = 20,
	}
	local b = nil

	for _i = 1, getn(self.Trap) do
		if self.Trap[_i].b and self.Trap[_i].b > 0 then
			a.nleftstep = self.Trap[_i].b
			a.nrightstep = self.Trap[_i].b
		end
		
		for _i2 = 1, getn(self.Trap[_i].p) do
			a.tbtoppoint = {self.Trap[_i].p[_i2][1], self.Trap[_i].p[_i2][2]}
			b = getRectanglePoint(a)
			
			for _k,_v in b do
				AddMapTrap(self.MapId,floor(_v[1]*32),floor(_v[2]*32),self.Trap[_i].s)
			end
			
		end
	end
	
	if self.Debug then
		print("\t[_MIS] m_TieuBangChien:AddTrap() :: Successful!")
	end
end


















