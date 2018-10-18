
bilMsg2AllWorld = {}

function bilMsg2AllWorld:Send2All(_1)
	self:Msg(_1)
	self:News(_1)
end

function bilMsg2AllWorld:Msg(_1)
	-- print("==> bilMsg2AllWorld.Msg: ".._1)
	GlobalExecute(format("dw Msg2SubWorld([[%s]])", _1))
end

function bilMsg2AllWorld:News(_1)
	-- print("==> bilMsg2AllWorld.News: ".._1)
	GlobalExecute(format("dw AddLocalCountNews([[%s]], 1)",_1))
end























