--中原北区 汴京府 杂货店老板对话
Include("\\script\\global\\global_zahuodian.lua");

function main(sel)
Say("Ti謒 t筽 h鉧: � y c� m鋓 th� t� nam ra b綾, qu莕 竜 gi祔 d衟 son ph蕁 l鬭 t� t籱 c� , i hi謕 c� v祇 xem.", 2, "Giao d辌h/yes", "K誸 th骳/no");

end;


function yes()
Sale(8);  			--弹出交易框
end;

function BuyChristmasCard()
	Sale(97);
end


function no()
end;


