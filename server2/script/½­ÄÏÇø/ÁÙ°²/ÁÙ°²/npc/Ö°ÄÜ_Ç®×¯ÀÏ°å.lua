

Include("\\script\\global\\systemconfig.lua") 
Include("\\script\\global\\head_qianzhuang.lua") 
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua") 

IncludeForRegionVer("\\script\\global\\", "gamebank_proc.lua")

function main() 
	if (CheckGlobalTradeFlag() == 0) then
		return 
	end 
	Uworld1000 = nt_getTask(1000) 
	if ( Uworld1000 == 360 ) or ( Uworld1000 == 370 ) then 
		education_qianzhuanglaoban() 
	else 
		Talk(1,"gamebank_proc","Bæn tiÖm lµm ¨n lµ cµng lµm cµng tèt , ta quyÕt ®Þnh sang n¨m n÷a khai më mÊy nhµ ph©n phèi. nh­ng chuyÖn nµy ta muèn cïng hé bé V­¬ng ®¹i nh©n th­¬ng l­îng, kh«ng cã h¾n b¶o vÖ, tiÒn cña ta lµm sao cã thÓ æn ®Þnh") 
	end 
end 
