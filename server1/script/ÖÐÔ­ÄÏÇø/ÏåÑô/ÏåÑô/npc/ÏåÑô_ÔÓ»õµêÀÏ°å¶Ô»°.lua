--description: ÖÐÔ­ÄÏÇø ÏåÑô¸® ÔÓ»õµêÀÏ°å¶Ô»°	Îäµ±ÅÉ20¼¶ÈÎÎñ
--author: yuanlan	
--date: 2003/5/14
-- Update: Dan_Deng(2003-08-08)
-- Update: Dan_Deng(2003-08-17)
Include("\\script\\global\\global_zahuodian.lua");

function main(sel)
	UTask_wd = GetTask(5);
	if (UTask_wd == 20*256+40) and (HaveItem(66) == 1) then
		Talk(2, "", "Ng­¬i cã thÓ gióp ta tu bæ c¸i ®¹o bµo nµy sao ?", "Con ta lªn Vâ §ang s¬n h¸i l¸ thuèc bÞ háa lang trong ®éng ®Ých lang <color=Red><color> tha ®i råi , ng­êi nµo cã thÓ gióp ta cøu nã ?!","Cøu ng­êi khÈn cÊp, ta gióp ng­¬i b¸o l¹i cho ®ång bµo")
		SetTask(5, 20*256+50)
		DelItem(66)
		AddNote("? T­¬ng D­¬ng t×m ®­îc chñ tiÖm t¹p hãa, biÕt con trai cña nµng bÞ d· lang ë <color=red>Háa Lang §éng <color> tha ®i råi. ")
		Msg2Player("? T­¬ng D­¬ng t×m ®­îc chñ tiÖm t¹p hãa, biÕt con trai cña nµng bÞ d· lang ë <color=red>Háa Lang §éng <color> tha ®i råi. ")
	elseif (UTask_wd == 20*256+50) then
		if (HaveItem(67) == 1) then
			Talk(3,"","Ng­êi lµ ©n nh©n cøu con trai ta, cÇn trî gióp g× cø viÖc nãi!","Cã thÓ gióp ta söa c¸i ®¹o bµo nµy kh«ng? ","Kh«ng thµnh vÊn ®Ò, v× b¸o ®¸p ©n cøu m¹ng, ta sÏ kh«ng lÊy tiÒn !")
			DelItem(67)
			AddEventItem(68)
			Msg2Player("§¹o bµo ®· söa xong. ")
			SetTask(5, 20*256+80)
			AddNote("Chñ tiÖm t¹p hãa dïng tµm ti bè söa xong ®¹o bµo.")
		else
			Say("Con ta lªn Vâ §ang s¬n h¸i l¸ thuèc bÞ háa lang trong ®éng ®Ých lang <color=Red><color> tha ®i råi , ng­êi nµo cã thÓ gióp ta cøu nã ?!", 2, "Ta chØ muèn mua 1 Ýt ®å /yes", "Ta biÕt råi /no")
		end
	elseif (UTask_wd == 20*256+80) and (HaveItem(68) == 0) then		-- µÀ¾ß¶ªÁË
		AddEventItem(68)
		Talk(1,"","¢n nh©n, ng­¬i quªn ®¹o bµo liÔu")
	else
		local Buttons = store_sel_extend();
		Say("Chñ tiÖm t¹p hãa: Ngµi ®Õn ®©y cã viÖc g× ?", getn(Buttons), Buttons);
	end
end;

function yes()
	Sale(11)  			--µ¯³ö½»Ò×¿ò
end;

function BuyChristmasCard()
	Sale(97);
end


function no()
end;
