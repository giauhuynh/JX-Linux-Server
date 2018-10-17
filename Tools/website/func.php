<?php
    require_once 'config.php';

    function rs($_n, $_s = null, $_a = null, $_a2 = null){
        is_numeric($_n)?$r['r']=$_n:$r['r']=0;
        !is_numeric($_n)?$r['e']=$_n:(!empty($_s)?$r['d']=$_s:null);
        $_a?$r['a']=$_a:null;
        $_a2?$r['a2']=$_a2:null;
        echo json_encode($r);
        exit();
    }

    function r($t, $s_p1, $s_p2, $s_p3, $s_p4, $s_l1, $s_l2, $s_l3, $s_l4, $c_p, $c_a_v, $c_a_m, $c_a_vn, $c_a_vna, $c_a_g, $c_e_x, $c_e_a, $p_f, $l_s, $l_4, $l_f, $tt_nt, $tt_lf){
        global $__c;

        $al = $__c;

        !empty($t)?$al['title'][0] = $t:null;
        !empty($s_p1)?$al['slide'][0][0][0] = $s_p1:null;
        !empty($s_l1)?$al['slide'][0][0][1] = $s_l1:null;
        !empty($s_p2)?$al['slide'][0][1][0] = $s_p2:null;
        !empty($s_l2)?$al['slide'][0][1][1] = $s_l2:null;
        !empty($s_p3)?$al['slide'][0][2][0] = $s_p3:null;
        !empty($s_l3)?$al['slide'][0][2][1] = $s_l3:null;
        !empty($s_p4)?$al['slide'][0][3][0] = $s_p4:null;
        !empty($s_l4)?$al['slide'][0][3][1] = $s_l4:null;
        !empty($c_p)?$al['payment_am'][0] = intval($c_p):null;
        !empty($c_a_v)?$al['payment_al'][0][0][1] = ($c_a_v=='true'?true:false):null;
        !empty($c_a_m)?$al['payment_al'][0][1][1] = ($c_a_m=='true'?true:false):null;
        !empty($c_a_vn)?$al['payment_al'][0][2][1] = ($c_a_vn=='true'?true:false):null;
        !empty($c_a_vna)?$al['payment_al'][0][3][1] = ($c_a_vna=='true'?true:false):null;
        !empty($c_a_g)?$al['payment_al'][0][4][1] = ($c_a_g=='true'?true:false):null;
        !empty($c_e_x)?$al['payment_ae'][0][0][0] = intval($c_e_x):null;
        !empty($c_e_a)?$al['payment_ae'][0][1][0] = intval($c_e_a):null;
        !empty($p_f)?$al['folder_baiviet'][0] = $p_f:null;
        !empty($l_s)?$al['link'][0][0][0] = $l_s:null;
        !empty($l_4)?$al['link'][0][1][0] = $l_4:null;
        !empty($l_f)?$al['link'][0][2][0] = $l_f:null;
        !empty($tt_nt)?$al['link'][0][2][2] = ($tt_nt=='1'?1:0):null;
        !empty($tt_lf)?$al['link'][0][2][3] = ($tt_lf=='1'?1:0):null;

        ob_start();
            echo '$__c = ';
            var_export($al);
            $an = ob_get_contents();
        ob_end_clean();

        $an = str_replace("  ", "\t\t", $an);

        $f = @fopen("config.php",'w');

        @fwrite($f, '<?php'."\n".$an.';'."\n".'?>');

        @fclose($f);

        return 1;
    }

    function e($p){
        global $__c;

        $f = $__c['folder_baiviet'][0].'/';

        if(@unlink($f.$p.'.php')){
            $rt['r'] = 1;$rt['d'] = 'Xóa bài viết thành công!';echo json_encode($rt);exit();
        }

        if(!file_exists($f.$p.'.php') || !is_file($f.$p.'.php')){
            $rt['r'] = 0;$rt['e'] = 'Bài viết này không tồn tại, xin tải lại trình quản lý bài viết để cập nhật danh sách mới';echo json_encode($rt);exit();
        }
    }

    function u($n1){
        if($DirHandle = @opendir($n1)){

            $aFiles = array(array()); $aFilesSort = array(array()); $aFiles_n = 0; $aSort = array(0, 0);

            while (($file = readdir($DirHandle)) !== false) {

                if ($file != "." && $file != ".." && !is_dir($n1 . $file) && $file != '___list.php' && $file != 'index.php') {

                    $aFiles[$aFiles_n][0] = $file; $aFiles[$aFiles_n][1] = filemtime($n1 . $file); $aFiles_n++;

                }

            }closedir($DirHandle);

            if(count($aFiles) <= 0){return 0;}

            $aFilesCount = count($aFiles);

            for($p1 = 0; $p1 < $aFilesCount; $p1++){

                $aSort[0] = $aFiles[$p1][1]; $aSort[1] = $p1;

                for($p2 = 0; $p2 < $aFilesCount; $p2++){
                    if(($aSort[0] <= $aFiles[$p2][1]) && ($p2 != $p1)){

                        $aSort[0] = $aFiles[$p2][1]; $aSort[1] = $p2;

                    }
                }

                $aFilesSort[$p1][0] = $aFiles[$aSort[1]][0]; $aFilesSort[$p1][1] = $aFiles[$aSort[1]][1]; $aFiles[$aSort[1]][1] = 0;
            }

            $v1 = fopen($n1."___list.php",'w');

            fwrite($v1, "<?php\n\terror_reporting(0);\n\t$".'__ctn'." = array(\n");

            for($p3 = 0; $p3 < $aFilesCount; $p3++){

                require_once $n1.$aFilesSort[$p3][0];

                $FineNoneExtensions = substr($aFilesSort[$p3][0], 0, (strlen($aFilesSort[$p3][0]) - 4));

                fwrite($v1, "\t\t'".$FineNoneExtensions."'=>array('".$ContentFile[$FineNoneExtensions.'_Title']."', '".$ContentFile[$FineNoneExtensions.'_Type']."', '".gmdate('d-m-Y', $aFilesSort[$p3][1])."', '".$ContentFile[$FineNoneExtensions.'_Poster']."'),\n");

                $ContentFile = null;
            }

            fwrite($v1, "\t);\n?>\n");
            fclose($v1);

            return 1;
        }else{ return 0; };
    }

    function n($i, $t, $ty, $pp, $c, $arp = null){
        global $__c;
        $r = $_SERVER['DOCUMENT_ROOT'].'/'; $f = $__c['folder_baiviet'][0].'/';

        if(file_exists($__c['folder_baiviet'][0].'/'.$i.'.php') || is_file($__c['folder_baiviet'][0].'/'.$i.'.php')){
            if(!$arp){
                $rt['r'] = 0;$rt['e'] = 'ID này đã tồn tại, xin chọn id khác';echo json_encode($rt);exit();
            }
        }

        $h = fopen($f.$i.'.php', 'w');
        fwrite($h, "<?php\n");

        fwrite($h, "$"."ContentFile['".$i."_Title']='".$t."';\n");
        fwrite($h, "$"."ContentFile['".$i."_Type']='".$ty."';\n");
        fwrite($h, "$"."ContentFile['".$i."_Poster']='".$pp."';\n");
        fwrite($h, "$"."ContentFile['".$i."_Content']='".$c."';\n");

        fwrite($h, "?> \n");
        fclose($h);

        if(u($f) != 1){
            $rt['r'] = 0;$rt['e'] = 'Cập nhật lạ danh sách thất bại, tuy nhiên bài viết đã được lưu';echo json_encode($rt);exit();
        }

        $rt['r'] = 1;$rt['d'] = 'Đăng bài viết thành công!';echo json_encode($rt);exit();
    }

    function d($Str){
        $Str = urldecode($Str);
        $Str = str_replace("&ENC_r_m", "rm", $Str, $n_Out);
        $Str = str_replace("&ENC_l_s", "ls", $Str, $n_Out);
        $Str = str_replace("&ENC_c_a_t", "cat", $Str, $n_Out);
        $Str = str_replace("&ENC_e_c_ho", "echo", $Str, $n_Out);
        $Str = str_replace("&ENC_o_rd_er", "order", $Str, $n_Out);
        $Str = str_replace("&ENC_U_pd", "Upd", $Str, $n_Out);
        $Str = str_replace("&ENC_u_pd", "upd", $Str, $n_Out);
        $Str = str_replace("&ENC_g_n", "-", $Str, $n_Out);
        return $Str;
    }

    function al($u, $p){
        global $__c;

        for($i = 0; $i < count($__c['admin'][0]); $i++){
            $c = true;

            for($i2 = 0; $i2 < strlen($__c['admin'][0][$i][0]); $i2++){

                $au = $__c['admin'][0][$i][0];

                if(strlen($__c['admin'][0][$i][0]) == strlen($u)){
                    if(!$c || ($au[$i2] != $u[$i2]))
                        $c = false;
                }
                else
                    $c = false;

            }

            for($i2 = 0; $i2 < strlen($__c['admin'][0][$i][1]); $i2++){

                $ap = $__c['admin'][0][$i][1];

                if(strlen($__c['admin'][0][$i][1]) == strlen($p)){
                    if(!$c || ($ap[$i2] != $p[$i2]))
                        $c = false;
                }
                else
                    $c = false;

            }

            if($c) return $c;
        }
        return false;
    }

    function b($p, $c, $b = null){
        global $__c;
        $r = $_SERVER['DOCUMENT_ROOT'].'/'; $f = $r.$__c['folder_baiviet'][0].'/___list.php'; $a = array(); $n = 1;

        if($b)
            $b = (($b*$c)-$c)+1;

        if(is_file($f)){
            require $f;

            if(!isset($__ctn) || count($__ctn) <= 0)
                return null;

            foreach($__ctn as $k => $v){
                if(count($a) < $c){

                    if($v[1] == (($p=='all')?$v[1]:$p)){

                        if($b?(($n<$b+$c)&&($n>=$b)):true)
                            $a[count($a)] = array($k, $v[0], $v[1], $v[2], $v[3]);

                        $n++;
                    }
                }
                else break;
            }

            return $a;
        }
        else{
            return null;
        }
    }

    function a($p,$lenght){
        $a = strtoupper($p);
        if(get_magic_quotes_gpc()){
            $a=stripcslashes($a);
        }
        else{
            $a=addslashes($a);
        }
        $b=array(
            "UNION","INFORMATION","SCHEMA","ADMIN","ADMINISTRATOR",
            "DELETE","INSERT","DROP","--","SELECT","UPDATE","ORDER","DECLARE",'\'',"\'","--","*","%",";","!","#","$","^","&","(",")","+","=","\\","OR","/"
        );
        for($i=0;$i<count($b);$i++){$c=$b[$i];$d=strpos($a,$c);if( $d > 0){$r["r"] = 0; $r["e"] = 'Không được sử dụng ký tự đặt biệt trong khai báo, chỉ cho phép từ a-z, A-Z, 0-9';echo json_encode($r);exit();}}
        if(!isset($p) || empty($p) || strlen($p) < $lenght){$r["r"] = 0;$r["e"] = 'Khai báo phải từ '.$lenght.' ký tự trở lên';echo json_encode($r);exit();}
    }

    function clean_variable($var) {$newvar = preg_replace('/[-]+[^a-zA-Z0-9\_\-]/', '', $var);return $newvar;}

    function fC() {
        $badchars = array("INSERT","DROP","UNION","SELECT","UPDATE","DELETE","DISTINCT","HAVING","TRUNCATE","REPLACE","WHERE","HANDLER","PROCEDURE","LIMIT","ORDER BY","GROUP BY","ASC","DESC");
        if (isset($_POST)){
            foreach($_POST as $value){
                if (eregi("[-]+[^a-zA-Z0-9_/.@$]", $value)){$r["r"] = 0; $r["e"] = 'Không được sử dụng ký tự đặt biệt trong khai báo, chỉ cho phép từ a-z, A-Z, 0-9';echo json_encode($r);exit();}
                $value = clean_variable($value);
                $str = str_replace($badchars, "", strtoupper($value), $count);
                if($count > 0){$r["r"] = 0; $r["e"] = 'Không được sử dụng ký tự đặt biệt trong khai báo, chỉ cho phép từ a-z, A-Z, 0-9';echo json_encode($r);exit();}
                else {
                    $check = preg_split("//", $value, -1, PREG_SPLIT_OFFSET_CAPTURE);
                    foreach($check as $char) {if(in_array($char, $badchars)) {$r["r"] = 0; $r["e"] = 'Không được sử dụng ký tự đặt biệt trong khai báo, chỉ cho phép từ a-z, A-Z, 0-9';echo json_encode($r);exit();}}
                }}}
        if (isset($_GET)){
            foreach($_GET as $value){
                if (eregi("[-]+[^a-zA-Z0-9_/.@$]", $value)){$r["r"] = 0; $r["e"] = 'Không được sử dụng ký tự đặt biệt trong khai báo, chỉ cho phép từ a-z, A-Z, 0-9';echo json_encode($r);exit();}
                $value = clean_variable($value);
                $str = str_replace($badchars, "", strtoupper($value), $count);
                if($count > 0){$r["r"] = 0; $r["e"] = 'Không được sử dụng ký tự đặt biệt trong khai báo, chỉ cho phép từ a-z, A-Z, 0-9';echo json_encode($r);exit();}
                else {
                    $check = preg_split("//", $value, -1, PREG_SPLIT_OFFSET_CAPTURE);
                    foreach($check as $char) {if(in_array($char, $badchars)) {$r["r"] = 0; $r["e"] = 'Không được sử dụng ký tự đặt biệt trong khai báo, chỉ cho phép từ a-z, A-Z, 0-9';echo json_encode($r);exit();}}
                }
            }
        }
    }

    function c($GET, $array){ global $__c; $a = curl_init($__c['Data'][0].'?'.$GET); curl_setopt($a, CURLOPT_RETURNTRANSFER, true); curl_setopt($a, CURLOPT_POST, count($array)); curl_setopt($a, CURLOPT_POSTFIELDS, $array); $b = curl_exec($a); curl_close($a); return json_decode($b,true); }

?>


