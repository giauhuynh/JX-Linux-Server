

Include("\\script\\global\\timerhead.lua")
Include("\\Script\\Global\\FuYuan.lua")
Include("\\script\\nationalwar\\head.lua")

function main(sel) 
	local Uworld96 = GetTask(96) 
	local PK_value = GetPK(); 
	if (Uworld96 == 1) then 
		Say("<color=Orange>Lao ®Çu<color>: th¨m xong ch­a , ®i nhanh mét chót",2,"C¸m ¬n vÞ ®¹i ca nµy, ta ®i råi/visit_leave","Xin ®¹i ca ®îi mét xÝu n÷a, ta sÏ ®i liÒn ®©y/no") 
	elseif (PK_value <= 0) then 
		Talk(2,"PKclear","<color=Orange>Lao ®Çu<color>: ng­¬i h·y lo thu thËp hµnh lý, ng­¬i ®· cã thÓ xuÊt ngôc","Lao ®Çu ®a t¹ ®¹i ca, nh­ vËy ta ®i liÒn.") 
	else
		local absolve_time = NW_GetTask(NW_TASKNO_ABSOLVE) 
		local current_time = GetCurServerTime() 
		if (absolve_time ~= 0 and current_time < absolve_time + SECONDS_ONEHOUR) then
			Say("Ta nh×n lªn trêi thiªn tö h«m nay ®¹i duyÖt, ®¹i x¸ thiªn h¹ hÕt th¶y téi c¸c ng­êi, tiÓu tö ng­¬i vËn khÝ kh«ng tÖ cßn kh«ng ®i nhanh lªn", 
			2, 
			" ta ®i ngay, ®i ngay/nw_absolve", 
			" kh«ng ta ph¶i ë l¹i chç nµy /Cancel") 
		else 
			local n_timerid = GetTimerId(); 
			if (n_timerid ~= 9) then 
				SetTask(96,100 + PK_value);
				SetTimer(12 * CTime * FramePerSec, 9) 
				return 
			end 
			Say("<color=Orange>Lao ®Çu<color>: Téi nh©n kh«ng ®­îc phÐp ®i l¹i, vÒ phßng giam cña m×nh ngay!",4,
				"Hái thêi gian/ask_timer",
				"Hèi lé b¹c (ra ngoµi hÕt pk)/pay_money",
				"Hèi lé b¹c (ra ngoµi, vÉn gi÷ pk)/pay_money_norepk",
				"®­îc råi, ®­îc råi ta trë vÒ ®©y/no") 
		end 
	end 
end 

function pay_money_norepk()
	Talk(1, "pay_money_norepk_2", "VÞ lao ®Çu, ë ®©y ta cã 5 v¹n l­îng, hiÖn t¹i ta ®ang mang träng bÖnh, ngµi cã thÓ cho ta t¹i ngo¹i vµi ngµy?")
end

function pay_money_norepk_2()
	Say("<color=Orange>Lao ®Çu<color>: xem ng­¬i h×nh hµi häc trß nghÌo r¸ch, cã thÓ cã nhiÒu b¹c nh­ vËy sao? ",2,
	"§em tiÒn nhÐt vµo trong tay h¾n /pay_money_norepk_3",
	"TiÕp tôc khÈn cÇu /pay_no") 
end

function pay_money_norepk_3()
	if (GetCash() >= 50000) then 
		Pay(50000) 
		leave_prison() 
		Msg2Player("Lao ®Çu cho phÐp ng­¬i d­ìng bÖnh bªn ngoµi, ng­¬i cã thÓ rêi ®¹i lao.")
	else
		pay_no()
	end
end

function nw_absolve() 
SetPK(0) 
leave_prison() 
end 

function ask_timer() 
if (GetCash() >= 1000) then 
Pay(1000) 
Talk(2,"","Lao ®Çu vÞ ®¹i ca nµy , n¬i nµy 1000 l­îng b¹c xin mêi uèng chÐn trµ, ta chØ lµ muèn hái mét chót b©y giê lµ giê g× . ","Lao ®Çu ng­¬i muèn h¬i gi¶m thÊp téi nghiÖt còng cßn kÐm "..GetRestCTime(9).." , nhanh ®i vÒ ngåi ®i") 
else 
Talk(2,"","Lao ®Çu vÞ ®¹i ca nµy , ta chØ lµ muèn hái mét chót b©y giê lµ giê g× . ","Lao ®Çu hái hái c¸i g×, ®ßi ®¸nh cã ph¶i kh«ng, cßn kh«ng mau trë vÒ ngåi ®i") 
end 
end 

