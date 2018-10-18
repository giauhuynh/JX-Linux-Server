Include("\\script\\global\\bil4i3n\\bil4i3n_tasklist.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
_bilTitleLQ = "<color=Orange>LÔ Quan: <color>"

function bilDailyMuster() -- Main
	local bilTbOp = {}
	tinsert(bilTbOp, "T¹i h¹ ®Õn ®Ó ®iÓm danh!/bilGoMuster")
	tinsert(bilTbOp, "T¹i h¹ muèn xem sè l­ît ®iÓm danh cña m×nh./bilMyTimesMuster")
	tinsert(bilTbOp, "Ta muèn t×m hiÓu vÒ ho¹t ®éng nµy./bilAboutMuster")
	tinsert(bilTbOp, "KÕt thóc ®èi tho¹i./OnCancel")
	Say(_bilTitleLQ.."Nh»m khÝch lÖ tinh thÇn th­îng vâ cña c¸c vâsÜ trung nguyªn, tÆng th­ëng cho c¸c ®¹i hiÖp cã ý   chÝ kiªn c­êng, luyÖn tËp chuyªn cÇn, §éc c« minh chñ"
			.."®· ®em ®Õn nh÷ng phÇn th­ëng hÊp dÉn vµ phong phó <enter>dµnh tÆng cho nh÷ng ng­êi xøng ®¸ng nhÊt!", getn(bilTbOp), bilTbOp)
end

_bilTbAwardDailyMuster = 
{
	[1] = 
		{
			-- [1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "ThiÕt la h¸n",},
			[1] = {bilItem = {6, 1, 440, 0, 0,0, 0}, bilItemName = "M¶nh s¬n hµ x· t¾c x100",},
			[2] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[3] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[4] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			[5] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "§¹i Lùc hoµn",},
			-- [7] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [8] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [9] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[2] =
		{
			[1] = {bilItem = {6, 0, 1, 1, 0,0, 0}, bilItemName = "Tr­êng mÖnh hoµn",},
			[2] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia bµo hoµn",},
			[3] = {bilItem = {6, 1, 440, 0, 0,0, 0}, bilItemName = "M¶nh s¬n hµ x· t¾c x100",},
			[4] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "ThiÕt la h¸n",},
			[5] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thiªn s¬n B¶o Lé",},
			[6] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			[7] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[8] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			-- [5] = {bilItem = {4, 489, 0, 0, 0, 0, 0}, bilItemName = "LÖnh bµi Phong L¨ng §é",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[3] =
		{
			-- [1] = {bilItem = {6, 1, 23, 0, 0, 0, 0}, bilItemName = "ThiÕt la h¸n",},
			[1] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M¶nh s¬n hµ x· t¾c x100",},
			[2] = {bilItem = {6, 0, 6, 1, 0, 0, 0}, bilItemName = "Phi tèc hoµn",},
			[3] = {bilItem = {6, 0, 2, 1, 0, 0, 0}, bilItemName = "Gia bµo hoµn",},
			[4] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thiªn s¬n B¶o Lé",},
			[5] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			-- [7] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			-- [8] = {bilItem = {6, 1, 1617, 0, 0,0, 0}, bilItemName = "Viªm ®Õ lÖnh",},
			
			-- [6] = {bilItem = {6, 1, 904, 1, 0, 0, 0}, bilItemName = "Qu¶ Huy Hoµng (thÊp)",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[4] =
		{
			[1] = {bilItem = {6, 0, 3, 1, 0, 0, 0}, bilItemName = "§¹i lùc hoµn",},
			[2] = {bilItem = {6, 0, 4, 1, 0, 0, 0}, bilItemName = "Cao thiÓm hoµn",},
			[3] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[4] = {bilItem = {6, 0, 6, 1, 0, 0, 0}, bilItemName = "Phi tèc hoµn",},
			[5] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M¶nh s¬n hµ x· t¾c x100",},
			[6] = {bilItem = {6, 1, 23, 0, 0, 0, 0}, bilItemName = "ThiÕt la h¸n",},
			-- [3] = {bilItem = {6, 1, 15, 0, 0, 0, 0}, bilItemName = "Phi Phong",},
			-- [6] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S¸t thñ gi¶n",},
			-- [7] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[5] =
		{
			-- [1] = {bilItem = {6, 1, 23, 0, 0, 0, 0}, bilItemName = "ThiÕt la h¸n",},
			-- [3] = {bilItem = {6, 1, 904, 1, 0, 0, 0}, bilItemName = "Qu¶ Huy Hoµng (thÊp)",},
			[1] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M¶nh s¬n hµ x· t¾c x100",},
			[2] = {bilItem = {4, 489, 0, 0, 0, 0, 0}, bilItemName = "LÖnh bµi Phong L¨ng §é",},
			[3] = {bilItem = {6, 0, 3, 1, 0, 0, 0}, bilItemName = "§¹i lùc hoµn",},
			[4] = {bilItem = {6, 0, 4, 1, 0, 0, 0}, bilItemName = "Cao thiÓm hoµn",},
			[5] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[6] = {bilItem = {6, 0, 6, 1, 0, 0, 0}, bilItemName = "Phi tèc hoµn",},
			-- [7] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[6] =
		{
			-- [1] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S¸t thñ gi¶n",},
			-- [5] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			-- [6] = {bilItem = {6, 1, 1617, 0, 0,0, 0}, bilItemName = "Viªm ®Õ lÖnh",},
			[1] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thiªn s¬n B¶o Lé",},
			[2] = {bilItem = {6, 1, 23, 0, 0, 0, 0}, bilItemName = "ThiÕt la h¸n",},
			[3] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[4] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[5] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			[6] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "§¹i Lùc hoµn",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[7] =
		{
			-- [1] = {bilItem = {6, 1, 905, 1, 0, 0, 0}, bilItemName = "Qu¶ Huy Hoµng (trung)",},
			-- [2] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			-- [3] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S¸t thñ gi¶n",},
			-- [4] = {bilItem = {6, 1, 23, 0, 0, 0, 0}, bilItemName = "ThiÕt la h¸n",},
			[1] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thiªn s¬n B¶o Lé",},
			[2] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			[3] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[4] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			[5] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "§¹i Lùc hoµn",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[8] =
		{
			[1] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thiªn s¬n B¶o Lé",},
			[2] = {bilItem = {6, 1, 73, 0, 0, 0, 0}, bilItemName = "B¸ch Qu¶ Lé",},
			[3] = {bilItem = {6, 1, 23, 0, 0, 0, 0}, bilItemName = "ThiÕt la h¸n",},
			[4] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[5] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[6] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			[7] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "§¹i Lùc hoµn",},
			-- [4] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S¸t thñ gi¶n",},
			-- [5] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[9] =
		{
			
			-- [2] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M¶nh s¬n hµ x· t¾c x100",},
			-- [3] = {bilItem = {6, 1, 125, 0, 0, 0, 0}, bilItemName = "QuÕ Hoa Töu",},
			-- [4] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S¸t thñ gi¶n",},
			-- [6] = {bilItem = {6, 1, 73, 0, 0, 0, 0}, bilItemName = "B¸ch Qu¶ Lé",},
			-- [2] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "ThiÕt la h¸n",},
			[1] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thiªn s¬n B¶o Lé",},
			[2] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			[3] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[4] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[5] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			[6] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "§¹i Lùc hoµn",},
			-- [12] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [13] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [14] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[10] =
		{
			[1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "ThiÕt la h¸n",},
			[2] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M¶nh s¬n hµ x· t¾c x100",},
			[3] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[4] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			[5] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "§¹i Lùc hoµn",},
			[6] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[7] = {bilItem = {6, 1, 71, 0, 0, 0, 0}, bilItemName = "Tiªn Th¶o Lé",},
			[8] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S¸t thñ gi¶n",},
			[9] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			-- [3] = {bilItem = {6, 1, 124, 0, 0, 0, 0}, bilItemName = "Phóc Duyªn Lé (§¹i)",},
			-- [6] = {bilItem = {4, 489, 0, 0, 0, 0, 0}, bilItemName = "LÖnh bµi Phong L¨ng §é",},
			-- [9] = {bilItem = {6, 1, 1257, 0, 0, 0, 0}, bilItemName = "LÖnh bµi vinh dù Hµn thiÕt",},
			-- [10] = {bilItem = {6, 1, 1448, 0, 0, 0, 0}, bilItemName = "M¹c B¾c TruyÒn Tèng LÖnh",},
			-- [14] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [15] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [16] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[11] =
		{
			-- [1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "ThiÕt la h¸n",},
			-- [3] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S¸t thñ gi¶n",},
			-- [4] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			-- [5] = {bilItem = {6, 1, 1617, 0, 0,0, 0}, bilItemName = "Viªm ®Õ lÖnh",},
			[1] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M¶nh s¬n hµ x· t¾c x100",},
			[2] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[3] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[4] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			[5] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "§¹i Lùc hoµn",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[12] =
		{
			[1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "ThiÕt la h¸n",},
			[2] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M¶nh s¬n hµ x· t¾c x100",},
			[3] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[4] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[5] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			[6] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "§¹i Lùc hoµn",},
			-- [3] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S¸t thñ gi¶n",},
			-- [5] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			-- [9] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [10] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [11] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
			
		},
	[13] =
		{
			-- [1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "ThiÕt la h¸n",},
			-- [3] = {bilItem = {6, 1, 123, 0, 0, 0, 0}, bilItemName = "Phóc Duyªn Lé (Trung)",},
			-- [4] = {bilItem = {6, 1, 906, 1, 0, 0, 0}, bilItemName = "Qu¶ Huy Hoµng (cao)",},
			-- [6] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			[1] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S¸t thñ gi¶n",},
			[2] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M¶nh s¬n hµ x· t¾c x100",},
			[3] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[4] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[5] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[14] =
		{
			[1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "ThiÕt la h¸n",},
			[2] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			[3] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[4] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[5] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			-- [2] = {bilItem = {6, 1, 1392, 0, 0, 0, 0}, bilItemName = "Hép lÔ vËt v­ît ¶i",},
			-- [3] = {bilItem = {4, 489, 0, 0, 0, 0, 0}, bilItemName = "LÖnh bµi Phong L¨ng §é",},
			-- [4] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S¸t thñ gi¶n",},
			-- [5] = {bilItem = {6, 1, 71, 0, 0, 0, 0}, bilItemName = "Tiªn Th¶o Lé",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[15] =
		{
			-- [1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "ThiÕt la h¸n",},
			[1] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M¶nh s¬n hµ x· t¾c x100",},
			[2] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[3] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			[4] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "§¹i Lùc hoµn",},
			[5] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[6] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			-- [3] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S¸t thñ gi¶n",},
			-- [6] = {bilItem = {6, 1, 1617, 0, 0,0, 0}, bilItemName = "Viªm ®Õ lÖnh",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[16] =
		{
			[1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "ThiÕt la h¸n",},
			[2] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M¶nh s¬n hµ x· t¾c x100",},
			[3] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[4] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[5] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			[6] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "§¹i Lùc hoµn",},
			-- [3] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S¸t thñ gi¶n",},
			-- [4] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			-- [9] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [10] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [11] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[17] =
		{
			-- [1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "ThiÕt la h¸n",},
			[1] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M¶nh s¬n hµ x· t¾c x100",},
			[2] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[3] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			[4] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "§¹i Lùc hoµn",},
			[5] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[6] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			-- [3] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S¸t thñ gi¶n",},
			-- [6] = {bilItem = {6, 1, 1617, 0, 0,0, 0}, bilItemName = "Viªm ®Õ lÖnh",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[18] =
		{
			[1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "ThiÕt la h¸n",},
			[2] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M¶nh s¬n hµ x· t¾c x100",},
			[3] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[4] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			[5] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "§¹i Lùc hoµn",},
			[6] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			-- [3] = {bilItem = {4, 489, 0, 0, 0, 0, 0}, bilItemName = "LÖnh bµi Phong L¨ng §é",},
			-- [4] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S¸t thñ gi¶n",},
			-- [6] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[19] =
		{
			-- [1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "ThiÕt la h¸n",},
			[1] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M¶nh s¬n hµ x· t¾c x100",},
			[2] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M¶nh s¬n hµ x· t¾c x100",},
			[3] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[4] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			[5] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[6] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			-- [3] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S¸t thñ gi¶n",},
			-- [4] = {bilItem = {6, 1, 906, 1, 0, 0, 0}, bilItemName = "Qu¶ Huy Hoµng (cao)",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[20] =
		{
			[1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "ThiÕt la h¸n",},
			[2] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S¸t thñ gi¶n",},
			[3] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[4] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			[5] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "§¹i Lùc hoµn",},
			[6] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[7] = {bilItem = {6, 1, 71, 0, 0, 0, 0}, bilItemName = "Tiªn Th¶o Lé",},
			[8] = {bilItem = {4, 489, 0, 0, 0, 0, 0}, bilItemName = "LÖnh bµi Phong L¨ng §é",},
			[9] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M¶nh s¬n hµ x· t¾c x100",},
			[10] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			-- [3] = {bilItem = {6, 1, 906, 0, 0, 0, 0}, bilItemName = "Qu¶ Huy Hoµng (cao)",},
			-- [4] = {bilItem = {6, 1, 124, 0, 0, 0, 0}, bilItemName = "Phóc Duyªn Lé (§¹i)",},
			-- [10] = {bilItem = {6, 1, 1617, 0, 0,0, 0}, bilItemName = "Viªm ®Õ lÖnh",},
			-- [11] = {bilItem = {6, 1, 1257, 0, 0, 0, 0}, bilItemName = "LÖnh bµi vinh dù Hµn thiÕt",},
			-- [12] = {bilItem = {6, 1, 1448, 0, 0, 0, 0}, bilItemName = "M¹c B¾c TruyÒn Tèng LÖnh",},
			-- [16] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [17] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [18] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[21] =
		{
			-- [1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "ThiÕt la h¸n",},
			[1] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thiªn s¬n B¶o Lé",},
			[2] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M¶nh s¬n hµ x· t¾c x100",},
			[3] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[4] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[5] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			[6] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "§¹i Lùc hoµn",},
			-- [4] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S¸t thñ gi¶n",},
			-- [5] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[22] =
		{
			[1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "ThiÕt la h¸n",},
			[2] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			[3] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M¶nh S¬n Hµ X· T¾c (100)",},
			[4] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[5] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thiªn s¬n B¶o Lé",},
			[6] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[7] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			[8] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "§¹i Lùc hoµn",},
			-- [5] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S¸t thñ gi¶n",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[23] =
		{
			-- [1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "ThiÕt la h¸n",},
			-- [2] = {bilItem = {4, 489, 0, 0, 0, 0, 0}, bilItemName = "LÖnh bµi Phong L¨ng §é",},
			-- [3] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S¸t thñ gi¶n",},
			-- [5] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			[1] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M¶nh S¬n Hµ X· T¾c (100)",},
			[2] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[3] = {bilItem = {6, 1, 73, 0, 0, 0, 0}, bilItemName = "B¸ch Qu¶ Lé",},
			[4] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[5] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[24] =
		{
			[1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "ThiÕt la h¸n",},
			[2] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[3] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			[4] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "§¹i Lùc hoµn",},
			[5] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M¶nh S¬n Hµ X· T¾c (100)",},
			[6] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thiªn s¬n B¶o Lé",},
			[7] = {bilItem = {6, 1, 73, 0, 0, 0, 0}, bilItemName = "B¸ch Qu¶ Lé",},
			[8] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			[9] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			-- [2] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S¸t thñ gi¶n",},
			-- [8] = {bilItem = {6, 1, 1617, 0, 0,0, 0}, bilItemName = "Viªm ®Õ lÖnh",},
			-- [12] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [13] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [14] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[25] =
		{
			-- [1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "ThiÕt la h¸n",},
			-- [2] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S¸t thñ gi¶n",},
			[1] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M¶nh S¬n Hµ X· T¾c (100)",},
			[2] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thiªn s¬n B¶o Lé",},
			[3] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			[4] = {bilItem = {6, 1, 73, 0, 0, 0, 0}, bilItemName = "B¸ch Qu¶ Lé",},
			[5] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[6] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[7] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[26] =
		{
			-- [2] = {bilItem = {4, 489, 0, 0, 0, 0, 0}, bilItemName = "LÖnh bµi Phong L¨ng §é",},
			-- [3] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S¸t thñ gi¶n",},
			[1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "ThiÕt la h¸n",},
			[2] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M¶nh S¬n Hµ X· T¾c (100)",},
			[3] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thiªn s¬n B¶o Lé",},
			[4] = {bilItem = {6, 1, 73, 0, 0, 0, 0}, bilItemName = "B¸ch Qu¶ Lé",},
			[5] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			[6] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[7] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[8] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			[9] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "§¹i Lùc hoµn",},
			-- [12] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [13] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [14] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[27] =
		{
			-- [1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "ThiÕt la h¸n",},
			-- [2] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S¸t thñ gi¶n",},
			[1] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M¶nh S¬n Hµ X· T¾c (100)",},
			[2] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thiªn s¬n B¶o Lé",},
			[3] = {bilItem = {6, 1, 73, 0, 0, 0, 0}, bilItemName = "B¸ch Qu¶ Lé",},
			[4] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			[5] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[6] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[7] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[28] =
		{
			-- [2] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S¸t thñ gi¶n",},
			[1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "ThiÕt la h¸n",},
			[2] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M¶nh S¬n Hµ X· T¾c (100)",},
			[3] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thiªn s¬n B¶o Lé",},
			[4] = {bilItem = {6, 1, 73, 0, 0, 0, 0}, bilItemName = "B¸ch Qu¶ Lé",},
			[5] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			[6] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[7] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[8] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[29] =
		{
			-- [1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "ThiÕt la h¸n",},
			-- [2] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S¸t thñ gi¶n",},
			[1] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M¶nh S¬n Hµ X· T¾c (100)",},
			[2] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thiªn s¬n B¶o Lé",},
			[3] = {bilItem = {6, 1, 73, 0, 0, 0, 0}, bilItemName = "B¸ch Qu¶ Lé",},
			[4] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V©n Chiªu th­",},
			[5] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[6] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[7] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[30] =
		{
			[1] = {bilItem = {4, 489, 0, 0, 0, 0, 0}, bilItemName = "LÖnh bµi Phong L¨ng §é",},
			[2] = {bilItem = {6, 1, 71, 0, 0, 0, 0}, bilItemName = "Tiªn Th¶o Lé",},
			[3] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[4] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			[5] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "§¹i Lùc hoµn",},
			[6] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[7] = {bilItem = {6, 1, 12, 0, 0, 0, 0}, bilItemName = "Bµn Nh­îc T©m Kinh",},
			-- [6] = {bilItem = {6, 1, 124, 0, 0, 0, 0}, bilItemName = "Phóc Duyªn Lé (§¹i)",},
			-- [2] = {bilItem = {6, 1, 2424, 4, 0, 0, 0}, bilItemName = "§¹i Thµnh BÝ KÝp 90",},
			-- [4] = {bilItem = {6, 1, 26, 0, 0, 0, 0}, bilItemName = "Vâ L©m MËt TÞch",},
			-- [5] = {bilItem = {6, 1, 22, 0, 0, 0, 0}, bilItemName = "TÈy Tñy Kinh",},
			-- [7] = {bilItem = {6, 1, 1427, 0, 0, 0, 0}, bilItemName = "Tö MÉu LÖnh",},
			-- [8] = {bilItem = {6, 1, 1448, 0, 0, 0, 0}, bilItemName = "M¹c B¾c TruyÒn Tèng LÖnh",},
			-- [9] = {bilItem = {6, 1, 1617, 0, 0,0, 0}, bilItemName = "Viªm ®Õ lÖnh",},
			-- [11] = {bilItem = {6, 1, 1257, 0, 0, 0, 0}, bilItemName = "LÖnh bµi vinh dù Hµn thiÕt",},
			-- [16] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [17] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [18] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[40] =
		{
			[1] = {bilItem = {4, 489, 0, 0, 0, 0, 0}, bilItemName = "LÖnh bµi Phong L¨ng §é",},
			[2] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[3] = {bilItem = {6, 1, 71, 0, 0, 0, 0}, bilItemName = "Tiªn Th¶o Lé",},
			[4] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[5] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			[6] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "§¹i Lùc hoµn",},
			[7] = {bilItem = {6, 1, 1427, 0, 0, 0, 0}, bilItemName = "Tö MÉu LÖnh",},
			[8] = {bilItem = {6, 1, 12, 0, 0, 0, 0}, bilItemName = "Bµn Nh­îc T©m Kinh",},
			-- [3] = {bilItem = {6, 1, 26, 0, 0, 0, 0}, bilItemName = "Vâ L©m MËt TÞch",},
			-- [4] = {bilItem = {6, 1, 22, 0, 0, 0, 0}, bilItemName = "TÈy Tñy Kinh",},
			-- [5] = {bilItem = {6, 1, 124, 0, 0, 0, 0}, bilItemName = "Phóc Duyªn Lé (§¹i)",},
			-- [7] = {bilItem = {6, 1, 1448, 0, 0, 0, 0}, bilItemName = "M¹c B¾c TruyÒn Tèng LÖnh",},
			-- [8] = {bilItem = {6, 1, 1617, 0, 0,0, 0}, bilItemName = "Viªm ®Õ lÖnh",},
			-- [10] = {bilItem = {6, 1, 1257, 0, 0, 0, 0}, bilItemName = "LÖnh bµi vinh dù Hµn thiÕt",},
			-- [15] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [16] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [17] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[50] =
		{
			[1] = {bilItem = {4, 489, 0, 0, 0, 0, 0}, bilItemName = "LÖnh bµi Phong L¨ng §é",},
			[2] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[3] = {bilItem = {6, 1, 12, 0, 0, 0, 0}, bilItemName = "Bµn Nh­îc T©m Kinh",},
			[4] = {bilItem = {6, 1, 71, 0, 0, 0, 0}, bilItemName = "Tiªn Th¶o Lé",},
			[5] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[6] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			[7] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "§¹i Lùc hoµn",},
			-- [3] = {bilItem = {6, 1, 26, 0, 0, 0, 0}, bilItemName = "Vâ L©m MËt TÞch",},
			-- [4] = {bilItem = {6, 1, 22, 0, 0, 0, 0}, bilItemName = "TÈy Tñy Kinh",},
			-- [5] = {bilItem = {6, 1, 124, 0, 0, 0, 0}, bilItemName = "Phóc Duyªn Lé (§¹i)",},
			-- [6] = {bilItem = {6, 1, 1427, 0, 0, 0, 0}, bilItemName = "Tö MÉu LÖnh",},
			-- [7] = {bilItem = {6, 1, 1448, 0, 0, 0, 0}, bilItemName = "M¹c B¾c TruyÒn Tèng LÖnh",},
			-- [8] = {bilItem = {6, 1, 1617, 0, 0,0, 0}, bilItemName = "Viªm ®Õ lÖnh",},
			-- [10] = {bilItem = {6, 1, 1257, 0, 0, 0, 0}, bilItemName = "LÖnh bµi vinh dù Hµn thiÕt",},
			-- [15] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [16] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [17] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
	[60] =
		{
			[1] = {bilItem = {4, 489, 0, 0, 0, 0, 0}, bilItemName = "LÖnh bµi Phong L¨ng §é",},
			[2] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D­îc hoµn",},
			[3] = {bilItem = {6, 1, 71, 0, 0, 0, 0}, bilItemName = "Tiªn Th¶o Lé",},
			[4] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi tèc hoµn",},
			[5] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia Bµo hoµn",},
			[6] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "§¹i Lùc hoµn",},
			[7] = {bilItem = {6, 1, 1427, 0, 0, 0, 0}, bilItemName = "Tö MÉu LÖnh",},
			[8] = {bilItem = {6, 1, 12, 0, 0, 0, 0}, bilItemName = "Bµn Nh­îc T©m Kinh",},
			-- [3] = {bilItem = {6, 1, 124, 0, 0, 0, 0}, bilItemName = "Phóc Duyªn Lé (§¹i)",},
			-- [5] = {bilItem = {6, 1, 1448, 0, 0, 0, 0}, bilItemName = "M¹c B¾c TruyÒn Tèng LÖnh",},
			-- [6] = {bilItem = {6, 1, 2425, 4, 0, 0, 0}, bilItemName = "§¹i Thµnh BÝ KÝp 120",},
			-- [7] = {bilItem = {6, 1, 1617, 0, 0,0, 0}, bilItemName = "Viªm ®Õ lÖnh",},
			-- [9] = {bilItem = {6, 1, 1257, 0, 0, 0, 0}, bilItemName = "LÖnh bµi vinh dù Hµn thiÕt",},
			-- [14] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Khæng T­íc Nguyªn Th¹ch",},
			-- [15] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Phï Dung Nguyªn Th¹ch",},
			-- [16] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nhò Nguyªn Th¹ch",},
		},
}

-- _bilTbAwardDailyMusterEXP = {
	-- [10] = {10000000, "10 TriÖu"},
	-- [20] = {20000000, "20 TriÖu"},
	-- [30] = {30000000, "30 TriÖu"},
	-- [40] = {40000000, "40 TriÖu"},
	-- [50] = {50000000, "50 TriÖu"},
	-- [60] = {60000000, "60 TriÖu"},
-- }
_bilTbAwardDailyMusterEXP = {
	[10] = {5000000, "5 TriÖu"},
	[20] = {10000000, "10 TriÖu"},
	[30] = {15000000, "15 TriÖu"},
	[40] = {20000000, "20 TriÖu"},
	[50] = {25000000, "25 TriÖu"},
	[60] = {30000000, "30 TriÖu"},
}

function bilAward2Player(bilSel)
	Msg2Player("PhÇn th­ëng ®iÓm danh lÇn thø: <color=yellow>"..Bil_GetTask(14))
	local bilSelExp = bilSel
	if bilSelExp > 60 then bilSelExp = 60 end
	if(mod(bilSelExp, 10) == 0) then
		AddOwnExp(_bilTbAwardDailyMusterEXP[bilSelExp][1])
		Msg2Player("<color=yellow>NhËn th­ëng thªm ".._bilTbAwardDailyMusterEXP[bilSelExp][2].." ®iÓm kinh nghiÖm!")
		Msg2SubWorld("<color=yellow>Ng­êi ch¬i "..GetName().." ®iÓm danh lÇn thø "..Bil_GetTask(14).." ®· nhËn th­ëng thªm ".._bilTbAwardDailyMusterEXP[bilSelExp][2].." ®iÓm kinh nghiÖm!")
		AddLocalNews("<color=yellow>Ng­êi ch¬i "..GetName().." ®iÓm danh lÇn thø "..Bil_GetTask(14).." ®· nhËn th­ëng thªm ".._bilTbAwardDailyMusterEXP[bilSelExp][2].." ®iÓm kinh nghiÖm!")
	end
	if bilSel > 30 and bilSel < 40 then
		bilSel = bilSel - 30
	elseif bilSel > 40 and bilSel < 50 then
		bilSel = bilSel - 30
	elseif bilSel > 50 and bilSel < 60 then
		bilSel = bilSel - 30
	elseif bilSel > 60 and bilSel < 120 then
		bilSel = bilSel - 60
	end
	for bilLoop = 1, getn(_bilTbAwardDailyMuster[bilSel]) do
		-- local nItemIndex = AddItem(unpack(_bilTbAwardDailyMuster[bilSel][bilLoop].bilItem))
		local nItemIndex = AddItemNoStack(unpack(_bilTbAwardDailyMuster[bilSel][bilLoop].bilItem))
		if (_bilTbAwardDailyMuster[bilSel][bilLoop].bilItem[3] ~= 150 and _bilTbAwardDailyMuster[bilSel][bilLoop].bilItem[3] ~= 152 and _bilTbAwardDailyMuster[bilSel][bilLoop].bilItem[3] ~= 154) then
			SetItemBindState(nItemIndex, -2)
		end
		Msg2Player("<color=yellow>".._bilTbAwardDailyMuster[bilSel][bilLoop].bilItemName)
	end
	return Talk(1, "bilMyTimesMuster", _bilTitleLQ.."§· tiÕn hµnh ®iÓm danh lÇn thø <color=green>"..Bil_GetTask(14).."<color> thµnh c«ng!")
end

function bilProcMusterDayTimes(bilDateMuster, bilNowDateMuster)
	local TD, ND = bilDateMuster, bilNowDateMuster
	local DTs, MonthTD, MonthND = 0, tonumber(strsub(TD, 3, 4)), tonumber(strsub(ND, 3, 4))
	if MonthND > MonthTD then
		if tonumber(strsub(TD, 5, 6)) == 30 or tonumber(strsub(TD, 5, 6)) == 31 then
			return tonumber(strsub(ND, 5, 6)) + (((MonthND - MonthTD) * 30) - 30)
		else
			return ((30 - tonumber(strsub(TD, 5, 6))) + tonumber(strsub(ND, 5, 6))) + (((MonthND - MonthTD) * 30) - 30)
		end
	else
		return ND - TD
	end
end

function bilGoMuster()
	local bilNowTimes, bilDateMuster, bilNowDateMuster = Bil_GetTask(14), Bil_GetTask(15), tonumber(date("%y%m%d"))
	if bilDateMuster >= bilNowDateMuster then
		return Say(_bilTitleLQ.."H«m nay ®¹i hiÖp ®· tiÕn hµnh ®iÓm danh råi,h·y ®îi ®Õn h«m sau ®iÓm danh tiÕp, c¸c phÇn th­ëng  cña ngµy h«m sau cã thÓ xem ë môc xem sè l­ît ®iÓm   danh cña m×nh!", 1, "Ta biÕt råi!/OnCancel")
	end
	
	local checkNot = nil
	local checkNot_nowDay = tonumber(date("%d"))
	local checkNot_nowMonth = tonumber(date("%m"))
	
	if ((checkNot_nowMonth - 1) == 2) and (tonumber(date("%y")..(checkNot_nowMonth - 1).."28") > bilDateMuster) then
		checkNot = 1
		SetTask(5986, (bilNowDateMuster - ((tonumber(date("%y")..(checkNot_nowMonth - 1).."28") - bilDateMuster)) + 1))
	elseif (tonumber(date("%y")..(checkNot_nowMonth - 1).."30") > bilDateMuster) then
		checkNot = 1
		SetTask(5986, (bilNowDateMuster - ((tonumber(date("%y")..(checkNot_nowMonth - 1).."30") - bilDateMuster)) + 1))
	end
	
	------------------------------------------------------------------------------ FIX BUG IN MONTH 10.2017 ---------------------------------------------------------------------------------
		if checkNot_nowMonth == 10 and GetTask(5986) <= 170930 then
			SetTask(5986, (bilNowDateMuster - 1))
		end
	------------------------------------------------------------------------------ FIX BUG IN MONTH 10.2017 ---------------------------------------------------------------------------------
	
	bilDateMuster = GetTask(5986)
	
	if (bilDateMuster < bilNowDateMuster - 1) and bilDateMuster ~= 0 then
		local bilMissDayTimes = bilProcMusterDayTimes(bilDateMuster, bilNowDateMuster)
		return Say(_bilTitleLQ.."VÞ ®¹i hiÖp ®· lì mÊt nhÞp ®iÓm danh liªn <enter>tôc cña m×nh, thêi gian ®iÓm danh lÇn tr­íc c¸ch ®©y ®· <color=yellow>"..bilMissDayTimes.."<color> ngµy, nÕu kh«ng ®iÓm danh bï th× sè lÇn ®iÓm <enter>danh míi sÏ b¾t ®Çu l¹i tõ ®Çu!", 3, 
							"Ngµi gióp ta ®iÓm danh bï l¹i c¸c ngµy ®· v¾ng!./bilRecompenseMuster",
							"Th«i, ta muèn ®iÓm danh l¹i tõ ®Çu./bilNewMuster",
							"Ngµi cho ta suy nghÜ l¹i ®·!/OnCancel"
							)
	end
	
	local a = (Bil_GetTask(14) + 1)
	
	if a > 30 then
		if mod(a, 10) == 0 then
			a = (a > getn(_bilTbAwardDailyMuster)) and getn(_bilTbAwardDailyMuster) or a
		else
			a = (a - (floor(a/30) * 30))
		end
	end
	
	if CalcFreeItemCellCount() < getn(_bilTbAwardDailyMuster[a]) then
		return Say(_bilTitleLQ.."§Ó nhËn th­ëng yªu cÇu ®¹i hiÖp h·y s¾p xÕp l¹i hµnh trang cña m×nh, cßn Ýt nhÊt <color=green>"..(getn(_bilTbAwardDailyMuster[a])).." <color>« trèng!",0)
	end
	Bil_SetTask(14, Bil_GetTask(14) + 1)
	Bil_SetTask(15, bilNowDateMuster)
	return bilAward2Player(a)
end

function bilRecompenseMuster()
	local bilMissDayTimes = bilProcMusterDayTimes(Bil_GetTask(15), tonumber(date("%y%m%d")))
	Talk(2, "bilRecompenseMusterInput", _bilTitleLQ.."§¹i hiÖp ®· bá lì mÊt <color=yellow>"..bilMissDayTimes.."<color> lÇn ®iÓm danh, v× <enter>vËy §éc c« minh chñ cÇn thu håi <color=yellow>"..bilMissDayTimes.."<color> <color=fire>Tö thñy tinh<color> ®Ó bï cho sè ngµy ®· bá.", "PhÇn th­ëng cña c¸c ngµy h«m tr­íc ®· bá sÏ kh«ng thÓnhËn l¹i, chØ cã thÓ nhËn phÇn th­ëng cña ngµy h«m <enter>nay th«i!")
end

function bilRecompenseMusterInput()
	local bilTimesLost =  bilProcMusterDayTimes(Bil_GetTask(15), tonumber(date("%y%m%d")))
	return GiveItemUI("§iÓm danh bï "..bilTimesLost.." lÇn","Xin ®Æt "..bilTimesLost.." Tö thñy tinh cho "..bilTimesLost.." lÇn ®iÓm danh bï", "bilRecompenseMusterSure", "OnCancel" );
end

function bilRecompenseMusterSure(bilCount)
	local bilTimesLost =  bilProcMusterDayTimes(Bil_GetTask(15), tonumber(date("%y%m%d")))
	local bilIdxItem
	if bilCount ~= bilTimesLost then
		return Say(_bilTitleLQ.."§éc c« minh chñ chØ cÇn <color=yellow>"..bilTimesLost.."<color><color=fire> Tö thñy tinh!<color>", 2, "Ta nhÇm, ®Ó ta ®Æt l¹i/bilRecompenseMusterInput", "Ah, ta quªn mÊt, ®Ó ta ®i lÊy lÔ vËt./OnCancel")
	end
	for i = 1, bilCount do
		bilIdxItem = GetGiveItemUnit(i)
		bilG, bilD, bilP = GetItemProp(bilIdxItem)
		if bilG ~= 4 and bilD ~= 239 then
			return Say(_bilTitleLQ.."§éc c« minh chñ chØ cÇn <color=yellow>"..bilTimesLost.."<color><color=fire> Tö thñy tinh!<color>", 2, "Ta nhÇm, ®Ó ta ®Æt l¹i/bilRecompenseMusterInput", "Ah, ta quªn mÊt, ®Ó ta ®i lÊy lÔ vËt./OnCancel")
		end
	end
	for i = 1, bilCount do
		bilIdxItem = GetGiveItemUnit(i);
		RemoveItemByIndex(bilIdxItem);
	end
	Bil_SetTask(14, Bil_GetTask(14) + bilCount)
	Bil_SetTask(15, tonumber(date("%y%m%d")))
	return bilAward2Player(Bil_GetTask(14))
end

function bilNewMuster()
	return Say(_bilTitleLQ.."§Ó tiÕn hµnh ®iÓm danh l¹i, toµn bé sè lÇn ®iÓm danh tr­íc ®©y sÏ bÞ xãa bá vµ trë vÒ vÞ trÝ xuÊt ph¸t, cßn rÊt nhiÒu phÇn th­ëng kh«ng thÓ ngê ®Õn ë ®»ng sau ng­¬i kh«ng hèi tiÕc µ?", 2, "Ta ®· suy nghÜ kü, muèn ®iÓm danh l¹i!/bilNewMusterSure", "Ngµi cho ta suy nghÜ l¹i c¸i ®·!/OnCancel")
end

function bilNewMusterSure()
	Bil_SetTask(14, 1)
	Bil_SetTask(15, tonumber(date("%y%m%d")))
	return bilAward2Player(Bil_GetTask(14))
end

function bilMyTimesMuster()
	local a = (Bil_GetTask(14) + 1)
	
	if a > 30 then
		if mod(a, 10) == 0 then
			a = (a > getn(_bilTbAwardDailyMuster)) and getn(_bilTbAwardDailyMuster) or a
		else
			a = (a - (floor(a/30) * 30))
		end
	end
	
	local bilStrItem = ""
	for i = 1, getn(_bilTbAwardDailyMuster[a]) do 
		bilStrItem = bilStrItem.._bilTbAwardDailyMuster[a][i].bilItemName.."\n"
	end
	-- CreateNewSayEx(_bilTitleLQ.."Tæng sè l­ît ®iÓm danh liªn tôc cña ®¹i hiÖp lµ: <color=green>"..bilTimes.."<color>, PhÇn th­ëng cho lÇn ®iÓm danh kÕ tiÕp lµ:<enter><color=yellow>"..bilStrItem.."<color>", {{"Ta biÕt råi!", OnCancel},})
	CreateNewSayEx("<npc>Tæng sè l­ît ®iÓm danh liªn tôc cña ®¹i hiÖp lµ: <color=green>"..(Bil_GetTask(14)).."<color>, PhÇn th­ëng cho lÇn ®iÓm danh kÕ tiÕp lµ:<enter><color=yellow>"..bilStrItem.."<color>", {{"Ta biÕt råi!", OnCancel},})
end

function bilAboutMuster()
	-- CreateNewSayEx(_bilTitleLQ.."§iÓm danh h»ng ngµy sÏ nhËn ®­îc nh÷ng <color=green>phÇn  th­ëng phong phó<color>, cã gi¸ trÞ tõ §éc c« minh chñ, yªu  cÇu ng­êi ®iÓm danh ph¶i <color=yellow>liªn tôc<color> nÕu muèn nhËn phÇn  th­ëng cña ngµy tiÕp theo, nÕu trong ngµy tiÕp theo   kh«ng ®iÓm danh th× <color=yellow>tæng sè l­ît ®iÓm danh ®­îc sÏ b¾t®Çu l¹i tõ ®Çu<color>, §éc c« minh chñ cÇn nh÷ng ng­êi cã <enter>tÝnh kiªn tr× vµ khæ luyÖn!, danh s¸ch c¸c phÇn th­ëng®¹i hiÖp cã thÓ tham kh¶o ë <color=green>CÈm Nang §ång Hµnh<color>.", {{"Ta biÕt råi!", OnCancel},})
	CreateNewSayEx("<npc>§iÓm danh h»ng ngµy sÏ nhËn ®­îc nh÷ng <color=green>phÇn  th­ëng phong phó<color>, cã gi¸ trÞ tõ §éc c« minh chñ, yªu  cÇu ng­êi ®iÓm danh ph¶i <color=yellow>liªn tôc<color> nÕu muèn nhËn phÇn  th­ëng cña ngµy tiÕp theo, nÕu trong ngµy tiÕp theo   kh«ng ®iÓm danh th× <color=yellow>tæng sè l­ît ®iÓm danh ®­îc sÏ b¾t®Çu l¹i tõ ®Çu<color>, §éc c« minh chñ cÇn nh÷ng ng­êi cã <enter>tÝnh kiªn tr× vµ khæ luyÖn!, danh s¸ch c¸c phÇn th­ëng®¹i hiÖp cã thÓ tham kh¶o ë <color=green>CÈm Nang §ång Hµnh<color>.", {{"Ta biÕt råi!", OnCancel},})
end

function OnCancel() end