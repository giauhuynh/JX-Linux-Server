--西南北区 成都府 杂货店迪板对话 
--author: yuanlan	
--date: 2003/5/23
-- Update: Dan_Deng(2003-08-12)
Include("\\script\\global\\global_zahuodian.lua");

function main(sel)
	UTask_em = GetTask(1);
	UTask_tm = GetTask(2);
	if (UTask_em == 30*256+50) then 		--峨嵋派蘑云慈30级任务
Say("Ch� ti謒 t筽 h鉧 : ta ch� n祔 b竛 l� c竎 lo筰 nam b綾 t筽 h鉧 , m阨 xem v� ch鋘 th� m譶h c莕 ?", 3, "C� b竛 i g� kh玭g ?/chicken", "Giao d辌h/yes", "Kh玭g giao d辌h/no")
	elseif ((UTask_em == 40*256+50) and (GetByte(GetTask(29),1) == 1)) then		--峨嵋派40级任务
		Say("C竎 lo筰 tr﹎ c礽 m韎 nh蕋 ch� c� 200 lng, mua 1 c竔 甶", 3, "Mua ng﹏ tr﹎/hairpin", "Mua nh鱪g v藅 kh竎/yes", "Kh玭g giao d辌h/no")
	elseif (UTask_tm == 10*256+40) then		--唐放唐鹤10级任务
		Say("Nh蒼 m� n穙 r蕋 p , 500 lng , kh玭g mua s� h鑙 h薾 !", 3, "Mua nh蒼 m� n穙. /ring", "Giao d辌h/yes", "Kh玭g giao d辌h/no")
	else
		local Buttons = store_sel_extend();
		Say("Ch� ti謒 t筽 h鉧 : ta ch� n祔 b竛 l� c竎 lo筰 nam b綾 t筽 h鉧 , m阨 xem v� ch鋘 th� m譶h c莕 ?", getn(Buttons), Buttons);
	end
end;

function chicken()
	if (GetCash() >= 50) then
		Pay(50)
		AddEventItem(119)
		Msg2Player("Mua 頲 i g�")
		AddNote("� ti謒 t筽 h鉧 th祅h d� mua 頲 i g� ")
	else
		Say("Khi n祇  ti襫 h穣 tr� l筰 ho芻 xem v藅 kh竎 甶", 2, "Giao d辌h/yes", "Kh玭g giao d辌h/no")		
	end
end;

function hairpin()
	if (GetCash() >= 200) then
		Pay(200)
		AddEventItem(63)
		Msg2Player("Mua 頲 ng﹏ tr﹎")
--		SetTask(29, 4)
		AddNote("� ti謒 t筽 h鉧 th祅h  mua 頲 ng﹏ tr﹎ ")
	else
		Say("Khi n祇  ti襫 h穣 tr� l筰 ho芻 xem v藅 kh竎 甶", 2, "Giao d辌h/yes", "Kh玭g giao d辌h/no")		
	end
end;


function ring()
	if (GetCash() >= 500) then
		Pay(500)
		AddEventItem(165)
		Msg2Player("Mua 頲 nh蒼 m� n穙 ")
		AddNote("� ti謒 t筽 h鉧 th祅h d� mua 頲 nh蒼 m� n穙")
	else
		Say("Khi n祇  ti襫 h穣 tr� l筰 ho芻 xem v藅 kh竎 甶", 2, "Giao d辌h/yes", "Kh玭g giao d辌h/no")		
	end
end;

function yes()
Sale(14);  		--弹出交易框
end;

function BuyChristmasCard()
	Sale(97);
end

function no()
end;
