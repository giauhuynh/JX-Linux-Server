-- ÁÙ°²¡¡¢·ÈË¡¡¢ôË¿³ñµÄ
-- by£ºDan_Deng(2003-09-16)

function main()
	i = random(0,3)
	if (i == 0) then
		Talk(1,"","B¸n lôa : lôa tèt ®©y, lùa h¶o h¹ng ®©y, ghĞ vµo mua nhanh.")
	elseif (i == 1) then
		Talk(1,"","B¸n lôa : ta ®©y b¸n lôa tèt tuyÖt phÈm, g× còng cã, cÈm,ph­ëng,nh­ng,gÊm...mêi kh¸ch quan chän.")
	elseif (i == 2) then
		Talk(1,"","B¸n lôa : mêi kh¸ch quan xem thö c¸i nµy, ®©y lµ lôa næi tiÕng hµng ch©u,b¶o ®¶m mÆc vµo nhÑ nh­ l«ng hång,chÊt liÖu tuyÖt phÈm.")
	else
		Talk(1,"","B¸n lôa : cßn ®©y lµ gÊm th­îng h¹ng,tÊt c¶ ®Òu ®­îc thªu b»ng tay bëi c¸c thî thñ c«ng hµng ®Çu,nh×n sèng ®éng nh­ thËt.")
	end
end;
