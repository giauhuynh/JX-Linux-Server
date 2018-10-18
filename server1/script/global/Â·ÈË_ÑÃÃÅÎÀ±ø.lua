if (not __GOVERM_SOLDIER_H__) then
    __GOVERM_SOLDIER_H__ = 1;
Include("\\script\\missions\\springfestival\\dialog.lua");

function gsoldier_entance()
	local aryszContent = {	"T×m kiÕm nh÷ng tin tøc kh¸c/main_former",
							"Ta gÇn nhÊt b©y giê rÊt bËn rén, ng­¬i t×m ng­êi kh¸c ®i ./OnCancel"};
							
	-- if (sf06_isactive() == 1) then
		-- tinsert(aryszContent, 1, "Ho¹t ®éng mïa xu©n/sf06_mainentrance");
	-- end;
	
	if (getn(aryszContent) > 2) then
		Say("<color=yellow>Nha m«n vÖ binh <color>: th¸ng minh tinh khª, « th­íc bay vÒ phİa nam. Quèc gia chİnh lµ dïng ng­êi chi tÕ, ta xem ng­¬i còng lµ häc vâ ng­êi , cã thÓ gióp chuyÖn sao", getn(aryszContent), aryszContent);
	else
		main_former();
	end;
	
end;

function OnCancel()
	
end;
end; --// end of __GOVERM_SOLDIER_H__
