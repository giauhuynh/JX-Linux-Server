--西北南区 凤翔府 杂货店迪板对话
-- VH by anhdung9992001 clbgamesvn--

Include("\\script\\global\\global_zahuodian.lua");

function main(sel)
	local Buttons = store_sel_extend();
Say("Ti謒 t筽 h鉧 l穙 b秐: Nh� ngi mu鑞 mua th� g� y? Ch� ta kh玭g thi誹 th� g� h誸. Mu鑞 g� c� n蕐. Mu鑞 xem ch髏 kh玭g? ", 2, "Giao d辌h/yes", "R阨 kh醝/no");
end;


function yes()
Sale(20); 		--弹出交易框
end;

function BuyChristmasCard()
	Sale(97);
end


function no()
end;

