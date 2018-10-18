-- Include("\\script\\global\\bil4i3n\\bil4i3n_inc_memory.lua")

-- /*[[------------------------------------------ WARNING -----------------------------------------------
	--		Khong duoc Reload lai file nay, neu Reload bo nho tam se mat du lieu
	--		Kh«ng ®­îc Reload l¹i file nµy, nÕu Reload bé nhí t¹m sÏ mÊt d÷ liÖu
	--		Do not Reload this file, if reloading the cache will be lose data
----------------------------------------------- WARNING -----------------------------------------------]]*/

_MEMORY = ((_MEMORY and type(_MEMORY) == "table") and _MEMORY or {_a = {}})

_MEMORY.LogsFile = "script/global/bil4i3n/bil4i3n_log/MEMORY_INC.log"

function _MEMORY:SET(_K, _F)
	local _V = dostring("return ".._K)
	
	if _F then
		self:Include(_K, _F)
	end
	
	if not(_V) or (_V == nil) then dostring(_K.." = {}") end
	
	if (not(_V) or (_V == nil) or not(_V._MEMORY) or (_V._MEMORY == nil)) and self._a[_K] then
		self:GET(_K)
		return print("\t[_MEMORY] _MEMORY:SET() :: [ ".._K.." ] can't now replace because value not is null !!!")
		
	elseif ((not(_V) or (_V == nil)) or (not(_V._MEMORY) or (_V._MEMORY == nil))) and not(self._a[_K]) then
		dostring(_K.."._MEMORY = {}")
	end

	self._a[_K] = ((_V and _V._MEMORY) and _V._MEMORY or (self._a[_K] and self._a[_K] or {}))
	
	_V = nil
end

function _MEMORY:GET(_K)
	if self._a[_K] then
		dostring(_K.."._MEMORY = _MEMORY._a['".._K.."']")
	end
	
	return (self._a[_K] and self._a[_K] or {})
end

function _MEMORY:Release(_K)
	self:Include(_K)

	if self._a[_K] then
		self:LogFunc(self._a[_K], _K)
	end
	
	self._a[_K] = nil
end

function _MEMORY:Include(_K, _F)
	if not(self.IncludeFile) then self.IncludeFile = {} end

	if _F then
		self.IncludeFile[_K] = ((not(self.IncludeFile[_K]) or (self.IncludeFile[_K] == nil)) and _F or self.IncludeFile[_K])
		return
	end
	
	if _K and self.IncludeFile[_K] then
		Include(self.IncludeFile[_K])
		
		local _V = dostring("return ".._K.."._MEMORY")
		
		self._a[_K] = (_V and _V or {})
		
		return
	end
	
	if not(_K) and not(_F) then
		local a = nil
	
		for _kF, _vF in self.IncludeFile do
			if _vF then
				Include(_vF)
			end
			
			a = dostring("return ".._kF.."._MEMORY")
			
			if a and a ~= nil then
				self._a[_kF] = a
			end
		end
		
		return
	end
end

function _MEMORY:LogFunc(_1, _2)
	if not(self._a) and not(_1) then
		return print("\t[_MEMORY] _MEMORY:LogFunc() :: ._a || _1 : Is Null !!!")
	end
	
	if not(_1) and not(_2) then self:Include() end
	
	self.LogsTab = (not(self.LogsTab) or (self.LogsTab == nil)) and 0 or self.LogsTab
	self.LogsString = (not(self.LogsString) or (self.LogsString == nil)) and "" or self.LogsString
	
	local a = openfile(self.LogsFile, "a")
	local b = ""
	
	self.LogsString = ((self.LogsString == "") and ((_1 and "[Release] "..(_2 and "[ ".._2.." ]" or "") or "").."------------------------- "..date("[%d-%m-%y %H:%M:%S]").." -------------------------\n") or self.LogsString)
	
	if _2 then self.LogsString = self.LogsString.."\t:: File: "..(self.IncludeFile[_2] and self.IncludeFile[_2] or "is NULL !!!").."\n" end
	
	local _a = (_1 and _1 or self._a)
	
	for _k, _v in _a do
		if self.LogsTab and self.LogsTab > 0 then
			for _i = 1, self.LogsTab do
				b = b.."\t"
			end
		end
	
		if type(_v) == "table" then
			self.LogsTab = self.LogsTab + 1
			
			if self.IncludeFile[_k] then
				self.LogsString = self.LogsString.."\n\t:: File: "..self.IncludeFile[_k].."\n"
			else
				self.LogsString = self.LogsString.."\n"
			end
			
			self.LogsString = self.LogsString..b.."[ "..(type(_k) == "string" and "'".._k.."'" or _k).." ] = {\n"
			self:LogFunc_C(_v)
			self.LogsString = self.LogsString..b.."}\n"
			self.LogsTab = self.LogsTab - 1
		else
			self.LogsString = self.LogsString..b.."[ "..(type(_k) == "string" and "'".._k.."'" or _k).." ] = "..(type(_v) == "string" and "'".._v.."'" or _v)..",\n"
		end
	end
	
	write(a, self.LogsString.."\n")
	
	self.LogsString = ""
	
	closefile(a)
	
	print("\t[_MEMORY] "..(_1 and "[Release] "..(_2 and "[ ".._2.." ]" or "") or "").." _MEMORY:LogFunc() :: Successfully !!!")
end

function _MEMORY:LogFunc_C(_1)
	local a = ""
	
	for _i = 1, self.LogsTab do
		a = a.."\t"
	end

	for _k, _v in _1 do
		if type(_v) == "table" then
			self.LogsTab = self.LogsTab + 1
			self.LogsString = self.LogsString..a.."[ "..(type(_k) == "string" and "'".._k.."'" or _k).." ] = {\n"
			self:LogFunc_C(_v)
			self.LogsString = self.LogsString..a.."}\n"
			self.LogsTab = self.LogsTab - 1
		else
			self.LogsString = self.LogsString..a.."[ "..(type(_k) == "string" and "'".._k.."'" or _k).." ] = "..(type(_v) == "string" and "'".._v.."'" or _v)..",\n"
		end
	end
	
	a = ""
end




















