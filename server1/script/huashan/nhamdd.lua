-- NHam Doanh Doanh
function main() 

if GetTask(49) == 119 then
Talk(1,"qkd","<color=cyan>Nh�m Doanh Doanh<color> : L� th� c�a L�nh H� huynh �, �a t� v� ��i")
elseif GetTask(169) == 93 then
Talk(3,"q90b1","<color=cyan>Nh�m Doanh Doanh<color> Ng��i mu�n h�i ta �i�u g�","<color=cyan>Nh�m Doanh Doanh<color>: � nh�ng bi�u hi�n nh� ng��i v�a n�i th� c� th� <color=red>Nh�c B�t Qu�n<color> �ang l�n l�t luy�n t�ch t� ki�m ph� r�i.","Th�t kh�ng th� ng� Nh�c s� ph� l�i luy�n b� v� c�ng qu� qu�i n�y.")
else
Talk(1,"","<color=cyan>Nh�m Doanh Doanh<color> C�c h� c� bi�t Nh�m Ng� H�nh gi�o ch� � ��u kh�ng ?")
 end; 
end

function qkd()
SetTask(49,129) 
DelItem(1338)
AddNote("Quay v� b�o tin cho An c� n��ng")
Msg2Player("�� trao th� cho Doanh Doanh, quay v� b�o tin cho An c� n��ng")
end; 

function q90b1() 
SetTask(169,94)
AddNote("Quay l�i g�p Nh�c B�t Qu�n ��i ch�t ")
Msg2Player("Quay l�i g�p Nh�c B�t Qu�n ��i ch�t cho ra l�")
end; 

function no() 
end; 
