IncludeLib("ITEM")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_awardplayerstop.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_testgame_ver3_doxanh.lua")

function hkMP_full()
 local tab_Content = {
  "R�i kh�i/no",
  "Thi�u L�m quy�n/sethkmp_tlq",
  "Thi�u L�m c�n/sethkmp_tlb",
  "Thi�u L�m �ao/sethkmp_tld",
  "Thi�n V��ng ch�y/#sethkmp1(4)",
  "Thi�n V��ng th��ng/#sethkmp1(5)",
  "Thi�n V��ng �ao/sethkmp_tvd",
  "Nga My ki�m/sethkmp_nmk",
  "Nga My ch��ng/sethkmp_nmc",
  "Nga My buff/#sethkmp1(9)",
  "Th�y Y�n �ao/sethkmp_ty1",
  "Th�y Y�n song �ao/sethkmp_ty2",
  "Ng� ��c ch��ng/#sethkmp1(12)",
  "Ng� ��c �ao/sethkmp_ndd",
  "Ng� ��c b�a/sethkmp_ndb",
  "Trang sau/sethkmp2",
  
 }
 Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function sethkmp2()
 local tab_Content = {
  "R�i kh�i/no",
  "���ng M�n phi �ao/#sethkmp1(15)",
  "���ng M�n t� ti�n/sethkmp_dmno",
  "���ng M�n phi ti�u/#sethkmp1(17)",
  "���ng M�n b�y/sethkmp_dmb",
  "C�i Bang r�ng/sethkmp_cbr",
  "C�i Bang b�ng/#sethkmp1(20)",
  "Thi�n Nh�n k�ch/sethkmp_tnk",
  "Thi�n Nh�n �ao/sethkmp_tnd",
  "Thi�n Nh�n b�a/sethkmp_tnb",
  "V� �ang kh� /sethkmp_vdkhi",
  "V� �ang ki�m/sethkmp_vdk",
  "C�n L�n �ao/sethkmp_cld",
  "C�n L�n ki�m/sethkmp_clc",
  "C�n L�n b�a/#sethkmp1(28)",
 }
 Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end


function sethkmp1(nId)
 for i=1,5 do AddGoldItem(0,5*nId+i-5) end
end
---thieu lam
function sethkmp_tlq()
--AddGoldItem(0,0)--monglong
AddGoldItem(0,1)--monglong
AddGoldItem(0,2)--monglong
AddGoldItem(0,3)--monglong
AddGoldItem(0,4)--monglong
AddGoldItem(0,5)--monglong
AddGoldItem(0,769)--monglong
end

function sethkmp_tlb()
AddGoldItem(0,6)--phuc ma
AddGoldItem(0,7)--phuc ma
AddGoldItem(0,8)--phuc ma
AddGoldItem(0,9)--phuc ma
AddGoldItem(0,10)--phuc ma
AddGoldItem(0,771)--phuc ma
end
function sethkmp_tld()
AddGoldItem(0,11)--tu khong
AddGoldItem(0,12)--tu khong
AddGoldItem(0,13)--tu khong
AddGoldItem(0,14)--tu khong
AddGoldItem(0,15)--tu khong
AddGoldItem(0,776)--tu khong
end
-----------------
---Thien vuong
---------------------
function sethkmp_tvd()
AddGoldItem(0,26)--
AddGoldItem(0,27)--
AddGoldItem(0,28)--
AddGoldItem(0,29)--
AddGoldItem(0,30)--
AddGoldItem(0,793)--
end
---------------------------
--ngamy
function sethkmp_nmk()
AddGoldItem(0,31)--tu khong
AddGoldItem(0,32)--tu khong
AddGoldItem(0,33)--tu khong
AddGoldItem(0,34)--tu khong
AddGoldItem(0,35)--tu khong
AddGoldItem(0,796)--tu khong
end

function sethkmp_nmc()
AddGoldItem(0,36)--
AddGoldItem(0,37)--
AddGoldItem(0,38)--
AddGoldItem(0,39)--
AddGoldItem(0,40)--
AddGoldItem(0,801)--
end
--------------------------
------thuy yen don dao
------------------------
function sethkmp_ty1()
AddGoldItem(0,46)--tu khong
AddGoldItem(0,47)--tu khong
AddGoldItem(0,48)--tu khong
AddGoldItem(0,49)--tu khong
AddGoldItem(0,50)--tu khong
AddGoldItem(0,811)--tu khong
end

