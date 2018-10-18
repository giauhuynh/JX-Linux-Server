Include("\\script\\missions\\citywar_global\\head.lua");
Include("\\script\\missions\\citywar_city\\head.lua");
Include("\\script\\missions\\clearskill\\clearhole.lua");
Include("\\script\\task\\tollgate\\messenger\\wagoner.lua");  -- NV Tin Sø

Include("\\script\\task\\newtask\\map_index.lua"); -- ÓÃÓÚ»ñÈ¡ÈÎÎñÁ´µØÍ¼µÄÐÅÏ¢
Include("\\script\\task\\tollgate\\messenger\\wagoner.lua") --ÓÃÓÚÁ¬½ÓÌØÊâÐÅÊ¹ÈÎÎñµÄ½Å±¾
Include("\\script\\global\\judgeoffline_special.lua")	--ÓÃÓÚÎÞÃû¹È¡ª¡ªÍÐ¹Ü·þÎñÆ÷µØÍ¼

Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\event\\zhongqiu_jieri\\200909\\rongshu\\head.lua")

Include("\\script\\event\\great_night\\great_night_head.lua")	--Ë«Áú¶´»Æ½ðÖ®ºË
--§iÒu chØnh reset 5h ch¬i - Modified by DinhHQ - 20110630
Include("\\script\\vng_feature\\challengeoftime\\npcNhiepThiTran.lua")

Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_random_map_pos.lua")
Include("\\script\\_missions\\chien_long_dong\\n_leave_map.lua")
Include("\\script\\_missions\\tieu_bang_chien\\api.lua")

szStationOp = 
	{
		"Nh÷ng n¬i ®· ®i qua/WayPointFun", 		-- 1
		"Nh÷ng thµnh thÞ ®· ®i qua/StationFun",		-- 2
		"Trë l¹i ®Þa ®iÓm cò /TownPortalFun", 	-- 3
		"§i Hoa s¬n c¶nh kü tr­êng/go_HSBattle", 	-- 4
		"§i ChiÕn tr­êng c«ng thµnh/GoCityWar",			-- 5
		"§i chiÕn tr­êng huÊn luyÖn/GoDemoWar",		-- 6
		"§i ®¶o TÈy Tñy/GotoClearSkillMap",	-- 7
		"§i ®Õn n¬i lµm nhiÖm vô D· TÈu/tl_moveToTaskMap",			-- 8
		"§i n¬i ®Æc biÖt lµm NhiÖm vô TÝn Sø /messenger_wagoner",      -- 9
		-- "§i ®Õn khu vùc luyÖn c«ng theo cÊp/khuvucluyencongtheocapbyBil4i3n"
		--"È¥ÎÞÃû¹È/GotoAnonymVale"			--10
	};

