Include("\\script\\global\\baijuwanhead.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

iBachCauHoan = {
	TimeLeft = 5887,
	NeedLevel = 50,
}

function iBachCauHoan:Use()
	if GetLevel() < self.NeedLevel then
		return bil.Talk("C«ng n¨ng nµy chØ cã thÓ sö dông ë nh©n vËt ®· ®¹t cÊp 50 trë lªn!")
	end
	
	local a = GetTaskTemp(AEXP_TEMPOFFLINETASKID);
	if (IsMyItem(a) ~= 1) then
		return 
	end
	
	i_1,i_2,i_3 = GetItemProp(a);
	if ( i_1 ~= AEXP_SMALL_NGENTYPE
		or i_2 ~= AEXP_SMALL_DETAILTYPE
		or i_3 ~= AEXP_SMALL_PARTYPE) then
		return 
	end 
	
	local b = RemoveItemByIndex(a);
	
	if b <= 0 then
		return bil.Talk("Kh«ng cã B¹ch c©u hoµn, kh«ng thÓ sö dông!")
	end
	
	bil.JoinTime({0,0,0,8,0,0}, self.TimeLeft)
	
	return Msg2Player(bil.C(1, "Sö dông B¹ch c©u hoµn thµnh c«ng, thêi gian ñy th¸c nhËn kinh nghiÖm ®­îc t¨ng thªm 8 giê!"))
end

function iBachCauHoan:CheckTimeLeft()

	local a, b = bil.SplitTime(GetTask(self.TimeLeft))
	
	return bil.Talk("Thêi gian ñy th¸c nhËn ®iÓm kinh nghiÖm cña ®¹i hiÖp cßn l¹i: "..b)
	
end

function iBachCauHoan:Main()
	
	local a = {
		{
			M = "Sö dông B¹ch C©u Hoµn",
			P = {
				c = {
					{self.Use, {self}}
				},
			},
		},
		{
			M = "Tra xem thêi gian treo m¸y cßn l¹i cña ta",
			P = {
				c = {
					{self.CheckTimeLeft, {self}}
				},
			},
		},
	}
	
	bil.Say(a, "Sö dông "..bil.C(1, "B¹ch C©u Hoµn").." ®Ó nhËn ®­îc "..bil.C(2, "8 giê").." ñy th¸c, hç trî nhËn ®iÓm kinh nghiÖm!")
	
	return 1
end	