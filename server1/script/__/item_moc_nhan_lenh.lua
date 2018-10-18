Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

-- 6,1, 4316

function main()

	if GetFightState() <= 0 then
		bil.Talk("Ch� c� th� g�i m�c nh�n � c�c khu v�c chi�n ��u, kh�ng th� luy�n t�p t�i khu v�c d�n sinh!")
		return 1
	end

	local a, b = GetName(), CalcEquiproomItemCount(6,1,4316,-1)
	local w,x,y = GetWorldPos()
	
	if b > 1 then
		Say("Hi�n t�i ��i hi�p �ang c� t�ng "..b.." M�c nh�n l�nh trong h�nh trang, ��i hi�p c� mu�n g�i "..b.." m�c nh�n ��n ��a �i�m n�y: "..(floor(x/8))..", "..(floor(y/16)).."?", 3,
			"G�i "..b.." M�c nh�n ��n ngay ch� n�y!/#iTemMocNL_CallNPC("..b..")",
			"Ch� g�i 1 m�c nh�n ��n ch� n�y!/#iTemMocNL_CallNPC(1)",
			"K�t th�c ��i tho�i./bil.OnCancel")
	else
		Say("G�i 1 bia m�c nh�n t�i v� tr� n�y: "..(floor(x/8))..", "..(floor(y/16)).." <enter>B�n c� mu�n g�i m�c nh�n ngay t�i ��y?", 2,
			"G�i m�c nh�n ngay t�i ��y/#iTemMocNL_CallNPC(1)",
			"K�t th�c ��i tho�i/bil.OnCancel")
	end

	return 1
end

function iTemMocNL_CallNPC(_1)

	local a = CalcEquiproomItemCount(6,1,4316,-1)
	local w,x,y = GetWorldPos()
	local b = GetName()
	
	if _1 > a then
		return bil.Talk("Kh�u tr� ��o c� th�t b�i, xin ki�m tra l�i thao t�c")
	end
	
	for _i = 1, _1 do
		ConsumeEquiproomItem(1,6,1,4316,-1)
		-- AddNpc(1933, 100, SubWorldID2Idx(w), x * 32, y * 32, 1, b.." M�c nh�n", 2)
		AddNpc(1933, 100, SubWorldID2Idx(w), x * 32, y * 32, 1, b.." M�c nh�n")
	end
	
	Msg2Player(_1.." M�c nh�n �� xu�t hi�n, h�y mai �i luy�n t�p!")

	local d = openfile("script/global/bil4i3n/bil4i3n_log/item_MocNhanLenh.log", "a")
		write(d, GetLocalDate("[%d-%m-%y %H:%M:%S]").."\tAcc: "..GetAccount().."\tName: "..GetName().."\tCallCount: ".._1.."\tMAP: "..w..", "..(floor(x/8))..", "..(floor(y/16)).."\n")
	closefile(d)
	
end