--Khu vùc luyÖn c«ng theo cÊp bëi Bil4i3n
	-- NhËp m«n Script Lua 4.0 JXL (>.<)
	function khuvucluyencongtheocapbyBil4i3n()
		Say("Xin chän khu vùc luyÖn c«ng cña ®¹i hiÖp, ta sÏ ®­a ngµi ®Õn ®o",9,
			-- "Khu vùc luyÖn c«ng cÊp 10/khuvucluyencongtheocap10",
			"Khu vùc luyÖn c«ng cÊp 90/khuvucluyencongtheocap90",
			"Khu vùc luyÖn c«ng cÊp 80/khuvucluyencongtheocap80",
			"Khu vùc luyÖn c«ng cÊp 70/khuvucluyencongtheocap70",
			"Khu vùc luyÖn c«ng cÊp 60/khuvucluyencongtheocap60",
			"Khu vùc luyÖn c«ng cÊp 50/khuvucluyencongtheocap50",
			"Khu vùc luyÖn c«ng cÊp 40/khuvucluyencongtheocap40",
			"Khu vùc luyÖn c«ng cÊp 30/khuvucluyencongtheocap30",
			"Khu vùc luyÖn c«ng cÊp 20/khuvucluyencongtheocap20",
			"Ket thóc ®èi tho¹i/OnCancel"
		)
	end
							function khuvucluyencongtheocap10()
								Talk(1,"","tõ ®¼ng cÊp <color=green>10<color> ®Õn <color=green>20<color> c¸c nh©n sÜ trªn giang hå hä   ®Òu luyÖn ë <color=yellow>8 th«n trÊn, 7 ®¹i thµnh thÞ<color> vµ chuyªn   t©m tËp luyÖn t¹i <color=yellow>b¶n ®å m«n ph¸i<color> cña m×nh.")
							end
							function khuvucluyencongtheocap20()
								if (GetLevel() >=20) then
									if bilAllowTransFullMapInNPC ~= 1 then
										Say("Khu vùc luyÖn c«ng cÊp <color=green>20<color>",3,
											"La Tiªu s¬n/latieuson",
											"TÇn L¨ng/tanlang",
											"KÕt thóc ®èi tho¹i/OnCancel"
										)
									else
										Say("Khu vùc luyÖn c«ng cÊp <color=green>20<color>",11,
											"La Tiªu s¬n/latieuson",
											"Vu L¨ng s¬n/vulangson",
											"KiÕm C¸c T©y B¾c/kiemcactaybac",
											"TÇn L¨ng/tanlang",
											"M·nh Hæ ®éng/manhhodong",
											"KiÕm C¸c T©y Nam/kiemcactaynam",
											"KiÕm C¸c Trung Nguyªn/kiemcactrungnguyen",
											"B¹ch Thñy ®éng/bachthuydong",
											"Háa Lang ®éng/hoalangdong",
											"Phôc L­u ®éng/phucluudong",
											"KÕt thóc ®èi tho¹i/OnCancel"
										)
									end
								else
									Talk(1,"","Nh×n ®¹i hiÖp ta biÕt ngµi ch­a ®ñ kh¶ n¨ng ra ®ã, nÕu cã mÖnh hÖ g× ta kh«ng g¸nh v¸c næi, ng­êi h·y quay vª luyÖn thªm lªn ®Õn cÊp <color=green>20<color> råi h·y ®Õn ®©y gÆp ta.")
								end
							end
													function kiemcactaybac() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>KiÕm C¸c T©y B¾c<color>")
														NewWorld(3,138*8,231*16);
													end
													function tanlang() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>TÇn L¨ng<color>")
														NewWorld(7,284*8,176*16);
													end
													function manhhodong() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>M·nh Hæ ®éng<color>")
														NewWorld(14,198*8,201*16);
													end
													function kiemcactaynam() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>KiÕm C¸c T©y Nam<color>")
														NewWorld(19,388*8,247*16);
													end
													function kiemcactrungnguyen() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>KiÕm C¸c Trung Nguyªn<color>")
														NewWorld(43,211*8,200*16);
													end
													function vulangson() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Vu L¨ng s¬n<color>")
														NewWorld(70,196*8,199*16);
													end
													function bachthuydong()
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>B¹ch Thñy ®éng<color>")
														NewWorld(71,212*8,189*16);
													end
													function hoalangdong()
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Háa Lang ®éng<color>")
														NewWorld(83,198*8,203*16);
													end
													function latieuson()
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>La Tiªu s¬n<color>")
														NewWorld(179,202*8,205*16);
													end
													function phucluudong()
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Phôc L­u ®éng<color>")
														NewWorld(73,199*8,200*16);
													end
							function khuvucluyencongtheocap30()
								if (GetLevel() >=30) then
									if bilAllowTransFullMapInNPC ~= 1 then
										Say("Khu vùc luyÖn c«ng cÊp <color=green>30<color>",3,
											"Vò Di s¬n/vudison",
											"Thôc C­¬ng s¬n/thuccuongson",
											"KÕt thóc ®èi tho¹i/OnCancel"
										)
									else
										Say("Khu vùc luyÖn c«ng cÊp <color=green>30<color>",13,
											"Vu Di s¬n/vudison",
											"Thôc C­¬ng s¬n/thuccuongson",
											"L¨ng TÇn Thñy Hoµng/langtanthuyhoang",
											"B¹ch V©n ®éng/bachvandong",
											"Miªu LÜnh/mieulinh",
											"YÕn Tö ®éng/yentudong",
											"Phôc Ng­u S¬n §«ng/phucnguusondong",
											"Kho¸i Ho¹t L©m/khoaihoatlam",
											"D­îc V­¬ng ®éng tÇng 1/duocvuongtang1",
											"TuyÕt B¸o ®éng tÇng 1/tuyetbaodong1",
											"Thæ phØ ®éng/thophidong",
											"Kim Quang ®éng/kimquangdong",
											"KÕt thóc ®èi tho¹i/OnCancel"
										)
									end
								else
									Talk(1,"","Nh×n ®¹i hiÖp ta biÕt ngµi ch­a ®ñ kh¶ n¨ng ra ®ã, nÕu cã mÖnh hÖ g× ta kh«ng g¸nh v¸c næi, ng­êi h·y quay vª luyÖn thªm lªn ®Õn cÊp <color=green>30<color> råi h·y ®Õn ®©y gÆp ta.")
								end
							end
													function kimquangdong() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Kim Quang ®éng<color>")
														NewWorld(4,226*8,192*16);
													end
													function langtanthuyhoang() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>L¨ng TÇn Thñy Hoµng<color>")
														NewWorld(8,199*8,218*16);
													end
													function bachvandong() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>B¹ch V©n ®éng<color>")
														NewWorld(22,221*8,209*16);
													end
													function mieulinh() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Miªu LÜnh<color>")
														NewWorld(74,252*8,205*16);
													end
													function yentudong() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>YÕn Tö ®éng<color>")
														NewWorld(77,220*8,214*16);
													end
													function phucnguusondong()
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Phôc Ng­u S¬n §«ng<color>")
														NewWorld(90,205*8,220*16);
													end
													function thuccuongson() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Thôc C­¬ng s¬n<color>")
														NewWorld(92,201*8,202*16);
													end
													function khoaihoatlam() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Kho¸i Ho¹t L©m<color>")
														NewWorld(136,195*8,203*16);
													end
													function duocvuongtang1()
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>D­îc V­¬ng ®éng tÇng 1<color>")
														NewWorld(141,189*8,203*16);
													end
													function tuyetbaodong1() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>TuyÕt B¸o ®éng tÇng 1<color>")
														NewWorld(145,201*8,206*16);
													end
													function thophidong() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Thæ phØ ®éng<color>")
														NewWorld(170,201*8,199*16);
													end
													function vudison()
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Vu Di s¬n<color>")
														NewWorld(193,238*8,176*16);
													end
							function khuvucluyencongtheocap40()
								if (GetLevel() >=40) then
									if bilAllowTransFullMapInNPC ~= 1 then
										Say("Khu vùc luyÖn c«ng cÊp <color=green>40<color>",3,
											"§iÓm Th­¬ng s¬n/diemthuongson",
											"Thanh Thµnh S¬n/thanhthanhson",
											"KÕt thóc ®èi tho¹i/OnCancel"
										)
									else
										Say("Khu vùc luyÖn c«ng cÊp <color=green>40<color>",15,
											"§iÓm Th­¬ng s¬n/diemthuongson",
											"Phôc Ng­u S¬n T©y/phucnguusontay",
											"Thanh Thµnh S¬n/thanhthanhson",
											"Hoµng Hµ Nguyªn §Çu/hoanghanguyendau",
											"Táa V©n ®éng/toavandong",
											"ThÇn Tiªn ®éng/thantiendong",
											"Mª cung Kª Qu¸n ®éng/mecungkequandong",
											"KiÕn TÝnh Phong s¬n ®éng/ktphongsondong",
											"Phông Nh·n ®éng/phungnhandong",
											"§iÓm Th­¬ng ®éng tÇng 1/diemthuongdongtang1",
											"§iÓm Th­¬ng ®éng tÇng 2/diemthuongdongtang2",
											"§iÓm Th­¬ng ®éng tÇng 3/diemthuongdongtang3",
											"Long Cung ®éng/longcungdong",
											"Kinh Hoµng ®éng/kinhhoangdong",
											"KÕt thóc ®èi tho¹i/OnCancel"
										)
									end
								else
									Talk(1,"","Nh×n ®¹i hiÖp ta biÕt ngµi ch­a ®ñ kh¶ n¨ng ra ®ã, nÕu cã mÖnh hÖ g× ta kh«ng g¸nh v¸c næi, ng­êi h·y quay vª luyÖn thªm lªn ®Õn cÊp <color=green>40<color> råi h·y ®Õn ®©y gÆp ta.")
								end
							end
													function kinhhoangdong() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Kinh Hoµng ®éng<color>")
														NewWorld(5,192*8,204*16);
													end
													function toavandong() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Táa V©n ®éng<color>")
														NewWorld(6,205*8,207*16);
													end
													function thanhthanhson() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Thanh Thµnh S¬n<color>")
														NewWorld(21,326*8,279*16);
													end
													function thantiendong()
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>ThÇn Tiªn ®éng<color>")
														NewWorld(23,224*8,210*16);
													end
													function phucnguusontay() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Phôc Ng­u S¬n T©y<color>")
														NewWorld(41,256*8,176*16);
													end
													function mecungkequandong() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Mª cung Kª Qu¸n ®éng<color>")
														NewWorld(91,220*8,175*16);
													end
													function hoanghanguyendau() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Hoµng Hµ Nguyªn §Çu<color>")
														NewWorld(122,201*8,206*16);
													end
													function ktphongsondong() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>KiÕn TÝnh Phong s¬n ®éng<color>")
														NewWorld(135,219*8,199*16);
													end
													function diemthuongson() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>§iÓm Th­¬ng s¬n<color>")
														NewWorld(167,197*8,202*16);
													end
													function phungnhandong()
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Phông Nh·n ®éng<color>")
														NewWorld(168,208*8,207*16);
													end
													function diemthuongdongtang1() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>§iÓm Th­¬ng ®éng tÇng 1<color>")
														NewWorld(171,208*8,194*16);
													end
													function diemthuongdongtang2() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>§iÓm Th­¬ng ®éng tÇng 2<color>")
														NewWorld(172,211*8,190*16);
													end
													function diemthuongdongtang3() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>§iÓm Th­¬ng ®éng tÇng 3<color>")
														NewWorld(173,189*8,203*16);
													end
													function longcungdong() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Long Cung ®éng<color>")
														NewWorld(180,195*8,182*16);
													end
							function khuvucluyencongtheocap50()
								if (GetLevel() >=50) then
									if bilAllowTransFullMapInNPC ~= 1 then
										Say("Khu vùc luyÖn c«ng cÊp <color=green>50<color>",4,
										"Thiªn TÇm th¸p tÇng 1/thientangthap1",
										"ThiÕt th¸p tÇng 1 /thietthap1",
										"Thiªn T©m ®éng/thientamdong",
										"KÕt thóc ®èi tho¹i/OnCancel"
										)
									else
										Say("Khu vùc luyÖn c«ng cÊp <color=green>50<color>",11,
										"Thiªn TÇm th¸p tÇng 1/thientangthap1",
										"Thiªn TÇm th¸p tÇng 2/thientangthap2",
										"ThiÕt th¸p tÇng 1 /thietthap1",
										"ThiÕt th¸p tÇng 2 /thietthap2",
										"ThiÕt th¸p tÇng 3/thietthap3",
										"Thiªn T©m ®éng/thientamdong",
										"§¸y §éng §×nh hå tÇng 1/daydongdinhho1",
										"§¸y §éng §×nh hå tÇng 2/daydongdinhho2",
										"T­êng V©n ®éng tÇng 1 /tuongvandong1",
										"Trang sau/trangsaucap50",
										"KÕt thóc ®èi tho¹i/OnCancel"
										)
									end
								else
										Talk(1,"","Nh×n ®¹i hiÖp ta biÕt ngµi ch­a ®ñ kh¶ n¨ng ra ®ã, nÕu cã mÖnh hÖ g× ta kh«ng g¸nh v¸c næi, ng­êi h·y quay vª luyÖn thªm lªn ®Õn cÊp <color=green>50<color> råi h·y ®Õn ®©y gÆp ta.")
								end
							end
											function trangsaucap50()
												Say("Khu vùc luyÖn c«ng cÊp <color=green>50<color>",10,
												"L­u Tiªn ®éng tÇng 1/luutiendong1",
												"B¨ng HuyÖt ®éng/banghuyetdong",
												"TuyÕt B¸o ®éng tÇng 3/tuyetbaodong3",
												"¸c b¸ ®ia ®¹o/acbadiadao",
												"§ia ®¹o hËu viÖn TÝn T­íng tö/sadaohauvientt",
												"H­ëng Thñy ®éng/huongthuydong",
												"NghiÖt Long ®éng/nghietlongdong",
												"Ngäc Hoa ®éng/ngochoadong",
												"Trang tr­íc/khuvucluyencongtheocap50",
												"KÕt thóc ®èi tho¹i/OnCancel"
												)
											end
													function sadaohauvientt() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>§ia ®¹o hËu viÖn TÝn T­íng tö<color>")
														NewWorld(12,199*8,199*16);
													end
													function huongthuydong() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>H­ëng Thñy ®éng<color>")
														NewWorld(24,221*8,194*16);
													end
													function thietthap1() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>ThiÕt th¸p tÇng 1 <color>")
														NewWorld(38,200*8,200*16);
													end
													function thietthap2() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>ThiÕt th¸p tÇng 2 <color>")
														NewWorld(39,209*8,195*16);
													end
													function thietthap3()
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>ThiÕt th¸p tÇng 3<color>")
														NewWorld(40,209*8,195*16);
													end
													function thientamdong() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Thiªn T©m ®éng<color>")
														NewWorld(42,196*8,191*16);
													end
													function daydongdinhho1() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>§¸y §éng §×nh hå tÇng 1<color>")
														NewWorld(66,235*8,194*16);
													end
													function daydongdinhho2() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>§¸y §éng §×nh hå tÇng 2<color>")
														NewWorld(67,197*8,199*16);
													end
													function tuongvandong1() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>T­êng V©n ®éng tÇng 1 <color>")
														NewWorld(116,200*8,200*16);
													end
													function luutiendong1() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>L­u Tiªn ®éng tÇng 1<color>")
														NewWorld(125,213*8,187*16);
													end
													function banghuyetdong() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>B¨ng HuyÖt ®éng<color>")
														NewWorld(132,210*8,211*16);
													end
													function tuyetbaodong3() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>TuyÕt B¸o ®éng tÇng 3<color>")
														NewWorld(147,203*8,207*16);
													end
													function acbadiadao() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>¸c b¸ ®ia ®¹o<color>")
														NewWorld(163,195*8,200*16);
													end
													function thientangthap1() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Thiªn TÇm th¸p tÇng 1<color>")
														NewWorld(164,201*8,199*16);
													end
													function thientangthap2() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Thiªn TÇm th¸p tÇng 2<color>")
														NewWorld(165,197*8,204*16);
													end
													function nghietlongdong()
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>NghiÖt Long ®éng<color>")
														NewWorld(182,256*8,211*16);
													end
													function ngochoadong()
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Ngäc Hoa ®éng<color>")
														NewWorld(194,198*8,200*16);
													end						
							function khuvucluyencongtheocap60()
								if (GetLevel() >=60) then
									if bilAllowTransFullMapInNPC ~= 1 then
										Say("Khu vùc luyÖn c«ng cÊp <color=green>60<color>",4,
										"Th¸nh ®éng tÇng 1/thanhdong1",
										"Mª cung cÊm ®Þa/mecungcamdia",
										"Hoµnh S¬n Ph¸i/hoanhsonphai",
										"KÕt thóc ®èi tho¹i/OnCancel"
										)
									else
										Say("Khu vùc luyÖn c«ng cÊp <color=green>60<color>",11,
										"Th¸nh ®éng tÇng 1/thanhdong1",
										"Th¸nh ®éng tÇng 2/thanhdong2",
										"Mª cung cÊm ®ia/mecungcamdia",
										"Hoµnh S¬n Ph¸i/hoanhsonphai",
										"MËt ®¹o Nha m«n T­¬ng D­¬ng/matdaotuongduong",
										"108 La H¸n trËn/i108lahantran",
										"T­êng V©n ®éng tÇng 2/tuongvandong2",
										"T­êng V©n ®éng tÇng 3/tuongvandong3",
										"T­êng V©n ®éng tÇng 4/tuongvandong4",
										"Trang sau/trangsaucap60",
										"KÕt thóc ®èi tho¹i/OnCancel"
										)
									end
								else
									Talk(1,"","Nh×n ®¹i hiÖp ta biÕt ngµi ch­a ®ñ kh¶ n¨ng ra ®ã, nÕu cã mÖnh hÖ g× ta kh«ng g¸nh v¸c næi, ng­êi h·y quay vª luyÖn thªm lªn ®Õn cÊp <color=green>60<color> råi h·y ®Õn ®©y gÆp ta.")
								end
							end
										function trangsaucap60()
												Say("Khu vùc luyÖn c«ng cÊp <color=green>60<color>",9,
												"L­u Tiªn ®éng tÇng 2/luutiendong2",
												"L­u Tiªn ®éng tÇng 3/luutiendong3",
												"L­u Tiªn ®éng tÇng 4/luutiendong4",
												"TuyÕt B¸o ®éng tÇng 4/tuyetbaodong4",
												"Tróc T¬ ®éng tÇng 1/tructodong1",
												"Thiªn TÇm th¸p tÇng 3/thientangthap3",
												"D­¬ng Gi¸c ®éng/duonggiacdong",
												"Trang tr­íc/khuvucluyencongtheocap60",
												"KÕt thóc ®èi tho¹i/OnCancel"
												)
											end
													function tructodong1() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Tróc T¬ ®éng tÇng 1<color>")
														NewWorld(26,187*8,208*16);
													end
													function thanhdong1() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Th¸nh ®éng tÇng 1<color>")
														NewWorld(51,220*8,199*16);
													end
													function thanhdong2() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Th¸nh ®éng tÇng 2<color>")
														NewWorld(52,215*8,201*16);
													end
													function hoanhsonphai() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Hoµnh S¬n Ph¸i<color>")
														NewWorld(56,188*8,216*16);
													end
													function matdaotuongduong() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>MËt ®¹o Nha m«n T­¬ng D­¬ng<color>")
														NewWorld(79,219*8,202*16);
													end
													function i108lahantran() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>108 La H¸n trËn<color>")
														NewWorld(114,187*8,207*16);
													end
													function tuongvandong2() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>T­êng V©n ®éng tÇng 2<color>")
														NewWorld(117,200*8,199*16);
													end
													function tuongvandong3() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>T­êng V©n ®éng tÇng 3<color>")
														NewWorld(118,197*8,197*16);
													end
													function tuongvandong4() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>T­êng V©n ®éng tÇng 4<color>")
														NewWorld(119,200*8,199*16);
													end
													function luutiendong2() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>L­u Tiªn ®éng tÇng 2<color>")
														NewWorld(126,197*8,201*16);
													end
													function luutiendong3() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>L­u Tiªn ®éng tÇng 3<color>")
														NewWorld(127,202*8,192*16);
													end
													function luutiendong4() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>L­u Tiªn ®éng tÇng 4<color>")
														NewWorld(128,198*8,199*16);
													end
													function tuyetbaodong4() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>TuyÕt B¸o ®éng tÇng 4<color>")
														NewWorld(148,200*8,201*16);
													end
													function mecungcamdia()
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Mª cung cÊm ®ia<color>")
														NewWorld(158,194*8,196*16);
													end
													function thientangthap3() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Thiªn TÇm th¸p tÇng 3<color>")
														NewWorld(166,207*8,202*16);
													end
													function duonggiacdong() 
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>D­¬ng Gi¸c ®éng<color>")
														NewWorld(196,209*8,191*16);
													end
							function khuvucluyencongtheocap70() 
								if (GetLevel() >=70) then
									if bilAllowTransFullMapInNPC ~= 1 then
										Say("Khu vùc luyÖn c«ng cÊp <color=green>70<color>",4,
										"L©m Du Quan/lamduquang",
										"Tr­êng Giang Nguyªn §Çu/truonggiangnguyendau",
										"D­îc V­¬ng ®éng tÇng 2/duocvuongtang2",
										"KÕt thóc ®èi tho¹i/OnCancel"
										)
									else
										Say("Khu vùc luyÖn c«ng cÊp <color=green>70<color>",15,
										"L©m Du Quan/lamduquang",
										"Tr­êng Giang Nguyªn §Çu/truonggiangnguyendau",
										"§µo Hoa Nguyªn/daohoanguyen",
										"Tróc T¬ ®éng tÇng 2/tructodong2",
										"§¹i Tï ®éng/daitudong",
										"S¬n B¶o ®éng/sonbaodong",
										"Linh Cèc ®éng/linhcocdong",
										"T­êng V©n ®éng tÇng 5/tuongvandong5",
										"L·o Hæ ®éng/laohodong",
										"L­u Tiªn ®éng tÇng 5/luutiendong5",
										"L­u Tiªn ®éng tÇng 6/luutiendong6",
										"D­îc V­¬ng ®éng tÇng 2/duocvuongtang2",
										"Long Nh·n ®éng/longnhandong",
										"TÇn L¨ng tÇng 2/tanglangtang2",
										"KÕt thóc ®èi tho¹i/OnCancel"
										)
									end
								else
									Talk(1,"","Nh×n ®¹i hiÖp ta biÕt ngµi ch­a ®ñ kh¶ n¨ng ra ®ã, nÕu cã mÖnh hÖ g× ta kh«ng g¸nh v¸c næi, ng­êi h·y quay vª luyÖn thªm lªn ®Õn cÊp <color=green>70<color> råi h·y ®Õn ®©y gÆp ta.")
								end							
							end
													function truonggiangnguyendau() 
														if(bilRandomMapsPos:Main(9)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Tr­êng Giang Nguyªn §Çu<color>")
														NewWorld(9,295*8,351*16);
													end
													function tructodong2() 
														if(bilRandomMapsPos:Main(27)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Tróc T¬ ®éng tÇng 2<color>")
														NewWorld(27,191*8,200*16);
													end
													function daohoanguyen() 
														if(bilRandomMapsPos:Main(55)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>§µo Hoa Nguyªn<color>")
														NewWorld(55,199*8,199*16);
													end
													function daitudong() 
														if(bilRandomMapsPos:Main(72)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>§¹i Tï ®éng<color>")
														NewWorld(72,207*8,180*16);
													end
													function sonbaodong() 
														if(bilRandomMapsPos:Main(76)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>S¬n B¶o ®éng<color>")
														NewWorld(76,217*8,195*16);
													end
													function linhcocdong() 
														if(bilRandomMapsPos:Main(94)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Linh Cèc ®éng<color>")
														NewWorld(94,219*8,194*16);
													end
													function tuongvandong5() 
														if(bilRandomMapsPos:Main(120)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>T­êng V©n ®éng tÇng 5<color>")
														NewWorld(120,201*8,199*16);
													end
													function laohodong() 
														if(bilRandomMapsPos:Main(123)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>L·o Hæ ®éng<color>")
														NewWorld(123,212*8,209*16);
													end
													function luutiendong5() 
														if(bilRandomMapsPos:Main(129)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>L­u Tiªn ®éng tÇng 5<color>")
														NewWorld(129,207*8,208*16);
													end
													function luutiendong6() 
														if(bilRandomMapsPos:Main(130)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>L­u Tiªn ®éng tÇng 6<color>")
														NewWorld(130,197*8,200*16);
													end
													function duocvuongtang2()
														if(bilRandomMapsPos:Main(142)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>D­îc V­¬ng ®éng tÇng 2<color>")
														NewWorld(142,184*8,203*16);
													end
													function longnhandong() 
														if(bilRandomMapsPos:Main(169)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Long Nh·n ®éng<color>")
														NewWorld(169,200*8,201*16);
													end
													function tanglangtang2() 
														if(bilRandomMapsPos:Main(206)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>TÇn L¨ng tÇng 2<color>")
														NewWorld(206,202*8,202*16);
													end
													function lamduquang()
														if(bilRandomMapsPos:Main(319)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>L©m Du Quan<color>")
														NewWorld(319,201*8,225*16);
													end
							function khuvucluyencongtheocap80() 
								if (GetLevel() >=80) then
									if bilAllowTransFullMapInNPC ~= 1 then
										Say("Khu vùc luyÖn c«ng cÊp <color=green>80<color>",5,
										"Sa m¹c ®ia biÓu/samacdiabieu",
										"Ch©n nói Tr­êng B¹ch/channuitruongbach",
										"B¨ng Hµ ®éng/banghadong",
										"D­îc V­¬ng ®éng tÇng 3/duocvuongtang3",
										"KÕt thóc ®èi tho¹i/OnCancel"
										)
									else
										Say("Khu vùc luyÖn c«ng cÊp <color=green>80<color>",15,
										"Sa m¹c ®ia biÓu/samacdiabieu",
										"Ch©n nói Tr­êng B¹ch/channuitruongbach",
										"B¨ng Hµ ®éng/banghadong",
										"Nh¹n Th¹ch ®éng/nhanthachdong",
										"D­îc V­¬ng ®éng tÇng 3/duocvuongtang3",
										"TuyÕt B¸o ®éng tÇng 7/tuyetbaodong7",
										"L­¬ng Thñy ®éng/luongthuydong",
										"Thanh khª ®éng/thanhkhedong",
										"Vu L¨ng ®éng/vulangdong",
										"Phï Dung ®éng/phudungdong",
										"V« Danh ®éng/vodanhdong",
										"Phi Thiªn ®éng/phithiendong",
										"D­¬ng Trung ®éng/duongtrungdong",
										"TÇn L¨ng tÇng 3/tanglangtang3",
										"KÕt thóc ®èi tho¹i/OnCancel"
										)
									end
								else
									Talk(1,"","Nh×n ®¹i hiÖp ta biÕt ngµi ch­a ®ñ kh¶ n¨ng ra ®ã, nÕu cã mÖnh hÖ g× ta kh«ng g¸nh v¸c næi, ng­êi h·y quay vª luyÖn thªm lªn ®Õn cÊp <color=green>80<color> råi h·y ®Õn ®©y gÆp ta.")
								end							
							end
													function nhanthachdong() 
														if(bilRandomMapsPos:Main(10)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Nh¹n Th¹ch ®éng<color>")
														NewWorld(10,201*8,201*16);
													end
													function duocvuongtang3() 
														if(bilRandomMapsPos:Main(143)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>D­îc V­¬ng ®éng tÇng 3<color>")
														NewWorld(143,202*8,197*16);
													end
													function tuyetbaodong7() 
														if(bilRandomMapsPos:Main(151)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>TuyÕt B¸o ®éng tÇng 7<color>")
														NewWorld(151,200*8,201*16);
													end
													function luongthuydong() 
														if(bilRandomMapsPos:Main(181)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>L­¬ng Thñy ®éng<color>")
														NewWorld(181,229*8,197*16);
													end
													function thanhkhedong() 
														if(bilRandomMapsPos:Main(198)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Thanh khª ®éng<color>")
														NewWorld(198,190*8,184*16);
													end
													function vulangdong() 
														if(bilRandomMapsPos:Main(199)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Vu L¨ng ®éng<color>")
														NewWorld(199,202*8,183*16);
													end
													function banghadong() 
														if(bilRandomMapsPos:Main(201)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>B¨ng Hµ ®éng<color>")
														NewWorld(201,201*8,199*16);
													end
													function phudungdong() 
														if(bilRandomMapsPos:Main(202)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Phï Dung ®éng<color>")
														NewWorld(202,221*8,175*16);
													end
													function vodanhdong() 
														if(bilRandomMapsPos:Main(203)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>V« Danh ®éng<color>")
														NewWorld(203,193*8,187*16);
													end
													function phithiendong() 
														if(bilRandomMapsPos:Main(204)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Phi Thiªn ®éng<color>")
														NewWorld(204,205*8,212*16);
													end
													function duongtrungdong() 
														if(bilRandomMapsPos:Main(205)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>D­¬ng Trung ®éng<color>")
														NewWorld(205,210*8,211*16);
													end
													function tanglangtang3() 
														if(bilRandomMapsPos:Main(207)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>TÇn L¨ng tÇng 3<color>")
														NewWorld(207,198*8,200*16);
													end
													function samacdiabieu() 
														if(bilRandomMapsPos:Main(224)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Sa m¹c ®ia biÓu<color>")
														NewWorld(224,202*8,200*16);
													end
													function channuitruongbach() 
														if(bilRandomMapsPos:Main(320)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Ch©n nói Tr­êng B¹ch<color>")
														NewWorld(320,143*8,195*16);
													end
							function khuvucluyencongtheocap90() 
								if (GetLevel() >=90) then
									Say("Khu vùc luyÖn c«ng <color=yellow>cao cÊp<color>",11,
									"M¹c Cao QuËt/maccaoquat",
									"Tr­êng B¹ch s¬n Nam /truongbachsonnam",
									"Tr­êng B¹ch s¬n B¾c/truongbachsonbac",
									"Phong L¨ng ®é/phonglangdo",
									"Sa M¹c 1/samac1",
									"Sa M¹c 2/samac2",
									"Sa M¹c 3/samac3",
									"Kháa Lang ®éng/khoalangdong",
									"TiÕn Cóc ®éng/tiencucdong",
									-- "C¸n Viªn ®éng/canviendong",
									"D­îc V­¬ng ®éng tÇng 4/duocvuongtang4",
									-- "TuyÕt B¸o ®éng tÇng 8/tuyetbaodong8",
									-- "H¾c Sa ®éng/hacsadong",
									"KÕt thóc ®èi tho¹i/OnCancel"
									)
								else
									Talk(1,"","Nh×n ®¹i hiÖp ta biÕt ngµi ch­a ®ñ kh¶ n¨ng ra ®ã, nÕu cã mÖnh hÖ g× ta kh«ng g¸nh v¸c næi, ng­êi h·y quay vª luyÖn thªm lªn ®Õn cÊp <color=green>90<color> råi h·y ®Õn ®©y gÆp ta.")
								end
							end
													function khoalangdong() 
														if(bilRandomMapsPos:Main(75)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Kháa Lang ®éng<color>")
														NewWorld(75,226*8,188*16);
													end
													function tiencucdong() 
														if(bilRandomMapsPos:Main(93)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>TiÕn Cóc ®éng<color>")
														NewWorld(93,211*8,188*16);
													end
													function canviendong() 
														if(bilRandomMapsPos:Main(124)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>C¸n Viªn ®éng<color>")
														NewWorld(124,210*8,212*16);
													end
													function duocvuongtang4() 
														if(bilRandomMapsPos:Main(144)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>D­îc V­¬ng ®éng tÇng 4<color>")
														NewWorld(144,200*8,195*16);
													end
													function tuyetbaodong8() 
														if(bilRandomMapsPos:Main(152)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>TuyÕt B¸o ®éng tÇng 8<color>")
														NewWorld(152,209*8,210*16);
													end
													function samac1() 
														if(bilRandomMapsPos:Main(225)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Sa M¹c 1<color>")
														NewWorld(225,184*8,204*16);
													end
													function samac2() 
														if(bilRandomMapsPos:Main(226)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Sa M¹c 2<color>")
														NewWorld(226,195*8,199*16);
													end
													function samac3() 
														if(bilRandomMapsPos:Main(227)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Sa M¹c 3<color>")
														NewWorld(227,198*8,202*16);
													end
													function truongbachsonnam() 
														if(bilRandomMapsPos:Main(321)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Tr­êng B¹ch s¬n Nam <color>")
														NewWorld(321,121*8,145*16);
													end
													function truongbachsonbac() 
														if(bilRandomMapsPos:Main(322)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Tr­êng B¹ch s¬n B¾c<color>")
														NewWorld(322,198*8,197*16);
													end
													function maccaoquat() 
														if(bilRandomMapsPos:Main(340)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>M¹c Cao QuËt<color>")
														NewWorld(340,230*8,214*16);
													end
													function hacsadong() 
														if(bilRandomMapsPos:Main(875)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>H¾c Sa ®éng<color>")
														NewWorld(875,197*8,198*16);
													end
													function phonglangdo() 
														if(bilRandomMapsPos:Main(336)) then return end
														SetFightState(1)
														Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn <color=green>Phong L¨ng ®é<color>")
														NewWorld(336,140*8,199*16);
													end
	-- NhËp m«n Script Lua JXL (>.<)
	
	
function return_1()
	return 1
end

function return_0()
	return 0
end

-- ¶ÔÓ¦ÉÏ¸öÊý×éµÄÌõ¼þÅÐ¶Ï
aryCondition = {

	[1] = {checkState = return_1},     -- Â·¾­µÄµØ·½
	[2] = {checkState = return_1},     -- Â·¾­µÄ³ÇÊÐ
	[3] = {checkState = return_1},     -- ·µ»ØµÄµØµã
	[4] = {checkState = return_1},     -- È¥»ªÉ½¾º¼¼³¡
	[5] = {checkState = function()                      -- È¥¹¥³ÇÕ½³¡
				return (WhichWarBegin()~= 0 and 1) or 0;
		   end;
		  },
	[6] = {checkState = function()                      -- È¥¹¥³ÇÑµÁ·Õ½³¡
				return (GetGlbValue(2)==1 and 1) or 0;
		   end;
		  },
	[7] = {checkState = return_1},     -- È¥Ï´Ëèµº
	[8] = {checkState = function()                      -- È¥Ò°ÛÅÈÎÎñËùÔÚµØ
				return (GetTask(1021)==4 and 1) or 0;
		   end;
		  },
	[9] = {checkState = function()                      -- È¥ÌØÊâÐÅÊ¹ÈÎÎñËùÔÚµØµã
				return (GetTask(1204)~= 0 and 1) or 0;
		   end;
		  },
	--[10] = {checkState = return_1},    -- ½øÈëÎÞÃû¹È
	[10] = {checkState = return_1},     -- Â·¾­µÄµØ·½
	[11] = {checkState = return_1},
	[12] = {checkState = return_1},
}

szStationOp_Cancel = "Kh«ng cÇn ®©u/StationOnCancel";

function go_HSBattle()
	Msg2Player("Ngåi ch¾c nhÐ! Chóng ta ®i ®Õn Hoa s¬n c¶nh kü tr­êng")
	NewWorld(2,2605,3592)
end

function WayPointFun()			-- ¼Ó·µ»ØÒª800Á½Òø×Ó£¨¶´¿Ú£©¡¡¡¡¡¡£¨BY£º Dan_Deng 2004-04-30£©
	p1 = GetWayPoint(1);
	p2 = GetWayPoint(2);
	p3 = GetWayPoint(3);
	HaveBin={};
	i = 1;
	if (p1 ~= 0)  then
		name = GetWayPointName(p1);
		name = name .."/SelWayPoint";
		HaveBin[i]= name;
		i = i + 1;
	end;
	if (p2 ~= 0)  then
		name = GetWayPointName(p2);
		name = name .."/SelWayPoint";
		HaveBin[i]= name;
		i = i + 1;
	end;
	if (p3 ~= 0)  then
		name = GetWayPointName(p3);
		name = name .."/SelWayPoint";
		HaveBin[i]= name;
		i = i + 1;
	end;
	HaveBin[i] = "Kh«ng ®i ®©u c¶ /OnCancel";
	if (i == 1) then 
		Say("Xin lçi!  Ta chØ cã thÓ ®­a ng­¬i ®Õn nh÷ng n¬i ®· ®i qua nh­ng ng­¬i ch­a ®i ®©u c¶! ",0);
	else
		Say("Xin lùa chän: ", i, HaveBin);
	end;
end;

function WharfFun()
Count = GetWharfCount(CurWharf);
Num = Count;

WharfB = {};
nValidCount = 1;

for i = 1, Num do
WharfId = GetWharf(CurWharf, i);
if (WharfId ~= 0) then
	nPrice = GetWharfPrice(CurWharf, WharfId);
	WharfB[nValidCount] = GetWharfName(WharfId) .. "[" .. nPrice .. " l­îng]" .. "/SelWharf";
	nValidCount = nValidCount + 1;
end;
end;

WharfB[nValidCount] = "Kh«ng ngåi/OnCancel";

if (nValidCount == 1) then 
Say("Xin lçi!  Ng­¬i ch­a ®i ®©u c¶! ", 0);
else
Say("Kh¸ch quan muèn ®i ®©u?", nValidCount, WharfB);
end;

end;

function SelWharf(nSel)

nWharfId = GetWharf( CurWharf, nSel + 1);
nPrice = 0;
if (nWharfId ~= 0) then 
	nPrice = GetWharfPrice(CurWharf, nWharfId);
else
	return
end;

if (PrePay(nPrice) == 1 or GetCamp() == 6 ) then
Msg2Player("Ngåi yªn ch­a? Chóng ta ®i "..GetWharfName(nWharfId))
nW , nX, nY = GetWharfPos(nWharfId);
nResult = NewWorld(nW, nX , nY );
if (nResult == 2) then
Msg2Player("§ang chuyÓn ®æi Server...")
end
if (nResult == 0) then
Msg2Player("NhËp ®iÓm cã sai sãt!")
end
else
Say("Kh«ng tiÒn kh«ng thÓ ngåi thuyÒn", 0);
end;
end;


function StationFun()
	for j = 1, 16 do
		AddStation(j)
	end
	Count = GetStationCount();
	Num = Count;
	if (Count > 10) then
		Num = 10
	end
	StationB = {}
	nValidCount = 1

	for i = 1, Num do
		StationId = GetStation(i, CurStation)
		if (StationId ~= 0) then
			nPrice = GetPrice2Station(CurStation, StationId)
			StationB[nValidCount] = GetStationName(StationId) .. "[" .. nPrice .. " l­îng]" .. "/SelStation"
			nValidCount = nValidCount + 1
		end
	end
	StationB[nValidCount] = "Kh«ng ®i ®©u c¶ /OnCancel";

	if (nValidCount == 1) then 
		Say("Xin lçi!  Ta chØ cã thÓ ®­a ng­¬i ®Õn nh÷ng n¬i ®· ®i qua nh­ng ng­¬i ch­a ®i ®©u c¶! ", 0);
	else
		Say("Xin lùa chän: ", nValidCount, StationB);
	end
end

function SelStation(nSel)
	Count = GetStationCount()
	nStation = GetStation(nSel + 1, CurStation)
	nPrice = GetPrice2Station(CurStation, nStation)
	if (PrePay(nPrice) == 1 or GetCamp() == 6) then
		nW, nX, nY = GetStationPos(nStation);
		nResult = NewWorld(nW, nX , nY );
		Msg2Player("Ngåi yªn ch­a? Chóng ta ®i "..GetStationName(nStation))
		if (nResult == 2) then
			--Msg2Player("·þÎñÆ÷×ª»»ÖÐ...")
		end
		if (nResult == 0) then
			Msg2Player("NhËp ®iÓm cã sai sãt!")
		end
	--§iÒu chØnh reset 5h ch¬i - Modified by DinhHQ - 20110630
	local nSongJinCount = PlayerFunLib:GetTaskDailyCount(1926)
	if nSongJinCount >= 1 or tbCOT_Party:GetDailyTaskCount() >= 1 then
		-- SetTireTime(0)
	end

	else
		Say("Kh«ng tiÒn kh«ng thÓ ngåi xe! ", 0)
	end
end

function TownPortalFun()			-- ·µ»ØÒª2000Á½Òø×Ó£¨Ô­µØµã£©¡¡¡¡£¨BY: Dan_Deng 2004-04-30£©
--	if (PrePay(2000) == 1 or GetCamp() == 6) then
		ReturnFromPortal()
--	else
--		Say("²»ºÃÒâË¼£¬Ã»Ç®¿É×ø²»ÁË³µ£¬Äú»¹ÊÇ×ßÈ¥°É£¡", 0)
--	end
end;

function SelWayPoint(nSel)			-- ·µ»ØÒª1000Á½Òø×Ó£¨¶´¿Ú£©¡¡¡¡¡¡£¨BY£ºDan_Deng 2004-04-30£©
--	if (PrePay(1000) == 1 or GetCamp() == 6) then
		nWayPoint = GetWayPoint(nSel + 1);
		if (nWayPoint ~= 0) then
			nW, nX, nY = GetWayPointPos(nWayPoint)
			nFightState = GetTerminiFState(nWayPoint)
			nResult = NewWorld(nW, nX, nY)
			SetFightState(nFightState)
--			Msg2Player("Goto"..GetWayPointName(nWayPoint)..nW..nX..nY);
			if (nResult == 2) then
--				Msg2Player("·þÎñÆ÷×ª»»ÖÐ...")
			end
			if (nResult == 0) then
--				Msg2Player("´«ÈëµãÓÐ´íÎó.")
			end
		end;
--	else									-- ²»¹»Ç®¾Í¾Ü¾ø
--		Say("²»ºÃÒâË¼£¬Ã»Ç®¿É×ø²»ÁË³µ£¬Äú»¹ÊÇ×ßÈ¥°É£¡", 0);
--	end;
end

--³ÇÕ½ÊÇ·ñ¿ªÊ¼ÁË
function WhichWarBegin()
	for i = 1,7 do
		if (HaveBeginWar(i) ~= 0) then
			return i;
		end;
	end;
	return 0;
end;

function CancelGoCityWar()
	Say("ChiÕn tr­êng §ao KiÕm v« t×nh!  Xin nghÜa sÜ h·y quay vÒ ®Ó b¶o toµn tÝnh m¹ng", 0);
end;

Bil_TB_CITYWAR_ARRANGE =
 {
	{3,4, "Ph­îng T­êng"},--
	{1,2, "Thµnh §«"},--
	{2,3, "§¹i Lý"},--
	{5,6, "BiÖn Kinh"},--
	{4,5, "T­¬ng D­¬ng"},--
	{0,1, "D­¬ng Ch©u"},--
	{6,0, "L©m An"},--
}	

function Bil_GetNameCityWithnnCan1To7(ncan)
	return Bil_TB_CITYWAR_ARRANGE[ncan][3];
end

function GoCityWar()
	CityID = WhichWarBegin();
	if (CityID >= 1 and CityID <= 7) then
		Tong1, Tong2 = GetCityWarBothSides(CityID);
		str = format("HiÖn t¹i <color=green>%s<color> ®ang tiÕn hµnh c«ng thµnh chiÕn,<enter>Bang c«ng thµnh: <color=yellow>%s<color><enter>Bang thñ thµnh: <color=yellow>%s<color><enter><enter>xin hái ng­¬i muèn tham chiÕn bªn nµo?", Bil_GetNameCityWithnnCan1To7(CityID), Tong1, Tong2);
		Say(str , 3, "Bªn c«ng/GoCityWarAttack", "Bªn thñ /GoCityWarDefend", "Kh«ng bªn nµo hÕt/CancelGoCityWar");
	end;
end;

--È¥¹¥³ÇÕ½ÊØ·½Èë¿Ú
function GoCityWarDefend()
	CityID = WhichWarBegin();
	if (CityID == 0 ) then 
		return
	end;
	TongName, result = GetTong()
	Tong1, Tong2 = GetCityWarBothSides(CityID);
	if (Tong2 ~= TongName and GetItemCountEx(CardTab[CityID * 2]) < 1) then 
		if (GetTask(TV_CITYID) ~= CityID or GetTask(TV_VALUE) ~= 1 or GetTask(TV_TASKID) ~= MISSIONID) then
			Say("Th©n phËn nghÜa sÜ ch­a phï hîp!  T¹i h¹ kh«ng d¸m m¹o muéi ®­a vµo!  Xin nghÜa sÜ quay vÒ! ", 0);
			return
		end;
	end;
	
	if (random(0,1) == 1) then
		NewWorld(222, 1614, 3172);
	else
		NewWorld(222, 1629, 3193);
	end;
end;

--È¥¹¥³ÇÕ½¹¥·½Èë¿Ú
function GoCityWarAttack()
	CityID = WhichWarBegin();
	if (CityID == 0) then 
		return
	end;
	TongName, result = GetTong()
	Tong1, Tong2 = GetCityWarBothSides(CityID);
	if (Tong1 ~= TongName and GetItemCountEx(CardTab[CityID * 2 - 1]) < 1) then
		if (GetTask(TV_CITYID) ~= CityID or GetTask(TV_VALUE) ~= 2 or GetTask(TV_TASKID) ~= MISSIONID) then
			Say("Th©n phËn nghÜa sÜ ch­a phï hîp!  T¹i h¹ kh«ng d¸m m¹o muéi ®­a vµo!  Xin nghÜa sÜ quay vÒ! ", 0);
			return
		end
	end
	
	if (random(0,1) == 1) then
		NewWorld(223, 1614, 3172);
	else
		NewWorld(223, 1629, 3193);
	end;

end;

function GoDemoWar()
	Say("C«ng thµnh ®ang s¾p b¾t ®Çu!  Ng­¬i cã muèn tham gia kh«ng?", 3,"Ta tham gia bªn thñ!/GotoDefend", "Ta tham gia bªn c«ng/GotoAttack", "Ch­a chuÈn bÞ tèt, lÇn sau ®i!/OnCancel") 
end;

function GotoDefend()
if (random(0,1) == 1) then
	NewWorld(222, 1614, 3172);
else
	NewWorld(222, 1629, 3193);
end;
end;

function GotoAttack()
	if (random(0,1) == 1) then
		NewWorld(223, 1614, 3172);
	else
		NewWorld(223, 1629, 3193);
	end;
end;

-- È¥Ï´µãµØÍ¼
function GotoClearSkillMap()
	-- ÔÝÊ±ÆÁ±ÎÈ¥Ï´µãµØÍ¼µÄ¹¦ÄÜ
	-- Say("³µ·ò£ºÃâ·ÑÈ¥Ï´ËèµºµÄ»ú»áÖ»ÓÐÒ»´Î¡£Äã×îºÃ»¹ÊÇÏÈÊìÏ¤Ò»ÏÂÕâ´ÎµÄ¼¼ÄÜµ÷Õû£¬³ÙÒ»µãÔÙÈ¥°É¡£", 1, "ÖªµÀÁË/gotocsm_no")

	nSubWorldID = SubWorldIdx2ID();
	nCityIndex = CSP_GetCityIndexByCityMap(nSubWorldID);
	if (nCityIndex == -1) then
		return -1;
	end
	
	CSP_EnterClearMap(nCityIndex);	
end;

function gotocsm_no()
end;

function OnCancel()
end;

function goto_shijiangu()
	NewWorld(949, floor(51264 / 32), floor(102368 / 32))
end

function _GoELangGu()
	Msg2Player("§· ®Õn ¸c Lang Cèc!")
	local tbTargetMapList = {[11] = 950, [1] = 951, [37] = 952, 
										[176] = 953, [162] = 954, [78] = 955, [80] = 956,}
	local nMapId = GetWorldPos()
	if tbTargetMapList[nMapId] then
 		NewWorld(tbTargetMapList[nMapId], 1592, 3195)
 	end
end

CITY_OPTIONS =
{
	{"Nh÷ng n¬i ®· ®i qua", 				WayPointFun}, 			-- 1
	{"Nh÷ng thµnh thÞ ®· ®i qua",				StationFun},			-- 2
	{"Trë l¹i ®Þa ®iÓm cò ",				TownPortalFun}, 		-- 3
	{"§i Hoa s¬n c¶nh kü tr­êng",			go_HSBattle}, 			-- 4
	{"§i ChiÕn tr­êng c«ng thµnh",				GoCityWar},				-- 5
	{"§i chiÕn tr­êng huÊn luyÖn",			GoDemoWar},				-- 6
	{"§i ®¶o TÈy Tñy",				GotoClearSkillMap},		-- 7
	{"§i ®Õn n¬i lµm nhiÖm vô D· TÈu",		tl_moveToTaskMap},		-- 8
	{"§i n¬i ®Æc biÖt lµm NhiÖm vô TÝn Sø ",	messenger_wagoner},     -- 9
	-- {"§i ®Õn khu vùc luyÖn c«ng theo cÊp",				khuvucluyencongtheocapbyBil4i3n},
	--"È¥ÎÞÃû¹È",				GotoAnonymVale"			--10
	--{"Xin h·y ®­a ta ®Õn ChiÕn Long §éng",		OnGoToNewLiangShuiDong},-- 10
	--{"§i ThÝ LuyÖn Cèc",				goto_shijiangu},		-- 11
	--{"§i ¸c Lang Cèc",				_GoELangGu},
}

function CityStationCommon(szMsg)	
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end

	local tbDailog = DailogClass:new(szNpcName)
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog)
	tbDailog.szTitleMsg = "<npc>"..szMsg

	if m_TieuBangChien:api_Station(1) then
		tbDailog:AddOptEntry("§i ®Õn b¶n ®å Tiªu Bang ChiÕn", m_TieuBangChien.api_Station, {m_TieuBangChien})
	end
	
	if m_ChienLongDong:IsOpen() then
		tbDailog:AddOptEntry("§i ®Õn b¶n ®å ChiÕn Long §éng", m_ChienLongDong_nJoinMap)
	end
	
	for i = 1, getn(CITY_OPTIONS) do
		local tb = CITY_OPTIONS[i]
		if aryCondition[i].checkState() == 1 then
			tbDailog:AddOptEntry(tb[1], tb[2])
		end
	end
	tbDailog:Show()
end;

function NewcomerStationCommon(szMsg)
	if bilCheckDuaTop:FuncMain() then
		return
	end
--	check_update()					-- ¼¼ÄÜ¸üÐÂ¡¢ÃÅÅÉ¼Ó±êÊ¶£¨2004-05-31£©
	if (GetLevel() >= 5) then
		if (WhichWarBegin() ~= 0) then
			Say(szMsg, 6, szStationOp[1], szStationOp[2], szStationOp[3], szStationOp[10], szStationOp[5], szStationOp_Cancel)
		elseif (GetGlbValue(2) == 1) then -- ¹¥³ÇÑµÁ·Õ½³¡
			Say(szMsg, 6, szStationOp[1], szStationOp[2], szStationOp[3], szStationOp[10], szStationOp[6], szStationOp_Cancel)
		else
			if (GetTask(1021) == 4) then -- Èç¹û½ÓÊÜÁËÒ°ÛÅÈÎÎñÖÐÑ°ÕÒµØÍ¼Ö¾µÄÈÎÎñ
				Say(szMsg, 6, szStationOp[1], szStationOp[2], szStationOp[3], szStationOp[10], szStationOp[8], szStationOp_Cancel)
			else
				Say(szMsg, 5, szStationOp[1], szStationOp[2], szStationOp[3], szStationOp[10], szStationOp_Cancel)
			end
		end;
	else		
		Talk(1,"","Bªn ngoµi rÊt lo¹n l¹c, xem bé d¹ng kh«ng c¶n ®­îc giã cña ng­¬i th× khã mµ b¶o toµn tÝnh m¹ng! ")
	end
end;

function  StationOnCancel()
   Talk(1,"","Cã tiÒn th× h·y quay l¹i nhÐ! ")
end;

----------------------------------------------

CP_MAPPOS_IN = {1508,3026}
CP_MAPTAB = {
				{396, 397, "ThiÕu L©m"},
				{398, 399, "Thiªn V­¬ng"},
				{400, 401, "§­êng M«n"},
			 	{402, 403, "Ngò §éc"},
			 	{404, 405, "Nga Mi"},
			 	{406, 407, "Thóy Yªn"},
			 	{408, 409, "C¸i Bang"},
			 	{410, 411, "Thiªn NhÉn"},
			 	{412, 413, "Vâ §ang"},
			 	{414, 415, "C«n L«n"}
			 }

function transtoplace()
	Say("Héi tr­êng thi ®Êu vâ l©m 'KiÖt xuÊt' sÏ tiÕn hµnh trËn ®Êu c¸c m«n ph¸i, ng­¬i muèn vµo kh«ng?", 2, "Ta muèn vµo khu vùc thi ®Êu thi ®Êu 'KiÖt xuÊt'/transtoplace_sure", "§îi mét l¸t ®i!/OnCancel")
end

function transtoplace_sure()

	if (GetLastFactionNumber() == -1) then
		Say("Vâ l©m minh chñ cã lÖnh: Gi¶i thi ®Êu 'KiÖt xuÊt' cña vâ l©m m«n ph¸i chØ h¹n chÕ cho 10 ®¹i m«n ph¸i tham gia. Ng­¬i kh«ng cã m«n ph¸i nµo hÕt trong vâ l©m, kh«ng thÓ tïy tiÖn tham gia ®­îc, mau gia nhËp thËp ®¹i m«n ph¸i, råi ®Õn ®¨ng ký sau!", 0)
		return
	else
		if(GetLastFactionNumber() == 0) then
			NewWorld(CP_MAPTAB[1][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--ÉÙÁÖ
		elseif (GetLastFactionNumber() == 1) then
			NewWorld(CP_MAPTAB[2][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--ÌìÍõ
		elseif (GetLastFactionNumber() == 2) then
			NewWorld(CP_MAPTAB[3][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--ÌÆÃÅ
		elseif (GetLastFactionNumber() == 3) then
			NewWorld(CP_MAPTAB[4][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--Îå¶¾
		elseif (GetLastFactionNumber() == 4) then
			NewWorld(CP_MAPTAB[5][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--¶ëáÒ
		elseif (GetLastFactionNumber() == 5) then
			NewWorld(CP_MAPTAB[6][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--´äÑÌ
		elseif (GetLastFactionNumber() == 6) then
			NewWorld(CP_MAPTAB[7][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--Ø¤°ï
		elseif (GetLastFactionNumber() == 7) then
			NewWorld(CP_MAPTAB[8][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--ÌìÈÌ
		elseif (GetLastFactionNumber() == 8) then
			NewWorld(CP_MAPTAB[9][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--Îäµ±
		elseif (GetLastFactionNumber() == 9) then
			NewWorld(CP_MAPTAB[10][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--À¥ÂØ
		end
		Msg2Player("B¹n ®· vµo ®Êu tr­êng Vâ l©m kiÖt xuÊt")
	end
end

-- ÓÃÓÚ´¦ÀíÒ»¶ÑÑ¡ÏîµÄ¶Ô»°º¯Êý Say(""...);
-- Edited by peres
function SelectSay(strSay)

local strMsg,strSel = "","";
local strNum = getn(strSay);

	if strNum < 2 then
		return
	end;
	
	if strNum > 2 then
		for i=2,strNum - 1 do
			strSel = strSel..format("%q", strSay[i])..",";
		end;
		strSel = strSel..format("%q", strSay[strNum]);
		strMsg = "Say("..format("%q", strSay[1])..","..(strNum - 1)..","..strSel..");";
	elseif strNum == 2 then
		strSel = format("%q", strSay[strNum]);
		strMsg = "Say("..format("%q", strSay[1])..",1"..","..strSel..");";
	end
	dostring(strMsg)
end


