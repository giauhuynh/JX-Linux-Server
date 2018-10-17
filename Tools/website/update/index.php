<?php
$domtree = new DOMDocument('1.0', 'UTF-8');
$domtree->formatOutput = true;
$xmlRoot = $domtree->createElement("Autoupdate");
$xmlRoot = $domtree->appendChild($xmlRoot);
listFolderFiles('capnhat');
$domtree->save("version.xml");
echo("Đã tạo cập nhật thành công client có thể update");
function listFolderFiles($dir){
	global $domtree, $xmlRoot;
		$ffs = scandir($dir);
		foreach($ffs as $ff){
			if($ff != '.' && $ff != '..'){
				if(is_dir($dir.'/'.$ff))
				{
					$ffssub = scandir($dir.'/'.$ff);
					listFolderFiles($dir.'/'.$ff);
				}
				else
				{
					$md5file = md5_file($dir."/".$ff);
					$md5file = strtoupper($md5file);
					$sizefile = filesize($dir."/".$ff);
					$item = $domtree->createElement("Item");
					$xmlRoot->appendChild($item);

					$path =$domtree->createElement("Path");
					$str =str_replace("capnhat/","",$dir.'/'.$ff);
					$tam = str_replace("/","\\",$str);
					$path->appendChild($domtree->createTextNode($tam));
					//$path->appendChild($domtree->createTextNode($dir.'/'.$ff));
					$item->appendChild($path);
					
					$link =$domtree->createElement("Link");
					$link->appendChild($domtree->createTextNode($dir.'/'.$ff));
					$item->appendChild($link);
					
					$hash =$domtree->createElement("Hash");
					$hash->appendChild($domtree->createTextNode($md5file));
					$item->appendChild($hash);
					
					$size =$domtree->createElement("Size");
					$size->appendChild($domtree->createTextNode($sizefile));
					$item->appendChild($size);
				}
			}
		}
}
?>