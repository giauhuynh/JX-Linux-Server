--��ԭ���� ������ ��ͷ����2�Ի�
--suyu
--200306015

CurWharf = 4;
Include("\\script\\global\\station.lua")
---------------------------------------------------------------
function main(sel)

	Say("Thuy�n phu:  Ch�ng ta m�t nh� sinh k� to�n d�a v�o c�i thuy�n c� n�y, c� kh�ch ng��i qu� giang ��ch th�i �i�m li�n t�i kh�ch , m�o ph�i kh�ch nh�n th�i �i�m li�n b� c� , coi nh� nh� v�y , c�ng ch� c� th� mi�n c��ng h� mi�ng .", 2, "Ng�i thuy�n/WharfFun", "Kh�ng ng�i/OnCancel");

end;

---------------------------------------------------------------
function  OnCancel()

	Say("Thuy�n phu:  Ta ch� tr�ng c�y v�o c�i thuy�n c� n�y nu�i c� gia ��nh, sao c� th� mi�n ph� ��a ng��i qu� giang !",0)

end;

---------------------------------------------------------------
