Include("\\script\\tagnewplayer\\func_check.lua");
Include("\\script\\tagnewplayer\\QualityItem.lua");



function ToStrNumb(set)
	local s = "{"
	local sep = ""
	local val = ""
	for k,v in set do
			if (type(v) == "table") then
				val = ToStrNumb(v)
			else
				val = v
			end
			if (type(v) == "string") then
				val = "\"" ..v.."\""
			end
			s = s .. sep .. val
			sep = ", "
	end
	return s .. "}"
end

tbItem=
{
	{strSelect ="n�n"},
	{strSelect ="�o"},
	{strSelect ="th�t l�ng"},
	{strSelect ="bao tay"},
	{strSelect ="gi�y"},
	{strSelect ="v� kh� th� nh�t"},
	{strSelect ="v� kh� th� hai"}
};
tbWeapon=
{
	{strName ="�ao"},
	{strName ="Phi �ao"},
	{strName ="Phi Ti�u"},
	{strName ="Ki�m"},
	{strName ="Th��ng"},
	{strName ="B�ng"}
};



function GetItemTim()end
function SelectItemTim(tbSeries)end
function SelectSeries(nIndex, strFunc, tbSeries)end
function SelectItem(nSeries, strFunc, tbSeries)end
function ConfirmGetItem(tbSeries)end
function Addweapon(tbSeries)end

function ShowSelItem(tbSeries)end

function CancelSelectItem()

end






