--西北南区 凤翔府 妓院迪鸨对话

function main(sel)

if ( GetSex() == 0 ) then      -- 萱家性别为男

	i = random(0,2)
	
	if (i == 0) then
	Say("K� vi謓 l穙 b秐: C� c﹗ \"M� chi ch b� di, tuy c ch h竛\", ngi c� nghe qua ch�? ",0)
	return
	end

	if (i == 1) then
	Say("K� vi謓 l穙 b秐: � ch� ta kh玭g thi誹 th�  vui a, b韙 ch髏 th阨 gian v祇 y. S� kh玭g u鎛g c玭g n y u. N祇! C玭g t� 甶 v祇 a vui m閠 ch髏.", 0)
	return
	end

	if (i == 2) then
	Say("K� vi謓 l穙 b秐: L穙 gia, ngi th輈h c� nng n祇? � ch� ta to祅 l� qu鑓 s綾 thi猲 hng, m b秓 s� l祄 ng礽 h礽 l遪g.", 0)
	return
	end

else						  -- 萱家性别为女

	Say("K� vi謓 l穙 b秐: y l� n琲 vui ch琲 c馻 c竛h nam nhi, ph薾 n� ngi c騨g n y �. ng l� lo筰 ph薾 n� h� h醤g m�. Ta y kh玭g ti誴.", 0)

end;



end;
