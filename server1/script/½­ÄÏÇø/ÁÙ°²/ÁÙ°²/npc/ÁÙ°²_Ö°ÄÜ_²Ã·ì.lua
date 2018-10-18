-- ÁÙ°²µÄ²Ã·ì£¬¿ÉÒÔ¢ò»éÀñ¼ª·þ
-- By: Dan_Deng(2003-12-29)
-- GetTask(67): µÚ24×ÖÎ»Îª»é·ñ±ê¼Ç£¬µÚ1×ÖÎ»ÎªÊÇ·ñÒÑ¢ò¼ª·þ

function main(sel)
	Uworld67 = GetTask(67)
	if (GetBit(Uworld67,24) == 1) then			-- ÒÑ»é
		if (GetBit(Uworld67,1) == 0) then		-- ÉÐÎ´¢ò¹ý£¬¿ÉÒÔ¢ò»éÀñ·þ
			if (GetSex() == 0) then					-- ÄÐ¶Ô»°£¬¢òÄÐ×°
				Talk(1,"buy_sale","L·o gia : nghe nãi ng­¬i may ¸o hoa ®Ñp nhÊt thiªn h¹ ®óng kh«ng ? ")
			else
				Talk(1,"buy_sale","L·o gia : ng­êi cßn hµng kh«ng ?")
			end
		else
			Talk(1,"","Tr­íc bæn tiÖm lµm y phôc kh«ng tÖ, ®­îc b»ng h÷u gióp ®ì òng hé thËt thæ thÑn!")
		end
	else
		Talk(1,"","Tµi phïng : kh«ng ph¶i nãi kho¸c nhµ ta cã may c¸c lÖ phôc tèt nhÊt thiªn h¹, ng­¬i cÇn may g× cø nãi!")
	end
end

function buy_sale()
	Say("Chæ nµy ®Æc biÖt may lÔ phôc,dÜ nhiªn ph¶i tèn chi phÝ, vµ gi¸ cña nã lµ 88888 l­îng b¹c. ",2,"§­¬ng nhiªn ta muèn mua mét bé. /buy_yes","Kh«ng cÇn,ta cßn ch­a muèn kÕt h«n /no")
end

function buy_yes()
	if (GetCash() >= 88888) then
		Pay(88888)
		if (GetSex() == 0) then
			AddItem(0,2,28,1,random(0,4),0,0)
		else
			AddItem(0,2,28,4,random(0,4),0,0)
		end
		Uworld67 = GetTask(67)
		Uworld67 = SetBit(Uworld67,1,1)
		SetTask(67,Uworld67)
		Talk(1,"","Kh«ng thµnh vÊn ®Ò chóc kh¸ch quan tr¨m n¨m h¶o hîp!")
	else
		Talk(1,"","Kh«ng cã tiÒn th× ®õng lµm phiÒn ta lµm viÖc!")
	end
end

function no()
end
