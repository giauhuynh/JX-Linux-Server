--H� tr� trao gi�i th��ng cho ng��i chi�n th�ng - Created by DinhHQ - 20110607
Include("\\script\\vng_event\\traogiai\\NPAH\\vng_AwardClass.lua")
Include("\\script\\vng_event\\traogiai\\NPAH\\vng_ToolAward.lua")

tbCurSeason = tbAwardClass:New()
tbCurSeason.nStartDate = 201106270000
tbCurSeason.nEndDate = 201107032400
tbCurSeason.strName = "Nh�n th��ng Nh�t Ph��ng Anh H�o th�ng 5 (b� sung)"
tbCurSeason.nID = 2
tbCurSeason.tbAccList = {
	-- ["00791977"]= {[1]={{ nAwardID = 5, nCount = 7},},},
	-- ["0905433432"]= {[1]={{ nAwardID = 1, nCount = 7},},},
	-- ["5632704"]= {[1]={{ nAwardID = 8, nCount = 7},},},
	-- ["acecookdanang255"]= {[1]={{ nAwardID = 5, nCount = 7},},},
	-- ["anhngoctv"]= {[1]={{ nAwardID = 1, nCount = 7},},},
	-- ["aznbelle"]= {[1]={{ nAwardID = 3, nCount = 7},},},
	-- ["bengoc7777"]= {[1]={{ nAwardID = 3, nCount = 7},},},
	-- ["binhthuy01"]= {[1]={{ nAwardID = 4, nCount = 7},},},
	-- ["blue206"]= {[1]={{ nAwardID = 6, nCount = 7},},},
	-- ["blue602"]= {[1]={{ nAwardID = 4, nCount = 7},},},
	-- ["bodaonha191290"]= {[1]={{ nAwardID = 8, nCount = 7},},},
	-- ["botrumvl"]= {[1]={{ nAwardID = 3, nCount = 7},},},
	-- ["boysoctrang5"]= {[1]={{ nAwardID = 5, nCount = 7},},},
	-- ["buonviemradi"]= {[1]={{ nAwardID = 5, nCount = 7},},},
	-- ["calocxu50"]= {[1]={{ nAwardID = 1, nCount = 7},},},
	-- ["caoramdenhattien"]= {[1]={{ nAwardID = 5, nCount = 7},},},
	-- ["cauthong101"]= {[1]={{ nAwardID = 1, nCount = 7},},},
	-- ["chauhunglietkg"]= {[1]={{ nAwardID = 5, nCount = 7},},},
	-- ["chuyenpharoi123"]= {[1]={{ nAwardID = 6, nCount = 7},},},
	-- ["congcongcong79"]= {[1]={{ nAwardID = 5, nCount = 7},},},
	-- ["cucgavang"]= {[1]={{ nAwardID = 3, nCount = 7},},},
	-- ["cuctac0000"]= {[1]={{ nAwardID = 6, nCount = 7},},},
	-- ["cuongli7007"]= {[1]={{ nAwardID = 6, nCount = 7},},},
	-- ["daituong054"]= {[1]={{ nAwardID = 6, nCount = 7},},},
	-- ["dieucay9876"]= {[1]={{ nAwardID = 3, nCount = 7},},},
	-- ["dnghiphong"]= {[1]={{ nAwardID = 2, nCount = 7},},},
	-- ["dotaloveme"]= {[1]={{ nAwardID = 2, nCount = 7},},},
	-- ["dothitamhieu"]= {[1]={{ nAwardID = 4, nCount = 7},},},
	-- ["dqn090"]= {[1]={{ nAwardID = 9, nCount = 7},},},
	-- ["dungcam08"]= {[1]={{ nAwardID = 4, nCount = 7},},},
	-- ["emlaai123v"]= {[1]={{ nAwardID = 6, nCount = 7},},},
	-- ["galacyfree"]= {[1]={{ nAwardID = 5, nCount = 7},},},
	-- ["gunspeed"]= {[1]={{ nAwardID = 8, nCount = 7},},},
	-- ["hahoangtran000000000"]= {[1]={{ nAwardID = 7, nCount = 7},},},
	-- ["haibachai"]= {[1]={{ nAwardID = 3, nCount = 7},},},
	-- ["hero1002"]= {[1]={{ nAwardID = 7, nCount = 7},},},
	-- ["hoalongct1992"]= {[1]={{ nAwardID = 2, nCount = 7},},},
	-- ["hoangkhanh"]= {[1]={{ nAwardID = 4, nCount = 7},},},
	-- ["hungviettel1305"]= {[1]={{ nAwardID = 3, nCount = 7},},},
	-- ["huuminh2"]= {[1]={{ nAwardID = 3, nCount = 7},},},
	-- ["iloveyoyo"]= {[1]={{ nAwardID = 9, nCount = 7},},},
	-- ["kaka23499"]= {[1]={{ nAwardID = 9, nCount = 7},},},
	-- ["keanu8080"]= {[1]={{ nAwardID = 9, nCount = 7},},},
	-- ["kenshinvn9"]= {[1]={{ nAwardID = 1, nCount = 7},},},
	-- ["kethumuonmat"]= {[1]={{ nAwardID = 5, nCount = 7},},},
	-- ["khaithienlapdia222"]= {[1]={{ nAwardID = 7, nCount = 7},},},
	-- ["kiendinhpro85"]= {[1]={{ nAwardID = 6, nCount = 7},},},
	-- ["kieudhkt"]= {[1]={{ nAwardID = 5, nCount = 7},},},
	-- ["lanongpho1"]= {[1]={{ nAwardID = 2, nCount = 7},},},
	-- ["lelylan"]= {[1]={{ nAwardID = 5, nCount = 7},},},
	-- ["letaxigas"]= {[1]={{ nAwardID = 1, nCount = 7},},},
	-- ["long5739vt"]= {[1]={{ nAwardID = 4, nCount = 7},},},
	-- ["lucky2who"]= {[1]={{ nAwardID = 3, nCount = 7},},},
	-- ["luongvinhkiet"]= {[1]={{ nAwardID = 3, nCount = 7},},},
	-- ["luxury1"]= {[1]={{ nAwardID = 3, nCount = 7},},},
	-- ["manhhapvd"]= {[1]={{ nAwardID = 9, nCount = 7},},},
	-- ["menfuisu233"]= {[1]={{ nAwardID = 9, nCount = 7},},},
	-- ["minhphu2010kg"]= {[1]={{ nAwardID = 2, nCount = 7},},},
	-- ["minhtuankg2001"]= {[1]={{ nAwardID = 1, nCount = 7},},},
	-- ["namdebatgai116"]= {[1]={{ nAwardID = 1, nCount = 7},},},
	-- ["ndt12111979"]= {[1]={{ nAwardID = 3, nCount = 7},},},
	-- ["ngayhuydiet"]= {[1]={{ nAwardID = 6, nCount = 7},},},
	-- ["ngoanhtuan12345"]= {[1]={{ nAwardID = 7, nCount = 7},},},
	-- ["ngocanhtho123"]= {[1]={{ nAwardID = 7, nCount = 7},},},
	-- ["ngochung110"]= {[1]={{ nAwardID = 1, nCount = 7},},},
	-- ["ngocthang246tn"]= {[1]={{ nAwardID = 3, nCount = 7},},},
	-- ["nguyenanhthu2409"]= {[1]={{ nAwardID = 9, nCount = 7},},},
	-- ["nguyenhongnam2"]= {[1]={{ nAwardID = 6, nCount = 7},},},
	-- ["nguyenhungac"]= {[1]={{ nAwardID = 6, nCount = 7},},},
	-- ["nguyenhuulansg"]= {[1]={{ nAwardID = 3, nCount = 7},},},
	-- ["nguyenkimyen2951990"]= {[1]={{ nAwardID = 4, nCount = 7},},},
	-- ["nguyenthanhliem040990"]= {[1]={{ nAwardID = 1, nCount = 7},},},
	-- ["nguyentrungtuan1973"]= {[1]={{ nAwardID = 1, nCount = 7},},},
	-- ["nhminhquan"]= {[1]={{ nAwardID = 1, nCount = 7},},},
	-- ["pantara2304"]= {[1]={{ nAwardID = 3, nCount = 7},},},
	-- ["phantunglam1985"]= {[1]={{ nAwardID = 3, nCount = 7},},},
	-- ["quangdat1986"]= {[1]={{ nAwardID = 4, nCount = 7},},},
	-- ["romeo8x"]= {[1]={{ nAwardID = 5, nCount = 7},},},
	-- ["satangirl"]= {[1]={{ nAwardID = 6, nCount = 7},},},
	-- ["shostcon1993"]= {[1]={{ nAwardID = 3, nCount = 7},},},
	-- ["soibac7777"]= {[1]={{ nAwardID = 7, nCount = 7},},},
	-- ["sukienvolam12"]= {[1]={{ nAwardID = 3, nCount = 7},},},
	-- ["taivipbacninh"]= {[1]={{ nAwardID = 5, nCount = 7},},},
	-- ["tamem1989"]= {[1]={{ nAwardID = 1, nCount = 7},},},
	-- ["tantaylang1981"]= {[1]={{ nAwardID = 3, nCount = 7},},},
	-- ["taykietvotinh"]= {[1]={{ nAwardID = 6, nCount = 7},},},
	-- ["thachanhdung08"]= {[1]={{ nAwardID = 3, nCount = 7},},},
	-- ["thaibaobhh9"]= {[1]={{ nAwardID = 8, nCount = 7},},},
	-- ["thanhnam1978"]= {[1]={{ nAwardID = 5, nCount = 7},},},
	-- ["thienvuongdaily0201"]= {[1]={{ nAwardID = 5, nCount = 7},},},
	-- ["thieugiahn1986"]= {[1]={{ nAwardID = 1, nCount = 7},},},
	-- ["thuylinhltv1"]= {[1]={{ nAwardID = 3, nCount = 7},},},
	-- ["tieuyentu002"]= {[1]={{ nAwardID = 6, nCount = 7},},},
	-- ["topthichdu"]= {[1]={{ nAwardID = 8, nCount = 7},},},
	-- ["traitimbuon22587"]= {[1]={{ nAwardID = 9, nCount = 7},},},
	-- ["tranhoanghaikg1987"]= {[1]={{ nAwardID = 1, nCount = 7},},},
	-- ["tranhoanghaikgvn1987"]= {[1]={{ nAwardID = 4, nCount = 7},},},
	-- ["trantriminh3"]= {[1]={{ nAwardID = 8, nCount = 7},},},
	-- ["trantuvan"]= {[1]={{ nAwardID = 6, nCount = 7},},},
	-- ["tranvulam1983ct"]= {[1]={{ nAwardID = 1, nCount = 7},},},
	-- ["tuangavolam"]= {[1]={{ nAwardID = 4, nCount = 7},},},
	-- ["tuthanhbinh2003"]= {[1]={{ nAwardID = 4, nCount = 7},},},
	-- ["vinhungdongo"]= {[1]={{ nAwardID = 7, nCount = 7},},},
	-- ["vitvit15"]= {[1]={{ nAwardID = 5, nCount = 7},},},
	-- ["voanhduy12345"]= {[1]={{ nAwardID = 4, nCount = 7},},},
	-- ["vodang1872"]= {[1]={{ nAwardID = 3, nCount = 7},},},
	-- ["volamtrungngnuyen"]= {[1]={{ nAwardID = 1, nCount = 7},},},
	-- ["vosay1111"]= {[1]={{ nAwardID = 1, nCount = 7},},},
	-- ["vti002"]= {[1]={{ nAwardID = 1, nCount = 7},},},
	-- ["vungtaucodon82"]= {[1]={{ nAwardID = 5, nCount = 7},},},
	-- ["vuthieulam"]= {[1]={{ nAwardID = 5, nCount = 7},},},
	-- ["wonderloveyou"]= {[1]={{ nAwardID = 5, nCount = 7},},},
	-- ["wwwthon11"]= {[1]={{ nAwardID = 5, nCount = 7},},},		
}
tbCurSeason.tbPrizeList = {
	-- [1] = {szName="�� Ph� T� M�ng Kh�i",tbProp={6,1,2714,1,0,0},nCount=1},
	-- [2] = 	{szName="�� Ph� T� M�ng Y",tbProp={6,1,2715,1,0,0},nCount=1},
	-- [3] = {szName="�� Ph� T� M�ng H�i",tbProp={6,1,2716,1,0,0},nCount=1},
	-- [4] = {szName="�� Ph� T� M�ng Y�u ��i",tbProp={6,1,2717,1,0,0},nCount=1},
	-- [5] = {szName="�� Ph� T� M�ng H� Uy�n",tbProp={6,1,2718,1,0,0},nCount=1},
	-- [6] = {szName="�� Ph� T� M�ng B�i",tbProp={6,1,2720,1,0,0},nCount=1},
	-- [7] = {szName="�� Ph� T� M�ng Th��ng Gi�i Ch�",tbProp={6,1,2721,1,0,0},nCount=1},
	-- [8] = {szName="�� Ph� T� M�ng H� Gi�i Ch�",tbProp={6,1,2722,1,0,0},nCount=1},
	-- [9] = {szName="�� Ph� T� M�ng Kh� Gi�i",tbProp={6,1,2723,1,0,0},nCount=1},
	-- [10] = {szName="H�ng Bao C�u L�c B�",tbProp={6,1,30032,1,0,0},nCount=1, nExpiredTime= 43200},
	-- [11] = {szName="�i�m tinh l�c",nVngEnergy = 1,nCount=1},
}
tbCurSeason.tbFreeBagRequire = {
	[1] = 1,
	[2] = 	1,
	[3] = 1,
	[4] = 1,
	[5] = 1,
	[6] = 1,
	[7] = 1,
	[8] = 1,
	[9] = 1,
	[10] = 1,
	[11] = 0,
}
tbCurSeason.tbExtPointBit = {
	[1] = {nExtPoint = 4, nBit = 14},
}
tbCurSeason.tbLog = {"NPAH052011", "NhanThuongTaiLeQuan"}
if tbCurSeason:IsOver() == 1 then
	tbCurSeason = nil
else
	tbVngToolAward:AddSeason(tbCurSeason)
end