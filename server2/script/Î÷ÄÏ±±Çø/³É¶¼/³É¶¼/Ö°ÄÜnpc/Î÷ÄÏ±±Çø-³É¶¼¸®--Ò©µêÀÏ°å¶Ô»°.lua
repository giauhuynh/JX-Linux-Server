--Î÷ÄÏ±±Çø ³É¶¼¸® Ò©µêµÏ°å¶Ô»°

-- ¸¶ÖÆ»ìÔª¸é¢¶
function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

function main(sel)
	Say("<color=yellow>Chñ tiÖm thuèc<color>: ta lóc cßn trÎ, muèn lµm mét danh y gièng nh­ Hoa §µ, Sau ®ã ta ph¶i lÊy vî råi sinh con, v× nu«i gia ®×nh, chØ ®µnh ph¶i më ra tiÖm thuèc nµy. Con ng­êi ta ngµy cµng l«i th«i dµi dßng, ng­¬i muèn mua thuèc ph¶i kh«ng?",
		2,
		"Giao dŞch/yes",
		-- "Tinh chÕ hçn nguyªn linh lé/refine",
		"Kh«ng giao dŞch/Cancel")
end

function yes()
	Sale(15) 		--µ¯³ö½»Ò×¿ò
end
