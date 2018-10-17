<?php
	error_reporting(0);
    require_once 'config.php';
    fC(); /* check SQL Injection */

    if($_SERVER['REMOTE_ADDR'] != $c_allowConnect){
        $r["r"] = 0;$r["e"] = 'Địa chỉ của máy chủ <span style="color:red;">'.$_SERVER['REMOTE_ADDR'].'</span><br>Hiện chưa được phép gửi truy vấn đến máy chủ Database<br>Xin liên hệ với administrator của máy chủ Database để tiến hành cho phép kết nối!';
        echo json_encode($r);
        exit();
    }

    if(isset($_GET['r']) && $_GET['r']){

        if($_GET['r'] == 'r'){
            $u = $_POST['u'];$p = $_POST['p'];

            a($u, 4);a($p, 4);

            $db->Connect($c_ipDatabase, $c_UserDatabase, $c_PassDatabase, $c_NameDatabase) OR DIE();
            $e = $db->Execute("SELECT cAccName FROM Account_Info WHERE cAccName = '".$u."'") OR DIE();
            $er = $e->Numrows();

            if($er == 0){
                $db->Execute("INSERT INTO Account_Info (cAccName,cPassWord,nExtPoint,nExtPoint1,nExtPoint2,nExtPoint3,nExtPoint4,nExtPoint5,nExtPoint6,nExtPoint7,iOTPSessionLifeTime,iServiceFlag,dRegDate) VALUES ('".$u."','".strtoupper(md5($p))."','1','0','0','0','0','0','0','0','0','0','".date("Y-m-d h:i:s",time())."')") OR DIE();
                $db->Execute("INSERT INTO Account_Habitus(cAccName,dEndDate) VALUES('$u','".date("Y-m-d h:i:s",(time() + 3650*(86400)))."')") OR DIE();
                $db->Execute("INSERT INTO Account_sub_Info(cAccName,cPassWord) VALUES('".$u."','".$p."')") OR DIE();
                $r["r"] = 1;echo json_encode($r);exit();
            }
            else{
                $r["r"] = 0;$r["e"] = 'Tên tài khản này đã tồn tại, xin hãy chọn tên tài khoản khác!';echo json_encode($r);exit();
            }
        }

        if($_GET['r'] == 'l'){
            $u = $_POST['u']; $p = $_POST['p'];

            a($u, 4); a($p, 4);

            $db->Connect($c_ipDatabase, $c_UserDatabase, $c_PassDatabase, $c_NameDatabase) OR DIE();
            $e = $db->Execute("SELECT cAccName FROM Account_Info WHERE cAccName = '".$u."'") OR DIE();

            if($e->Numrows() > 0){
                $e = $db->Execute("SELECT cAccName FROM Account_Info WHERE cAccName = '".$u."' AND cPassWord = '".strtoupper(md5($p))."'") OR DIE();
                if($e->Numrows() > 0){
                    unset($e);

                    $e = $db->Execute("SELECT nExtPoint1,iClientID FROM Account_Info WHERE cAccName = '".$u."' AND cPassWord ='".strtoupper(md5($p))."'") OR DIE();
                    $er = $e->Fetchrow();

                    $r['d']['tk'] = $u; $r['d']['mk1'] = strtoupper(md5($p)); $r['d']['ol'] = $er[1]; $r['d']['td'] = $er[0];

                    $e = $db->Execute("SELECT cRealName,cCity,cSex,dBirthDay,cPhone,cEMail,cQuestion,cAnswer,cDegree FROM Account_sub_Info WHERE cAccName = '".$u."' AND cPassWord ='".$p."'") OR DIE();
                    $er = $e->Fetchrow();

                    $r['d']['tnd'] = $er[0]; $r['d']['dc'] = $er[1]; $r['d']['gt'] = $er[2]; $r['d']['ns'] = $er[3]; $r['d']['sdt'] = $er[4]; $r['d']['em'] = $er[5]; $r['d']['q'] = $er[6]; $r['d']['a'] = $er[7]; $r['d']['mk2'] = strtoupper(md5($er[8]));

                    $e = $db->Execute("SELECT dEndDate FROM Account_Habitus WHERE cAccName = '".$u."' ") OR DIE();
                    $er = $e->Fetchrow();
					
					$r['d']['de'] = $er[0];
					
                    $e = $db->Execute("SELECT  dDateTime,cIP,cCardCode,cDescription FROM AccCard_History WHERE cAccName = '".$u."' ORDER BY dDateTime DESC") OR DIE();

                    $ern = $e->Numrows();

                    if($ern > 0){

                        for($i=0;$i<$ern;$i++){

                            $er=$e->Fetchrow();

                            $r['d']['hisc'][$i]['nn'] = $er[0]; $r['d']['hisc'][$i]['lt'] = $er[1]; $r['d']['hisc'][$i]['sr'] = $er[2]; $r['d']['hisc'][$i]['mg'] = $er[3];
                        }
                    }

                    $r["r"] = 1; echo json_encode($r);exit();
                }
                else{
                    $r["r"] = 0;$r["e"] = 'Tên tài khoản hoặc mật khẩu không đúng!';echo json_encode($r);exit();
                }
            }
            else{
                $r["r"] = 0;$r["e"] = 'Tên tài khoản hoặc mật khẩu không đúng!';echo json_encode($r);exit();
            }
        }

        if($_GET['r'] == 'rp'){
            $pc  = (isset($_GET['e']) && !empty($_GET['e']) && $_GET['e'] == 'p2');

            $u = $_POST['u']; $p = $_POST['p']; $pn = $_POST['pn'];

            a($u, 4); !$pc?a($p, 4):null; a($pn, 4);

            $db->Connect($c_ipDatabase, $c_UserDatabase, $c_PassDatabase, $c_NameDatabase) OR DIE();
            $e = $db->Execute("SELECT cAccName FROM Account_Info WHERE cAccName = '".$u."'") OR DIE();

            if($pc){
                $e = $db->Execute("SELECT cSecPassWord FROM Account_Info WHERE cAccName = '".$u."'") OR DIE();
                $ef = $e->Fetchrow();
                if(empty($ef[0]) || !$ef[0]) $ec = true;
            }

            if($e->Numrows() > 0){
                $e = $db->Execute("SELECT cAccName FROM Account_Info WHERE cAccName = '".$u."' AND ".($pc?'cSecPassWord':'cPassWord')."= '".($p?strtoupper(md5($p)):'')."'") OR DIE();
                if($e->Numrows() > 0 || ($ec)){

                    $db->Execute("UPDATE Account_Info SET ".($pc?'cSecPassWord':'cPassWord')." = '" . strtoupper(md5($pn)) . "' WHERE cAccName= '" . $u . "'") OR DIE();
                    $db->Execute("UPDATE Account_sub_Info SET ".($pc?'cDegree':'cPassWord')." = '" . $pn . "' WHERE cAccName= '" . $u . "'") OR DIE();

                    $r["r"] = 1;echo json_encode($r);exit();
                }
                else{
                    $tt = $e->Fetchrow();
                    $r["r"] = 0;$r["e"] = 'Mật khẩu cũ không đúng, xin kiểm tra lại!';echo json_encode($r);exit();
                }
            }
            else{
                $r["r"] = 0;$r["e"] = 'Tên tài khoản không tồn tại trong hệ thống!';echo json_encode($r);exit();
            }
        }

        if($_GET['r'] == 'qa'){
            $u = $_POST['u']; $q = $_POST['q']; $a = $_POST['a'];

            a($u, 4); a($a, 4);

            $db->Connect($c_ipDatabase, $c_UserDatabase, $c_PassDatabase, $c_NameDatabase) OR DIE();
            $e = $db->Execute("SELECT cAccName FROM Account_Info WHERE cAccName = '".$u."'") OR DIE();

            if($e->Numrows() > 0){
                    $db->Execute("UPDATE Account_sub_Info SET cQuestion = '".$q."', cAnswer='".$a."' WHERE cAccName= '" . $u . "'") OR DIE();

                    $r["r"] = 1;echo json_encode($r);exit();
            }
            else{
                $r["r"] = 0;$r["e"] = 'Tên tài khoản không tồn tại trong hệ thống!';echo json_encode($r);exit();
            }
        }

        if($_GET['r'] == 'se'){

            $u = $_POST['u']; $s = $_POST['s']; $em = $_POST['e'];

            a($u, 4);a($s, 9);a($em, 3);

            $db->Connect($c_ipDatabase, $c_UserDatabase, $c_PassDatabase, $c_NameDatabase) OR DIE();
            $e = $db->Execute("SELECT cAccName FROM Account_Info WHERE cAccName = '".$u."'") OR DIE();

            if($e->Numrows() > 0){
                    $db->Execute("UPDATE Account_sub_Info SET cPhone = '".$s."', cEMail='".$em."' WHERE cAccName= '" . $u . "'") OR DIE();

                    $r["r"] = 1;echo json_encode($r);exit();
            }
            else{
                $r["r"] = 0;$r["e"] = 'Tên tài khoản không tồn tại trong hệ thống!';echo json_encode($r);exit();
            }
        }

        if($_GET['r'] == 'ttnd'){

            $u = $_POST['u']; $tnd = $_POST['tnd']; $dc = $_POST['dc']; $gt = $_POST['gt']; $sn = $_POST['sn'];

            a($tnd, 2); a($dc, 2); a($gt, 2); a($sn, 2);

            $db->Connect($c_ipDatabase, $c_UserDatabase, $c_PassDatabase, $c_NameDatabase) OR DIE();
            $e = $db->Execute("SELECT cAccName FROM Account_Info WHERE cAccName = '".$u."'") OR DIE();

            if($e->Numrows() > 0){
                    $db->Execute("UPDATE Account_sub_Info SET cRealName = '".$tnd."', cCity='".$dc."',cSex='".$gt."', dBirthDay='".$sn."' WHERE cAccName= '" . $u . "'") OR DIE();

                    $r["r"] = 1;echo json_encode($r);exit();
            }
            else{
                $r["r"] = 0;$r["e"] = 'Tên tài khoản không tồn tại trong hệ thống!';echo json_encode($r);exit();
            }
        }

        if($_GET['r'] == 'f'){

            $u = $_POST['u']; $p2 = $_POST['p2']; $pn = $_POST['pn'];

            a($u, 4);a($p2, 4);a($pn, 4);

            $db->Connect($c_ipDatabase, $c_UserDatabase, $c_PassDatabase, $c_NameDatabase) OR DIE();
            $e = $db->Execute("SELECT cAccName FROM Account_Info WHERE cAccName = '".$u."'") OR DIE();

            if($e->Numrows() > 0){

                $e = $db->Execute("SELECT cSecPassWord FROM Account_Info WHERE cAccName = '".$u."'") OR DIE();

                if($e->Numrows() > 0){

                    $ef = $e->Fetchrow();

                    if($ef[0] == '' || empty($ef[0])){
                        $r["r"] = 0;$r["e"] = 'Tên tài khoản chưa cập nhật mã cấp 2, xin liên hệ quản trị viên!';echo json_encode($r);exit();
                    }
                    else{
                        if($ef[0] != strtoupper(md5($p2))){
                            $r["r"] = 0;$r["e"] = 'Mã cấp 2 của tài khoản này không khớp, xin kiểm tra lại!';echo json_encode($r);exit();
                        }

                        $db->Execute("UPDATE Account_Info SET cPassWord = '" . strtoupper(md5($pn)) . "' WHERE cAccName= '" . $u . "'") OR DIE();
                        $db->Execute("UPDATE Account_sub_Info SET cPassWord = '" . $pn . "' WHERE cAccName= '" . $u . "'") OR DIE();

                        $r["r"] = 1;echo json_encode($r);exit();
                    }
                }
                else{
                    $r["r"] = 0;$r["e"] = 'Tên tài khoản chưa cập nhật mã cấp 2, xin liên hệ quản trị viên!';echo json_encode($r);exit();
                }
            }
            else{
                $r["r"] = 0;$r["e"] = 'Tên tài khoản không tồn tại trong hệ thống!';echo json_encode($r);exit();
            }
        }

        if($_GET['r'] == 'p'){

            $u = $_POST['u']; $p_t = $_POST['p_t']; $p_s = $_POST['p_s']; $p_c = $_POST['p_c'];

            $payment_am = $_POST['payment_am']; $payment_aeX = $_POST['payment_aeX']; $payment_aeT = $_POST['payment_aeT'];

            a($u, 4);a($p_t, 2);a($p_s, 4);a($p_c, 4);

            $db->Connect($c_ipDatabase, $c_UserDatabase, $c_PassDatabase, $c_NameDatabase) OR DIE();
            $e = $db->Execute("SELECT cAccName FROM Account_Info WHERE cAccName = '".$u."'") OR DIE();

            if($e->Numrows() <= 0){
                $r["r"] = 0;$r["e"] = 'Tên tài khoản không tồn tại trong hệ thống!';echo json_encode($r);exit();
            }

			switch($c_Payment['isBank'][0]){
				case 'API_BaoKim': $a = fP_BaoKim($p_t, $p_s, $p_c); break;
				case 'API_VipPay': $a = fP_VipPay($p_t, $p_s, $p_c); break;
				case 'API_GameBank': $a = fP_GameBank($p_t, $p_s, $p_c); break;
			}

            if(empty($a)){$r["r"] = 0;$r["e"] = 'Đơn vị tiếp nhận thanh toán không phản hồi!';echo json_encode($r);exit();}

            if($a['status'] == 200){
                switch($a['amount']) {
                    case 10000: $a_d = 10*$payment_am*($payment_aeT<=$a['amount']?$payment_aeX:1); break;
                    case 20000: $a_d = 20*$payment_am*($payment_aeT<=$a['amount']?$payment_aeX:1); break;
                    case 30000: $a_d = 30*$payment_am*($payment_aeT<=$a['amount']?$payment_aeX:1); break;
                    case 50000: $a_d= 50*$payment_am*($payment_aeT<=$a['amount']?$payment_aeX:1); break;
                    case 100000: $a_d = 100*$payment_am*($payment_aeT<=$a['amount']?$payment_aeX:1); break;
                    case 200000: $a_d = 200*$payment_am*($payment_aeT<=$a['amount']?$payment_aeX:1); break;
                    case 300000: $a_d = 300*$payment_am*($payment_aeT<=$a['amount']?$payment_aeX:1); break;
                    case 500000: $a_d = 500*$payment_am*($payment_aeT<=$a['amount']?$payment_aeX:1); break;
                    case 1000000: $a_d = 1000*$payment_am*($payment_aeT<=$a['amount']?$payment_aeX:1); break;
                }

                $lg = fopen("___the_nap_thanh_cong.log",'a');
                fwrite($lg,"[".$c_Payment['isBank'][0]."]--Tai khoan: ".$u.", Menh gia: ".f2M($a['amount']).", Loai The: ".$p_t.", Ma the: ".$p_c.", Seri: ".$p_s.", Thoi gian: ".date('H:i d-m-Y')." - ".time());
                fwrite($lg,"\r\n");
                fclose($lg);

                $e = $db->Execute("SELECT nExtPoint1 FROM Account_Info WHERE cAccName = '".$u."' ") OR DIE();
                $u_po = $e->Fetchrow();

                $db->Execute("UPDATE Account_Info SET nExtPoint1='".($a_d+$u_po[0])."' WHERE cAccName='".$u."'") OR DIE();
                $db->Execute("INSERT INTO AccCard_History(dDateTime,cIP,cCardCode,cDescription,cAccName) values('".date('m/d/Y H:i:s')."', '".$p_t."', '".$p_s."', '".f2M($a['amount'])."', '".$u."')") OR DIE();

                $r["r"] = 1; $r["d"]['mgt'] = f2M($a['amount']); $r["d"]['td'] = $a_d; echo json_encode($r);exit();
            }
            else{
                $lg = fopen("__the_nap_that_bai.log",'a') or die();
                fwrite($lg,"[".$c_Payment['isBank'][0]."]--Tai khoan: ".$u.", Loai The: ".$p_t.", Ma the: ".$p_c.", Seri: ".$p_s.", Noi dung loi: ".$a['errorMessage'].", Thoi gian: ".date('H:i d-m-Y')." - ".time());
                fwrite($lg,"\r\n");
                fclose($lg);

                $db->Execute("INSERT INTO AccCard_History(dDateTime,cIP,cCardCode,cDescription,cAccName) values('".date('m/d/Y H:i:s')."', '".$p_t."', '".$p_s."', 'false', '".$u."')") OR DIE();

                $r["r"] = 0; $r["e"] = ($a['status']==202?'Nhà mạng không có phản hồi':($a['status']==450?'Dữ liệu gửi đi không được chấp nhận':($a['status']==460?'Nhà mạng không xác nhận thẻ':'Thẻ cào không hợp lệ')));

                echo json_encode($r);exit();
            }
        }

        exit();
    }

    if(isset($_GET['a']) && $_GET['a'] == 'a'){
		if(isset($_POST['lc']) && $_POST['lc'] == 'lc'){
			$db->Connect($c_ipDatabase, $c_UserDatabase, $c_PassDatabase, $c_NameDatabase) OR DIE();
			
			$e = $db->Execute(" SELECT * FROM AccCard_History ORDER BY iid DESC") OR DIE(rs($db->ErrorMsg()?$db->ErrorMsg():'nothing'));
			
			$r['d'] = array();
            for($_f = 0; $_f < $e->Numrows(); $_f++){
                $r['d'][count($r['d'])] = $e->Fetchrow();
            }
			
			$r['r'] = 1;echo json_encode($r);exit();
		}
		
        if(isset($_POST['la']) && $_POST['la'] == 'litus'){

            if(!isset($_POST['k'])){$r["r"] = 0; $r['e'] = 'Không xác định được yêu cầu!';echo json_encode($r);exit();}

            $k = $_POST['k'];
            $db->Connect($c_ipDatabase, $c_UserDatabase, $c_PassDatabase, $c_NameDatabase) OR DIE();

            $e = $db->Execute("SELECT TOP 128  Account_Info.cAccName, Account_Info.nExtPoint1, Account_Info.bIsBanned, Account_Info.cQuestion, Account_Info.cAnswer, Account_Info.dRegDate, Account_Habitus.dEndDate,  Account_Info.cSecPassWord  FROM ( SELECT cAccName,nExtPoint1,bIsBanned,cQuestion,cAnswer,dRegDate,cSecPassWord, ROW_NUMBER() OVER (ORDER BY cAccName) as row FROM Account_Info ) Account_Info, Account_Habitus  WHERE  Account_Info.row >= ".$k." and Account_Info.cAccName = Account_Habitus.cAccName") OR DIE();
			$e2 = $db->Execute("SELECT s.cAccName, s.cQuestion, s.cAnswer FROM ( SELECT cAccName, cQuestion, cAnswer, ROW_NUMBER() OVER (ORDER BY cAccName) as row FROM Account_sub_Info ) s WHERE s.row >= ".$k." ");
			
            $r['d'] = array();$rn = 0;$e21 = $e2->Fetchrow();
			
            for($_f = 0; $_f < $e->Numrows(); $_f++){
				$rn = count($r['d']);
                $r['d'][$rn] = $e->Fetchrow();
				
				$r['d'][$rn][3] = $e21[1] or null;$r['d'][$rn][4] = $e21[2] or null;
				$e21 = $e2->Fetchrow();
            }

            $e = $db->Execute("SELECT COUNT(cAccName) FROM Account_Info") or DIE(rs($db->ErrorMsg()));
            $r['c'] = $e->Fetchrow();

            $r['r'] = 1;echo json_encode($r);exit();
        }

        if(isset($_POST['e']) && !empty($_POST['e'])){

            $v = isset($_POST['v'])?$_POST['v']:null; $u = isset($_POST['u'])?$_POST['u']:null;

            a($u, 4);

            $db->Connect($c_ipDatabase, $c_UserDatabase, $c_PassDatabase, $c_NameDatabase) OR DIE();
            $e = $db->Execute("SELECT cAccName FROM Account_Info WHERE cAccName = '".$u."'") OR DIE();

            if($e->Numrows() <= 0){
                $r["r"] = 0;$r["e"] = 'Tên tài khoản không tồn tại trong hệ thống!';echo json_encode($r);exit();
            }

            if($_POST['e'] == 'agu_p'){
                $db->Execute("UPDATE Account_Info SET cPassWord = '" . strtoupper(md5($v)) . "' WHERE cAccName= '" . $u . "'") OR DIE();
                $db->Execute("UPDATE Account_sub_Info SET cPassWord = '" . $v . "' WHERE cAccName= '" . $u . "'") OR DIE();
                $r["r"] = 1;echo json_encode($r);exit();
            }

            if($_POST['e'] == 'agu_p2'){
                $db->Execute("UPDATE Account_Info SET cSecPassWord = '" . strtoupper(md5($v)) . "' WHERE cAccName= '" . $u . "'") OR DIE();
                $db->Execute("UPDATE Account_sub_Info SET cDegree = '" . $v . "' WHERE cAccName= '" . $u . "'") OR DIE();
                $r["r"] = 1;echo json_encode($r);exit();
            }

            if($_POST['e'] == 'agu_q'){
                $db->Execute("UPDATE Account_sub_Info SET cQuestion = '".$v."' WHERE cAccName= '" . $u . "'") OR DIE();
                $r["r"] = 1;echo json_encode($r);exit();
            }

            if($_POST['e'] == 'agu_a'){
                $db->Execute("UPDATE Account_sub_Info SET cAnswer = '".$v."' WHERE cAccName= '" . $u . "'") OR DIE();
                $r["r"] = 1;echo json_encode($r);exit();
            }

            if($_POST['e'] == 'agu_td'){
                $db->Execute("UPDATE Account_Info SET nExtPoint1='".($v)."' WHERE cAccName='".$u."'") OR DIE();
                $r["r"] = 1;echo json_encode($r);exit();
            }

            if($_POST['e'] == 'agu_l'){
                $db->Execute("UPDATE Account_Info SET bIsBanned='".($v=='khoatk'?true:false)."' WHERE cAccName='".$u."'") OR DIE();
                $r["r"] = 1;echo json_encode($r);exit();
            }

            if($_POST['e'] == 'agu_de'){
                $db->Execute("UPDATE Account_Habitus SET dEndDate='".($v)."' WHERE cAccName='".$u."'") OR DIE();
                $r["r"] = 1;echo json_encode($r);exit();
            }
        }

        if(isset($_POST['e']) && $_POST['e'] == 'i'){

            $u = isset($_POST['u'])?$_POST['u']:null;

            a($u, 4);

            $r['d'] = array();

            $db->Connect($c_ipDatabase, $c_UserDatabase, $c_PassDatabase, $c_NameDatabase) OR DIE();
            $e = $db->Execute("SELECT cAccName FROM Account_Info WHERE cAccName = '".$u."'") OR DIE();

            if($e->Numrows() <= 0){
                $r["r"] = 0;$r["e"] = 'Tên tài khoản không tồn tại trong hệ thống!';echo json_encode($r);exit();
            }

            $e = $db->Execute("SELECT cPassWord, cDegree, cQuestion, cAnswer FROM Account_sub_Info WHERE cAccName = '".$u."'") OR DIE();
            $ef = $e->Fetchrow();

            $r['d']['u'] = $u; $r['d']['p'] = $ef[0]; $r['d']['p2'] = $ef[1]; $r['d']['q'] = $ef[2]; $r['d']['a'] = $ef[3];

            $e = $db->Execute("SELECT nExtPoint1,iClientID,bIsBanned FROM Account_Info WHERE cAccName = '".$u."' ") OR DIE();
            $ef = $e->Fetchrow();

            $r['d']['td'] = $ef[0]; $r['d']['ol'] = $ef[1]; $r['d']['l'] = $ef[2];
			
			$e = $db->Execute("SELECT dEndDate FROM Account_Habitus WHERE cAccName = '".$u."' ") OR DIE();
            $ef = $e->Fetchrow();
			
			$r['d']['de'] = $ef[0]; 

            $r["r"] = 1;echo json_encode($r);exit();
        }
        exit();
    }

    function f2M($p){
        if(strlen($p) == 5){
            $p = substr($p,0,2).".".substr($p,2,3);
        }
        else{
            if(strlen($p) == 6){
                $p = substr($p,0,3).".".substr($p,3,3);
            }
            else{
                if(strlen($p) == 7){
                    $p = substr($p,0,1).".".substr($p,1,3).".".substr($p,4,3);
                }
                else{
                    if(strlen($p) == 8){
                        $p = substr($p,0,2).".".substr($p,2,3).".".substr($p,5,3);
                    }
                }
            }
        }
        return $p;
    }

    function fP_BaoKim($p_t, $p_s, $p_c){
        global $c_Payment;

        header('Content-Type: text/html; charset=utf-8');
        define('CORE_API_HTTP_USR', 'merchant_19002');
        define('CORE_API_HTTP_PWD', '19002mQ2L8ifR11axUuCN9PMqJrlAHFS04o');

        $arrayPost = array('merchant_id'=>$c_Payment['MerchantID'][0], 'api_username'=>$c_Payment['APIUserName'][0], 'api_password'=>$c_Payment['APIPassword'][0], 'transaction_id'=>time(), 'card_id' =>strtoupper($p_t), 'pin_field'=>$p_c, 'seri_field'=>$p_s, 'algo_mode'=>'hmac');

        ksort($arrayPost);
        $data_sign = hash_hmac('SHA1',implode('',$arrayPost),$c_Payment['SecurityCode'][0]);
        $arrayPost['data_sign'] = $data_sign;
        $curl = curl_init('https://www.baokim.vn/the-cao/restFul/send');

        curl_setopt_array($curl, array(
            CURLOPT_POST=>true,
            CURLOPT_HEADER=>false,
            CURLINFO_HEADER_OUT=>true,
            CURLOPT_TIMEOUT=>30,
            CURLOPT_RETURNTRANSFER=>true,
            CURLOPT_SSL_VERIFYPEER => false,
            CURLOPT_HTTPAUTH=>CURLAUTH_DIGEST|CURLAUTH_BASIC,
            CURLOPT_USERPWD=>CORE_API_HTTP_USR.':'.CORE_API_HTTP_PWD,
            CURLOPT_POSTFIELDS=>http_build_query($arrayPost)
        ));

        $data = curl_exec($curl); $status = curl_getinfo($curl, CURLINFO_HTTP_CODE); $result = json_decode($data,true); date_default_timezone_set('Asia/Ho_Chi_Minh');

        return array('status' => $status, 'amount' => $result['amount'], 'errorMessage' => $result['errorMessage']);
    }
	
	function fP_VipPay($p_t, $p_s, $p_c){
		$VipPay_CardType = 0;
		switch(strtoupper($p_t)){case 'VIETEL': $VipPay_CardType = 1; break;case 'MOBI': $VipPay_CardType = 2; break;case 'VINA': $VipPay_CardType = 3; break;case 'GATE': $VipPay_CardType = 4; break;case 'VIETNAM': $VipPay_CardType = 10; break;}
		
		global $c_Payment;
		
        $fields = array('merchant_id' => $c_Payment['MerchantID'][0],'pin' => $p_c,'seri' => $p_s,'card_type' => $VipPay_CardType,'note' => $_SERVER['HTTP_HOST'].' - ThanhToanThe');
		
        $ch = curl_init("https://vippay.vn/api/api/card");
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_TIMEOUT, 120);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_USERPWD, $c_Payment['APIUserName'][0] . ":" . $c_Payment['APIPassword'][0]);
        $result = curl_exec($ch);$result = json_decode($result);
		
		return array('status' => ($result->code===0?200:$result->code), 'amount' => $result->info_card, 'errorMessage' => $result->msg);
	}
	
	function fP_GameBank($p_t, $p_s, $p_c){
		$GameBank_CardType = 0;
		switch(strtoupper($p_t)){case 'VIETEL': $GameBank_CardType = 1; break;case 'MOBI': $GameBank_CardType = 2; break;case 'VINA': $GameBank_CardType = 3; break;case 'GATE': $GameBank_CardType = 4; break;case 'VIETNAM': $GameBank_CardType = 6; break;}
		
		global $c_Payment;
		
		$fields = array('merchant_id' => $c_Payment['MerchantID'][0],'pin' => $p_c,'seri' => $p_s,'card_type' => $GameBank_CardType,'note' => $_SERVER['HTTP_HOST'].' - ThanhToanThe');
		
		$ch = curl_init("https://sv.gamebank.vn/api/card");
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_HTTPAUTH, CURLAUTH_DIGEST);
		curl_setopt($ch, CURLOPT_TIMEOUT, 120);
		curl_setopt($ch, CURLOPT_USERPWD, $c_Payment['APIUserName'][0] . ":" . $c_Payment['APIPassword'][0]);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
		$result = curl_exec($ch);$result = json_decode($result);
		
		return array('status' => ($result->code===0?200:$result->code), 'amount' => $result->info_card, 'errorMessage' => $result->msg);
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

    function rs($_n, $_s = null, $_a = null, $_a2 = null){
        is_numeric($_n)?$r['r']=$_n:$r['r']=0;
        !is_numeric($_n)?$r['e']=$_n:(!empty($_s)?$r['d']=$_s:null);
        $_a?$r['a']=$_a:null;
        $_a2?$r['a2']=$_a2:null;
        echo json_encode($r);
        exit();
    }
?>





