function sethkmp_ty2()
AddGoldItem(0,51)--tu khong
AddGoldItem(0,52)--tu khong
AddGoldItem(0,53)--tu khong
AddGoldItem(0,54)--tu khong
AddGoldItem(0,55)--tu khong
AddGoldItem(0,816)--tu khong
end
-----------------------
------------ngu doc dao--------
function sethkmp_ndd()
AddGoldItem(0,61)--tu khong
AddGoldItem(0,62)--tu khong
AddGoldItem(0,63)--tu khong
AddGoldItem(0,64)--tu khong
AddGoldItem(0,65)--tu khong
AddGoldItem(0,829)--tu khong
end

function sethkmp_ndb()
AddGoldItem(0,66)--tu khong
AddGoldItem(0,67)--tu khong
AddGoldItem(0,68)--tu khong
AddGoldItem(0,69)--tu khong
AddGoldItem(0,70)--tu khong
AddGoldItem(0,834)--tu khong
end

--------------
----------Duong mon no


function sethkmp_dmno()
AddGoldItem(0,76)--tu khong
AddGoldItem(0,77)--tu khong
AddGoldItem(0,78)--tu khong
AddGoldItem(0,79)--tu khong
AddGoldItem(0,80)--tu khong
AddGoldItem(0,843)--tu khong
end

function sethkmp_dmb()
AddGoldItem(0,86)--tu khong
AddGoldItem(0,87)--tu khong
AddGoldItem(0,88)--tu khong
AddGoldItem(0,89)--tu khong
AddGoldItem(0,90)--tu khong
AddGoldItem(0,854)--tu khong
end

-----------------------
-------------cai bang rong--------------
function sethkmp_cbr()
AddGoldItem(0,91)--tu khong
AddGoldItem(0,92)--tu khong
AddGoldItem(0,93)--tu khong
AddGoldItem(0,94)--tu khong
AddGoldItem(0,95)--tu khong
AddGoldItem(0,855)--tu khong
end

-----------------------
-----------thien nhan thuong
function sethkmp_tnk()
AddGoldItem(0,101)--tu khong
AddGoldItem(0,102)--tu khong
AddGoldItem(0,103)--tu khong
AddGoldItem(0,104)--tu khong
AddGoldItem(0,105)--tu khong
AddGoldItem(0,868)--tu khong
end

function sethkmp_tnd()
AddGoldItem(0,106)--tu khong
AddGoldItem(0,107)--tu khong
AddGoldItem(0,108)--tu khong
AddGoldItem(0,109)--tu khong
AddGoldItem(0,110)--tu khong
AddGoldItem(0,874)--tu khong
end
function sethkmp_tnb()
AddGoldItem(0,111)--tu khong
AddGoldItem(0,112)--tu khong
AddGoldItem(0,113)--tu khong
AddGoldItem(0,114)--tu khong
AddGoldItem(0,115)--tu khong
AddGoldItem(0,876)--tu khong
end
--------------
----------vo dang nc-----------
function sethkmp_vdkhi()
AddGoldItem(0,116)--tu khong
AddGoldItem(0,117)--tu khong
AddGoldItem(0,118)--tu khong
AddGoldItem(0,119)--tu khong
AddGoldItem(0,120)--tu khong
AddGoldItem(0,881)--tu khong
end

function sethkmp_vdk()
AddGoldItem(0,121)--tu khong
AddGoldItem(0,122)--tu khong
AddGoldItem(0,123)--tu khong
AddGoldItem(0,124)--tu khong
AddGoldItem(0,125)--tu khong
AddGoldItem(0,888)--tu khong
end
---------------------

-----------con lon---
function sethkmp_cld()
AddGoldItem(0,126)--tu khong
AddGoldItem(0,127)--tu khong
AddGoldItem(0,128)--tu khong
AddGoldItem(0,129)--tu khong
AddGoldItem(0,130)--tu khong
AddGoldItem(0,891)--tu khong
end
function sethkmp_clc()
AddGoldItem(0,131)--tu khong
AddGoldItem(0,132)--tu khong
AddGoldItem(0,133)--tu khong
AddGoldItem(0,134)--tu khong
AddGoldItem(0,135)--tu khong
AddGoldItem(0,898)--tu khong
end