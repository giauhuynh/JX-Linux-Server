Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

function main()
	if CountFreeRoomByWH(1,1) < 1 then
		Msg2Player("B�n ph�i �� tr�ng �t nh�t 1 � h�nh trang m�i c� th� s� d�ng ���c v�t ph�m n�y!")
		return 1
	end
	local bil_1 = random(20, 100)
	AddStackItem(bil_1,6,1,1499,1,0,0,0)
	Msg2Player(bil.C(10, "B�n ng�u nhi�n nh�n ���c "..bil_1.." khi�u chi�n l�nh!"))
	return 0
end

