function pay_money() 

	local a = {
		[1] = 50000,
		[2] = 100000,
		[3] = 150000,
		[4] = 200000,
		[5] = 250000,
		[6] = 500000,
		[7] = 1000000,
		[8] = 2000000,
		[9] = 3000000,
		[10] = 5000000,
	}

PK_PayMoney = a[GetPK()]
Talk(1,"pay_money2","Lao ®Çu ca , n¬i nµy cã <color=yellow>"..PK_PayMoney.."<color> l­îng b¹c nhá mµ thµnh kÝnh lín, ch¼ng qua ta ®©y th©n thÓ thËt sù lµ bÖnh nÆng ®ë kh«ng næi, xin ®¹i ca khai ©n ®Ó ta ra ngoµi trÞ bÖnh.") 
end 

function pay_money2() 
Say("<color=Orange>Lao ®Çu<color>: xem ng­¬i h×nh hµi häc trß nghÌo r¸ch, cã thÓ cã nhiÒu b¹c nh­ vËy sao? ",2,"§em tiÒn nhÐt vµo trong tay h¾n /pay_yes","TiÕp tôc khÈn cÇu /pay_no") 
end 

function pay_yes() 

	local a = {
		[1] = 50000,
		[2] = 100000,
		[3] = 150000,
		[4] = 200000,
		[5] = 250000,
		[6] = 500000,
		[7] = 1000000,
		[8] = 2000000,
		[9] = 3000000,
		[10] = 5000000,
	}

PK_PayMoney = a[GetPK()]
if (GetCash() >= PK_PayMoney) then 
Pay(PK_PayMoney) 
Msg2Player("Lao ®Çu cho phÐp ng­¬i d­ìng bÖnh bªn ngoµi, ng­¬i cã thÓ rêi ®¹i lao.") 
Talk(1,"leave_prison","<color=Orange>Lao ®Çu<color>: LuËt ph¸p v« t×nh nh­ng ta h÷u t×nh, nÕu ng­¬i bÖnh nÆng nh­ vËy, vËy tr­íc tiªn ®i xem thÇy thuèc ®i. nªn nhí ng­¬i chØ lµ ra ngoµi ch÷a bÖnh, trªn ng­êi téi nghiÖt vÉn ch­a hÕt, ®i ra ngoµi ®õng bao giê t¸i ph¹m chuyÖn g× ®Êy") 
SetPK(0) 
Msg2Player("V× hèi lé Lao ®Çu nªn tÊt c¶ téi tr¹ng ®Òu ®­îc xãa bá!") 
else 
pay_no() 
end 
end 

function pay_no() 
Talk(1,"","<color=Orange>Lao ®Çu<color>: ®å nghÌo, cót ngay cã tin ta cÇm ®¹i roi quÊt ng­¬i hay kh«ng?") 
end 

function PKclear() 
Msg2Player("ë trong ngôc ®· tØnh ngé, cuèi cïng còng ®­îc th¶ ra ngoµi.") 
leave_prison() 
end 

function leave_prison() 
StopTimer() 
if (GetTask(94) == 9) then 
SetTask(94,0) 
SetTask(95,0) 
elseif (GetTask(94) > 0) then
Msg2Player("Ng­¬i nhí trªn ng­êi m×nh cßn mang theo nhiÖm vô, nhanh ®i hoµn thµnh nã ®i. ") 
SetTimer(GetTask(95),GetTask(94)) 
SetTask(94,0) 
SetTask(95,0) 
end 
FuYuan_Resume(); 
leave2() 
end 

function visit_leave() 
leave2() 
end 

function leave2() 
SetTask(96,0) 
leave_pos = GetTask(93) 
DisabledTeam(0); 
if (leave_pos == 1) then 
NewWorld(176,1473,3245) 
else
NewWorld(37,1781,3044) 
end 
end 

function no() 
end 
