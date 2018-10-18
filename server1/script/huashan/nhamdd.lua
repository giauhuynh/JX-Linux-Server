-- NHam Doanh Doanh
function main() 

if GetTask(49) == 119 then
Talk(1,"qkd","<color=cyan>NhËm Doanh Doanh<color> : Lµ th­ cña LÖnh Hå huynh µ, ®a t¹ vŞ ®µi")
elseif GetTask(169) == 93 then
Talk(3,"q90b1","<color=cyan>NhËm Doanh Doanh<color> Ng­¬i muèn hái ta ®iÒu g×","<color=cyan>NhËm Doanh Doanh<color>: µ nh÷ng biÓu hiÖn nh­ ng­¬i võa nãi th× cã thÓ <color=red>Nh¹c BÊt QuÇn<color> ®ang lĞn lót luyÖn tŞch tµ kiÕm phæ råi.","ThËt kh«ng thÓ ngê Nh¹c s­ phô l¹i luyÖn bé vâ c«ng quû qu¸i nµy.")
else
Talk(1,"","<color=cyan>NhËm Doanh Doanh<color> C¸c h¹ cã biÕt NhËm Ng· Hµnh gi¸o chñ ë ®©u kh«ng ?")
 end; 
end

function qkd()
SetTask(49,129) 
DelItem(1338)
AddNote("Quay vÒ b¸o tin cho An c« n­¬ng")
Msg2Player("§· trao th­ cho Doanh Doanh, quay vÒ b¸o tin cho An c« n­¬ng")
end; 

function q90b1() 
SetTask(169,94)
AddNote("Quay l¹i gÆp Nh¹c BÊt QuÇn ®èi chÊt ")
Msg2Player("Quay l¹i gÆp Nh¹c BÊt QuÇn ®èi chÊt cho ra lÏ")
end; 

function no() 
end; 
