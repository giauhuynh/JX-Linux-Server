-- 西山屿 职能 铁匠
-- By: li_xin(2005-01-27)
--update:zhaowenyi(2005-02-20)增加紫色及黄金装备铸造

Include("\\script\\global\\紫色及黄金装备铸造.lua")
function main(sel)
	--Say("想要在西山屿，没有我厉害的兵器恐泞要吃亏啊。你想要Ⅱ什么？还想要制造玄晶装备或黄金装备就来找我，价格一定合理!", 3, "交易/yes", "制造/onFoundry", "只是⒎过/no")
	Say("Mu鑞 � T﹜ S琻 T�, kh玭g c� ta l頸 h筰 binh kh� s� r籲g mu鑞 ╪ thua thi謙 a. Ngi mu鑞 mua c竔 g�? C遪 mu鑞 mu鑞 d錸 t筼 huy襫 tinh trang b� ho芻 ho祅g kim trang b� s� t韎 t譵 ta, gi� c� nh蕋 nh h頿 l�!", 
			2, "Giao d辌h/yes", 			
			"K誸 th鉩/no")
end;

function yes()
	Sale(13);  				
end;

function no()
end;
