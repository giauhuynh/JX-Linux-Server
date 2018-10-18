Include("\\script\\global\\baijuwanhead.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

iBachCauHoan = {
	TimeLeft = 5887,
	NeedLevel = 50,
}

function iBachCauHoan:Use()
	if GetLevel() < self.NeedLevel then
		return bil.Talk("C�ng n�ng n�y ch� c� th� s� d�ng � nh�n v�t �� ��t c�p 50 tr� l�n!")
	end
	
	local a = GetTaskTemp(AEXP_TEMPOFFLINETASKID);
	if (IsMyItem(a) ~= 1) then
		return 
	end
	
	i_1,i_2,i_3 = GetItemProp(a);
	if ( i_1 ~= AEXP_SMALL_NGENTYPE
		or i_2 ~= AEXP_SMALL_DETAILTYPE
		or i_3 ~= AEXP_SMALL_PARTYPE) then
		return 
	end 
	
	local b = RemoveItemByIndex(a);
	
	if b <= 0 then
		return bil.Talk("Kh�ng c� B�ch c�u ho�n, kh�ng th� s� d�ng!")
	end
	
	bil.JoinTime({0,0,0,8,0,0}, self.TimeLeft)
	
	return Msg2Player(bil.C(1, "S� d�ng B�ch c�u ho�n th�nh c�ng, th�i gian �y th�c nh�n kinh nghi�m ���c t�ng th�m 8 gi�!"))
end

function iBachCauHoan:CheckTimeLeft()

	local a, b = bil.SplitTime(GetTask(self.TimeLeft))
	
	return bil.Talk("Th�i gian �y th�c nh�n �i�m kinh nghi�m c�a ��i hi�p c�n l�i: "..b)
	
end

function iBachCauHoan:Main()
	
	local a = {
		{
			M = "S� d�ng B�ch C�u Ho�n",
			P = {
				c = {
					{self.Use, {self}}
				},
			},
		},
		{
			M = "Tra xem th�i gian treo m�y c�n l�i c�a ta",
			P = {
				c = {
					{self.CheckTimeLeft, {self}}
				},
			},
		},
	}
	
	bil.Say(a, "S� d�ng "..bil.C(1, "B�ch C�u Ho�n").." �� nh�n ���c "..bil.C(2, "8 gi�").." �y th�c, h� tr� nh�n �i�m kinh nghi�m!")
	
	return 1
end	