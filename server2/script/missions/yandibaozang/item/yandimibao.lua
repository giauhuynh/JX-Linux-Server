Include("\\script\\global\\bil4i3n\\bil4i3n_droprate.lua")

function main(nIndexItem)
	local bilRandom = random(1, getn(_bilTbDropKyTranDiBao))
	AddItem(_bilTbDropKyTranDiBao[bilRandom][1][1], _bilTbDropKyTranDiBao[bilRandom][1][2], _bilTbDropKyTranDiBao[bilRandom][1][3], 1, 0, 0)
	Msg2Player("Ch�c m�ng ��i hi�p �� nh�n ���c <color=yellow>".._bilTbDropKyTranDiBao[bilRandom][2].."<color> t� <color=green>Vi�m �� b� b�o!")
end

