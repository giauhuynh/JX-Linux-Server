<?php
	error_reporting(0);
    session_start();
    require 'config.php';
    require 'func.php';
    fC(); /* check SQL Injection */

    if(isset($_POST['r']) && $_POST['r'] == 'login'){
        $u = $_POST['u']; $p = $_POST['p'];

        a($u, 4); a($p, 4);

        $a = c('r=l', array('u'=>$u, 'p'=>$p));

        if($a['r'] == 1){
            $_SESSION['u'] = $a['d']['tk']; $_SESSION['p'] = $a['d']['mk1']; $_SESSION['ol'] = $a['d']['ol']; $_SESSION['td'] = $a['d']['td']; $_SESSION['tnd'] = $a['d']['tnd']; $_SESSION['dc'] = $a['d']['dc']; $_SESSION['gt'] = $a['d']['gt']; $_SESSION['ns'] = $a['d']['ns']; $_SESSION['sdt'] = $a['d']['sdt']; $_SESSION['em'] = $a['d']['em']; $_SESSION['q'] = $a['d']['q']; $_SESSION['a'] = $a['d']['a']; $_SESSION['mk2'] = $a['d']['mk2'];
			$_SESSION['de'] = $a['d']['de'];
			
            if(isset($a['d']['hisc']) && !empty($a['d']['hisc'])){
                $h = '';
                for($i = 0; $i < count($a['d']['hisc']); $i++){
                    $h .= '<div class="rA_d9"><div class="rA_d10 l"><span class="rA_s9 n">'.($i+1).'</span><span class="rA_s9 d">'.$a['d']['hisc'][$i]['nn'].'</span><span class="rA_s9 t">'.$a['d']['hisc'][$i]['lt'].'</span><span class="rA_s9 s">'.$a['d']['hisc'][$i]['sr'].'</span><span class="rA_s9 a">'.$a['d']['hisc'][$i]['mg'].'</span><span class="rA_s9 x">'.$a['d']['hisc'][$i]['mg'].'</span></div></div>';
                }
                $_SESSION['hisc'] = $h;
            }
        }
        else{
            $r["r"] = 0;$r["e"] = $a['e']?$a['e']:'Máy chủ dữ liệu không phản hồi';
            echo json_encode($r);exit();
        }
    }

    $l = (isset($_SESSION['u']) && !empty($_SESSION['u']))?'
        <div style="text-align: center;">
            <p class="rA_p1" onclick="fF(2)"><a class="rA_a1">Tên tài khoản: </a><a class="rA_a2">'.$_SESSION['u'].'</a></p>
            <p class="rA_p1" onclick="fF(3)"><a class="rA_a1">Tiền đồng: </a><a class="rA_a2">'.(isset($_SESSION['td'])?$_SESSION['td']:0).'</a></p>
            <p class="rA_p1" onclick="fF(2)"><a class="rA_a1">Game status: </a><a class="rA_a2">'.(isset($_SESSION['ol'])?($_SESSION['ol']?'Online':'Offline'):'N/A').'</a></p>
            <div class="ac912121">
                <span class="ac9121213 Right"><input class="ac9121212 ac9121214 ac9121215" type="submit" value="Đăng xuất" onclick="fF(5)"></span>
             </div>
        </div>
    ':'
        <div class="ac912121">
            <span class="ac9121213 Right"><input id="iAlU" class="ac9121212" type="text" placeholder="Tên đăng nhập (Tài khoản)" maxlength="32" autocomplete="off"></span>
        </div>
        <div class="ac912121">
            <span class="ac9121213 Right"><input id="iAlP" class="ac9121212" type="password" placeholder="Mật khẩu đăng nhập" maxlength="32" autocomplete="off"></span>
        </div>
        <div class="ac912121" style="text-align: center;"><a class="forg" onclick="fI(6)">Quên mật khẩu</a></div>
        <div class="ac912121">
            <span class="ac9121213 Right"><input class="ac9121212 ac9121214" type="submit" value="Đăng nhập" onclick="fL()"></span>
        </div>
    ';

    if(isset($_POST['r'])){
        if($_POST['r'] == 'reg'){
            $u = $_POST['u'];$p = $_POST['p'];
			
			if((strpos($u, '_') || strpos($u, '-') || strpos($u, '.') || strpos($u, ',')) > 0){
				$r["r"] = 0; $r["e"] = $a['e']?$a['e']:'Không được phép sử dụng ký tự đặt biệt!';
				echo json_encode($r);exit();
			}

            a($u, 4);a($p, 4);

            $r = array();

            $a = c('r=r', array('u'=>$u, 'p'=>$p));

            if($a['r'] == 1)$r["r"] = 1;
            else{
                $r["r"] = 0; $r["e"] = $a['e']?$a['e']:'Máy chủ dữ liệu không phản hồi';
            }

            echo json_encode($r);exit();
        }

        if($_POST['r'] == 'login'){
            $r["r"] = 1;$r["d"] = $l;
            echo json_encode($r);exit();
        }

        if($_POST['r'] == 'mi'){
            if(!isset($_SESSION['u']) || empty($_SESSION['u'])){$r["r"] = 0;$r["e"] = 'Bạn phải đăng nhập để sử dụng tính năng này';echo json_encode($r);exit();}
            $r["r"] = 1;$r["d"] = '
            <div class="rA_d1">
                <div class="rA_d3">
                    <p>Thông tin đăng nhập</p>
                    <ul><li class="rA_l1">Tên đăng nhập</li><li class="rA_l2">'.$_SESSION['u'].'</li></ul>
                    <ul><li class="rA_l1">Mật khẩu cấp 1</li><li class="rA_l2">************</li><li class="rA_l3" onclick="fI(1)">Đổi mật khẩu<span></span></li></ul>
                    <ul><li class="rA_l1">Mật khẩu cấp 2</li><li class="rA_l2">'.(!empty($_SESSION['mk2'])?'************':'<span style="color:red">Chưa cập nhật</span>').'</li><li class="rA_l3" onclick="fI(2)">Đổi mật khẩu cấp 2<span></span></li></ul>
                    <ul><li class="rA_l1">Số dư tiền đồng</li><li class="rA_l2">'.(!empty($_SESSION['td'])?$_SESSION['td']:'0').' Tiền đồng</li><li class="rA_l3" onclick="fF(3)">Nạp tiền đồng<span></span></li></ul>
					<ul><li class="rA_l1">Thời hạn sử dụng</li><li class="rA_l2">'.(!empty($_SESSION['de'])?$_SESSION['de']:'0').' </li><li class="rA_l3" onclick="fF(3)">Nạp tiền đồng<span></span></li></ul>
                </div>
                <div class="rA_d3">
                    <p>Bảo mật cho tài khoản này</p>
                    <ul><li class="rA_l1">Câu hỏi bảo mật</li><li class="rA_l2">'.(!empty($_SESSION['q'])?$_SESSION['q']:'<span style="color:red">Chưa cập nhật</span>').'</li><li class="rA_l3" onclick="fI(3)">Cập nhật bảo mật<span></span></li></ul>
                    <ul><li class="rA_l1">Câu trả lời bảo mật</li><li class="rA_l2">'.(!empty($_SESSION['a'])?$_SESSION['a']:'<span style="color:red">Chưa cập nhật</span>').'</li></ul>
                </div>
                <div class="rA_d3">
                    <p>Chứng thực tài khoản</p>
                    <ul><li class="rA_l1">Sử dụng số điện thoại</li><li class="rA_l2">'.(!empty($_SESSION['sdt'])?$_SESSION['sdt']:'<span style="color:red">Chưa cập nhật</span>').'</li><li class="rA_l3" onclick="fI(4)">Cập nhật chứng thực<span></span></li></ul>
                    <ul><li class="rA_l1">Sử dụng địa chỉ Email</li><li class="rA_l2">'.(!empty($_SESSION['em'])?$_SESSION['em']:'<span style="color:red">Chưa cập nhật</span>').'</li></ul>
                </div>
                <div class="rA_d3 e">
                    <p>Thông tin người sử dụng</p>
                    <ul><li class="rA_l1">Tên người dùng</li><li class="rA_l2">'.(!empty($_SESSION['tnd'])?$_SESSION['tnd']:'<span style="color:red">Chưa cập nhật</span>').'</li><li class="rA_l3" onclick="fI(5)">Cập nhật thông tin<span></span></li></ul>
                    <ul><li class="rA_l1">Địa chỉ</li><li class="rA_l2">'.(!empty($_SESSION['dc'])?$_SESSION['dc']:'<span style="color:red">Chưa cập nhật</span>').'</li></ul>
                    <ul><li class="rA_l1">Giới tính</li><li class="rA_l2">'.(!empty($_SESSION['gt'])?$_SESSION['gt']:'<span style="color:red">Chưa cập nhật</span>').'</li></ul>
                    <ul><li class="rA_l1">Ngày sinh</li><li class="rA_l2">'.(!empty($_SESSION['ns'])?$_SESSION['ns']:'<span style="color:red">Chưa cập nhật</span>').'</li></ul>
                </div>
            </div>
            <div class="rA_d2">
                <p><strong>Thông tin tài khoản người dùng</strong></p>
                <p>Bạn có thể xem lại các thông tin có liên quan đến tài khoản của mình ở đây.</p>
                <p>Bạn nên kiểm tra lại các thông tin bảo mật của tài khoản, nếu chưa cập nhật hãy tiến hành cập nhật các thông tin này.</p>
                <p>Các thông tin bảo mật của tài khoản dùng để lấy lại quyền sử dụng tài khoản.</p>
            </div>
            ';

            echo json_encode($r);exit();
        }

        if($_POST['r'] == 'mp'){
            if(!isset($_SESSION['u']) || empty($_SESSION['u'])){$r["r"] = 0;$r["e"] = 'Bạn phải đăng nhập để sử dụng tính năng này';echo json_encode($r);exit();}
            $r["r"] = 1;$r["d"] ='
            <div class="rA_d1 p">
                <div class="rA_d3 p">
                    <div class="ac911" style="margin-top: 20px;">NẠP TIỀN | PAYMENT</div>
                </div>
                <form class="rA_f1" method="post" onsubmit="return false">
                    <div class="rA_d4 d">
                        <span class="rA_s4 s">Loại thẻ cào</span>
                        <span class="rA_s5 s">
                            <select class="rA_i1" id="p_t">
                                '.($__c['payment_al'][0][0][1]?'<option value="VIETEL">Thẻ Viettel</option>':'').'
                                '.($__c['payment_al'][0][1][1]?'<option value="MOBI">Thẻ MobiFone</option>':'').'
                                '.($__c['payment_al'][0][2][1]?'<option value="VINA">Thẻ VinaPhone</option>':'').'
                                '.($__c['payment_al'][0][3][1]?'<option value="VIETNAM">Thẻ VietnamMobi</option>':'').'
                                '.($__c['payment_al'][0][4][1]?'<option value="GATE">Thẻ Gate</option>':'').'
                            </select>
                        </span>
                    </div>
                    <div class="rA_d4 d">
                        <span class="rA_s4 s">Số Seri thẻ</span>
                        <span class="rA_s5 s">
                            <input  id="p_s" class="rA_i1" type="text" placeholder="Số seri của thẻ cào" maxlength="32" autocomplete="off">
                        </span>
                    </div>
                    <div class="rA_d4 d">
                        <span class="rA_s4 s">Mã thẻ cào</span>
                        <span class="rA_s5 s">
                            <input  id="p_c" class="rA_i1" type="text" placeholder="Mã số dưới lớp tráng bạc" maxlength="32" autocomplete="off">
                        </span>
                    </div>
                    <div class="rA_d4 d">
                        <span class="rA_s4 s">Mã xác nhận</span>
                        <span class="rA_s5 s">
                            <input  id="p_v" class="rA_i1" type="text" placeholder="Mã hình bên cạnh" maxlength="4" autocomplete="off" style="width: 65%;">
                            <img src="captcha.php?id=payment" style="position: absolute;border: 1px solid #ccc;border-radius: 3px;margin-left: 7px;">
                        </span>
                    </div>
                    <div class="rA_d4 d">
                        <span class="rA_s4 s" style="height: 40px;"></span>
                        <span class="rA_s5 s"><input class="rA_i1 i" type="submit" value="Thanh toán thẻ" onclick="fPm()"></span>
                    </div>
                </form>
            </div>
            <div class="rA_d2">
                <p><strong>Nạp tiền đồng cho tài khoản</strong></p>
                <p>Tỉ giá quy đổi hiện tại: <br>1.000 VNĐ = <strong style="color:#009bdf;">'.($__c['payment_am'][0]).'</strong> Tiền đồng</p>
                '.(($__c['payment_ae'][0][0][0]>1)?'
                    <p style="color: red;"><strong>Hiện đang có 1 chương trình khuyến mãi<br><span style="color: #009c38;font-size: 16px;">x'.$__c['payment_ae'][0][0][0].' giá trị thẻ</span><strong><br>áp dụng cho mệnh giá thẻ từ: '.$__c['payment_ae'][0][1][0].' trở lên.</p>
                ':'').'
                <p>Trạng thái thẻ cho phép
                    <br><span class="rA_s1">Thẻ Viettel:</span>'.($__c['payment_al'][0][0][1]?"<span class='rA_s2'>Đang hoạt động</span>":"<span class='rA_s3'>Đang bảo trì</span>").'
                    <br><span class="rA_s1">Thẻ MobiFone:</span>'.($__c['payment_al'][0][1][1]?"<span class='rA_s2'>Đang hoạt động</span>":"<span class='rA_s3'>Đang bảo trì</span>").'
                    <br><span class="rA_s1">Thẻ VinaPhone:</span>'.($__c['payment_al'][0][2][1]?"<span class='rA_s2'>Đang hoạt động</span>":"<span class='rA_s3'>Đang bảo trì</span>").'
                    <br><span class="rA_s1">Thẻ VietnamMobi:</span>'.($__c['payment_al'][0][3][1]?"<span class='rA_s2'>Đang hoạt động</span>":"<span class='rA_s3'>Đang bảo trì</span>").'
                    <br><span class="rA_s1">Thẻ Gate: </span>'.($__c['payment_al'][0][4][1]?"<span class='rA_s2'>Đang hoạt động</span>":"<span class='rA_s3'>Đang bảo trì</span>").'
                </p>
                <p>Sau khi nhấn vào nút nạp thẻ xin vui lòng đừng tắt trình duyện web cho đến khi có kết quả trả về tự hệ thống. Nếu phát sinh lỗi xin liên hệ bộ phận hỗ trợ để được trợ giúp.</p>
                <p>Sau khi nạp thẻ thành công, vui lòng thoát khỏi trò chơi và đăng nhập lại để cập nhật tiền đồng.</p>
            </div>
            ';

            echo json_encode($r);exit();
        }

        if($_POST['r'] == 'mh'){
            if(!isset($_SESSION['u']) || empty($_SESSION['u'])){$r["r"] = 0;$r["e"] = 'Bạn phải đăng nhập để sử dụng tính năng này';echo json_encode($r);exit();}
            $r["r"] = 1;$r["d"] ='
            <div class="rA_d5">
                <p class="rA_p2"><span class="rA_s6"></span>Số dư khả dụng</p>
                <div class="rA_d6">
                    <p><span class="rA_s7"><strong>Số dư tiền đồng</strong></span><span class="rA_s8"><strong>'.(isset($_SESSION['td'])?$_SESSION['td']:'0').'</strong></span></p>
                    <p><span class="rA_s7"><strong>Tiền đồng thưởng</strong></span><span class="rA_s8"><strong>0</strong></span></p>
                </div>
                <p class="rA_p3">
                    <a class="rA_a3" onclick="fF(3)">Nạp tiền đồng</a>
                    <a class="rA_a4" onclick="fN(\'Xin kiểm tra bảng lịch sử tiền đồng ở bên dưới\')">Lịch sử đổi tiền đồng</a>
                    <a class="rA_a4" onclick="fN(\'Xin kiểm tra bảng lịch sử tiền đồng ở bên dưới\')">Lịch sử nạp tiền đồng</a>
                </p>
            </div>
            <div class="rA_d7">
                <div class="rA_d8"><span>Lịch sử thanh toán tiền đồng</span></div>
                <div class="rA_d9"><div class="rA_d10"><span class="rA_s9 n">Số TT</span><span class="rA_s9 d">Ngày thanh toán</span><span class="rA_s9 t">Loại thẻ</span><span class="rA_s9 s">Số Seri thẻ</span><span class="rA_s9 a">Giá trị thẻ</span><span class="rA_s9 x">Tiền đồng</span></div></div>
                '.(!empty($_SESSION['hisc'])?$_SESSION['hisc']:'<div class="rA_d9"><div class="rA_d10 l" style="text-align:center;">Hiện chưa có lịch sử thanh toán thẻ</div></div>').'
            </div>
            ';

            echo json_encode($r);exit();
        }

        if($_POST['r'] == 'mo'){
            unset($_SESSION['u']); unset($_SESSION['p']); unset($_SESSION['ol']); unset($_SESSION['td']); unset($_SESSION['tnd']); unset($_SESSION['dc']); unset($_SESSION['gt']); unset($_SESSION['ns']); unset($_SESSION['sdt']); unset($_SESSION['em']); unset($_SESSION['q']); unset($_SESSION['a']); unset($_SESSION['mk2']); unset($_SESSION['hisc']); unset($_SESSION['Securi_P']);

            $r["r"] = 1;$r["d"] = '<script>fF(1);</script>';

            echo json_encode($r);exit();
        }

        if($_POST['r'] == 'mr'){
            $r["r"] = 1;$r["d"] = '
            <div class="ac911" style="margin-top: 20px;">TÀI KHOẢN</div>
            <div class="ac9121">
                <h3>Đăng ký tài khoản mới</h3>
                <em class="ac91211">hoặc</em>
                <form class="ac91212" method="post" onsubmit="return false">
                    <div class="ac912121">
                        <span class="ac9121211">Tên đăng nhập</span>
                        <span class="ac9121213"><input id="iArU" class="ac9121212" type="text" placeholder="Tên đăng nhập (Tài khoản)" maxlength="32" autocomplete="off"></span>
                    </div>
                    <div class="ac912121">
                        <span class="ac9121211">Mật khẩu</span>
                        <span class="ac9121213"><input id="iArP" class="ac9121212" type="password" placeholder="Mật khẩu của tài khoản" maxlength="32" autocomplete="off"></span>
                    </div>
                    <div class="ac912121">
                        <span class="ac9121211">Xác nhận mật khẩu</span>
                        <span class="ac9121213"><input id="iArPr" class="ac9121212" type="password" placeholder="Nhập lại mật khẩu ở trên" maxlength="32" autocomplete="off"></span>
                    </div>
                    <div class="ac912121">
                        <span class="ac9121211" style="height: 40px;"></span>
                        <span class="ac9121213"><input class="ac9121212 ac9121214" type="submit" value="Tạo tài khoản" onclick="fR()"></span>
                    </div>
                </form>
            </div>
            <div class="ac9121" style="width: 36%;float: left;padding-left: 4%;border: none;padding-right: 0;">
                <h3>Đăng nhập vào tài khoản</h3>
                <form class="ac91212" method="post" onsubmit="return false" id="iLogin">'.$l.'</form>
            </div>
            ';

            echo json_encode($r);exit();
        }

        if($_POST['r'] == 'im1'){
            $r["r"] = 1;$r["d"] ='
                <span class="rAi_s1">
                    <span class="rAi_s2">Cập nhật mật khẩu cấp 1</span>
                    <span class="rAi_s3">
                        <input id="iI_po" class="rAi_i1" placeholder="Mật khẩu cấp 1 hiện tại" type="password">
                        <input id="iI_pn" class="rAi_i1" placeholder="Mật khẩu cấp 1 mới" type="password">
                        <input id="iI_pnr" class="rAi_i1" placeholder="Xác nhận lại mật khẩu mới" type="password">
                    </span>
                </span>
            ';
            echo json_encode($r);exit();
        }

        if($_POST['r'] == 'im2'){
            $r["r"] = 1;$r["d"] ='
                <span class="rAi_s1">
                    <span class="rAi_s2">Cập nhật mật khẩu cấp 2</span>
                    <span class="rAi_s3">
                        <input id="iI_p2o" class="rAi_i1" placeholder="Mật khẩu cấp 2 cũ (chưa có để trống)" type="password">
                        <input id="iI_p2n" class="rAi_i1" placeholder="Mật khẩu cấp 2 mới" type="password">
                        <input id="iI_p2nr" class="rAi_i1" placeholder="Xác nhận lại mật khẩu mới" type="password">
                    </span>
                </span>
            ';
            echo json_encode($r);exit();
        }

        if($_POST['r'] == 'im3'){
            $r["r"] = 1;$r["d"] ='
                <span class="rAi_s1">
                    <span class="rAi_s2">Cập nhật Bảo mật cho tài khoản</span>
                    <span class="rAi_s3">
                        <select class="rAi_i1" id="iI_q">
                            <option value="cap_1_ban_hoc_truong_nao">Cấp 1 bạn học trường nào</option>
                            <option value="thu_cung_cua_ban_la_gi">Thú cưng của bạn là gì</option>
                            <option value="ten_nguoi_trong_mong_cua_ban">Tên người trong mộng của bạn</option>
                            <option value="tuong_lai_ban_dinh_lam_gi">Tương lai bạn định làm gì</option>
                        </select>
                        <input id="iI_a" class="rAi_i1" placeholder="Câu trả lời bảo mật của bạn" type="text">
                    </span>
                </span>
            ';
            echo json_encode($r);exit();
        }

        if($_POST['r'] == 'im4'){
            $r["r"] = 1;$r["d"] ='
                <span class="rAi_s1">
                    <span class="rAi_s2">Cập nhật chứng thực cho tài khoản</span>
                    <span class="rAi_s3">
                        <input id="iI_sd" class="rAi_i1" placeholder="Bạn sử dụng số điện thoại nào?" type="text">
                        <input id="iI_em" class="rAi_i1" placeholder="Bạn sử dụng địa chỉ Email nào?" type="text">
                    </span>
                </span>
            ';
            echo json_encode($r);exit();
        }

        if($_POST['r'] == 'im5'){
            $r["r"] = 1;$r["d"] ='
                <span class="rAi_s1">
                    <span class="rAi_s2">Cập nhật thông tin người dùng</span>
                    <span class="rAi_s3">
                        <input id="iI_tnd" class="rAi_i1" placeholder="Họ tên của bạn là gì?" type="text">
                        <input id="iI_dc" class="rAi_i1" placeholder="Bạn hiện đang sống ở đâu?" type="text">
                        <input id="iI_gt" class="rAi_i1" placeholder="(Giới tính) Bạn thuộc trường phái nào?" type="text">
                        <input id="iI_ns" class="rAi_i1" placeholder="Bạn sinh năm nao nhiêu?" type="text">
                    </span>
                </span>
            ';
            echo json_encode($r);exit();
        }

        if($_POST['r'] == 'im6'){
            $r["r"] = 1;$r["d"] ='
                <span class="rAi_s1">
                    <span class="rAi_s2">Khôi phục mật khẩu đăng nhập</span>
                    <span class="rAi_s3">
                        <input id="iFu" class="rAi_i1" placeholder="Tài khoản của bạn là gì?" type="text">
                        <input id="iFp2" class="rAi_i1" placeholder="Mã cấp 2 của tài khoản này là gì?" type="password">
                        <input id="iFpn" class="rAi_i1" placeholder="Mật khẩu đăng nhập mới là gì?" type="password">
                        <input id="iFpnr" class="rAi_i1" placeholder="Xác nhận lại mật khẩu ở trên" type="password">
                    </span>
                </span>
            ';
            echo json_encode($r);exit();
        }

        if($_POST['r'] == 'ime_p1'){
            $pc = (isset($_POST['r2']) && !empty($_POST['r2']) && $_POST['r2'] == 'p2');

            $p = $pc&&isset($_POST['p2o'])?$_POST['p2o']:$_POST['po']; $n = $pc && isset($_POST['p2n'])?$_POST['p2n']:$_POST['pn'];

            !$pc?a($p, 4):null; a($n, 4);

            if(!isset($_SESSION['u']) || empty($_SESSION['u'])){
                $r["r"] = 0;$r["e"] ='Bạn chưa đăng nhập';
                echo json_encode($r);exit();
            }

            if(strtoupper(md5($p)) != ($pc?(isset($_SESSION['mk2'])?$_SESSION['mk2']:''):$_SESSION['p'])){
                $r["r"] = 0;$r["e"] = 'Mật khẩu cũ không chính xác, xin vui lòng kiểm tra lại';
                echo json_encode($r);exit();
            }

            $a = c('r=rp'.($pc?'&e=p2':''), array('u'=>$_SESSION['u'], 'p'=>$p, 'pn'=>$n));

            if($a['r'] == 1){
                $pc?($_SESSION['mk2'] = $n):($_SESSION['p'] = $n); $r['r'] = 1;
            }
            else{
                $r['r'] = 0; $r['e'] = $a['e']?$a['e']:'Máy chủ database không có phản hồi';
            }

            echo json_encode($r);exit();
        }

        if($_POST['r'] == 'ime_qa'){
            $q = $_POST['q']; $as = $_POST['a'];

            a($as, 4);

            if(!isset($_SESSION['u']) || empty($_SESSION['u'])){
                $r["r"] = 0;$r["e"] ='Bạn chưa đăng nhập';
                echo json_encode($r);exit();
            }

            $a = c('r=qa', array('u'=>$_SESSION['u'], 'q'=>$q, 'a'=>$as));

            if($a['r'] == 1){
                $_SESSION['q'] = $q; $_SESSION['a'] = $as; $r['r'] = 1;
            }
            else{
                $r['r'] = 0; $r['e'] = $a['e']?$a['e']:'Máy chủ database không có phản hồi';
            }

            echo json_encode($r);exit();
        }

        if($_POST['r'] == 'ime_se'){
            $s = $_POST['s']; $e = $_POST['e'];

            a($s, 9); a($e, 3);

            if(!isset($_SESSION['u']) || empty($_SESSION['u'])){
                $r["r"] = 0;$r["e"] ='Bạn chưa đăng nhập'; echo json_encode($r);exit();
            }

            $a = c('r=se', array('u'=>$_SESSION['u'], 's'=>$s, 'e'=>$e));

            if($a['r'] == 1){
                $_SESSION['sdt'] = $s; $_SESSION['em'] = $e; $r['r'] = 1;
            }
            else{
                $r['r'] = 0; $r['e'] = $a['e']?$a['e']:'Máy chủ database không có phản hồi';
            }

            echo json_encode($r);exit();
        }

        if($_POST['r'] == 'ime_ttnd'){
            $tnd = $_POST['tnd']; $dc = $_POST['dc']; $gt = $_POST['gt']; $sn = $_POST['sn'];

            a($tnd, 2); a($dc, 2); a($gt, 2); a($sn, 2);

            if(!isset($_SESSION['u']) || empty($_SESSION['u'])){
                $r["r"] = 0;$r["e"] ='Bạn chưa đăng nhập'; echo json_encode($r);exit();
            }

            $a = c('r=ttnd', array('u'=>$_SESSION['u'], 'tnd'=>$tnd, 'dc'=>$dc, 'gt'=>$gt, 'sn'=>$sn));

            if($a['r'] == 1){
                $_SESSION['tnd'] = $tnd; $_SESSION['dc'] = $dc; $_SESSION['gt'] = $gt; $_SESSION['ns'] = $sn; $r['r'] = 1;
            }
            else{
                $r['r'] = 0; $r['e'] = $a['e']?$a['e']:'Máy chủ database không có phản hồi';
            }

            echo json_encode($r);exit();
        }

        if($_POST['r'] == 'ime_f'){
            $u = $_POST['Fu']; $p2 = $_POST['Fp2']; $pn = $_POST['Fpn'];

            a($u, 4); a($p2, 4); a($pn, 4);

            $a = c('r=f', array('u'=>$u, 'p2'=>$p2, 'pn'=>$pn));

            if($a['r'] == 1){
                $r['d'] = 'Khôi phục mật khẩu đăng nhập thành công<br>Tên tài khoản: '.$u.'<br>Mật khẩu: *********<br>Hiện tại bạn có thể đăng nhập để cập nhật lại bảo mật'; $r['r'] = 1;
            }
            else{
                $r['r'] = 0; $r['e'] = $a['e']?$a['e']:'Máy chủ database không có phản hồi';
            }

            echo json_encode($r);exit();
        }

        if($_POST['r'] == 'pm'){
            $p_t = $_POST['p_t']; $p_s = $_POST['p_s']; $p_c = $_POST['p_c']; $p_v = $_POST['p_v'];

            a($p_t, 2); a($p_s, 4); a($p_c, 4); a($p_v, 4);

            if($p_v != $_SESSION['Securi_P']){
                $r["r"] = 0;$r["e"] ='Mã xác nhận không đúng, xin kiểm tra lại'; echo json_encode($r);exit();
            }

            if(!isset($_SESSION['u']) || empty($_SESSION['u'])){
                $r["r"] = 0;$r["e"] ='Bạn chưa đăng nhập'; echo json_encode($r);exit();
            }

            $a = c('r=p', array('u'=>$_SESSION['u'], 'p_t'=>$p_t, 'p_s'=>$p_s, 'p_c'=>$p_c, 'payment_am'=>$__c['payment_am'][0], 'payment_aeX'=>$__c['payment_ae'][0][0][0], 'payment_aeT'=>$__c['payment_ae'][0][1][0]));

            if($a['r'] == 1){
                $r['d'] = 'Nạp thẻ cào thành công.<br>Loại thẻ: '.$p_t.'<br>Mệnh giá thẻ: '.$a['d']['mgt'].'<br>Nhận được: '.$a['d']['td'].' ngày sử dụng<br>Hạn sử dụng tài khoản hiện tại: '.$a['d']['de'].'<br>Bạn có thể thoát game và đăng nhập lại để kiểm tra.'; $r['r'] = 1;
                $_SESSION['de'] = $a['d']['de'];
                $_SESSION['hisc'] = '<div class="rA_d9"><div class="rA_d10 l"><span class="rA_s9 n">--</span><span class="rA_s9 d">'.Date('d/m/Y',time()).'</span><span class="rA_s9 t">'.$p_t.'</span><span class="rA_s9 s">'.$p_s.'</span><span class="rA_s9 a">'.$a['d']['mgt'].'</span><span class="rA_s9 x">'.$a['d']['td'].'</span></div></div>'.(isset($_SESSION['hisc'])?$_SESSION['hisc']:'');
            }
            else{
                $r['r'] = 0; $r['e'] = $a['e']?$a['e']:'Máy chủ database không có phản hồi';
                $_SESSION['hisc'] = '<div class="rA_d9"><div class="rA_d10 l"><span class="rA_s9 n">--</span><span class="rA_s9 d">'.Date('d/m/Y',time()).'</span><span class="rA_s9 t">'.$p_t.'</span><span class="rA_s9 s">'.$p_s.'</span><span class="rA_s9 a">false</span><span class="rA_s9 x">false</span></div></div>'.(isset($_SESSION['hisc'])?$_SESSION['hisc']:'');
            }

            echo json_encode($r);exit();
        }

        exit();
    }

?>

<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="keywords" content="game lau,vo lam lau,vo lam private" />
    <meta name="description" content="game lau,vo lam lau,vo lam private" />
    <title>Tài khoản</title>
    <link type="text/css" rel="stylesheet" href="/lib/_ca.css">
    <script type="text/javascript" src="/lib/_jq.js"></script>
    <script type="text/javascript" src="/lib/_j.js"></script>
    <link href="/lib/favicon.ico" rel="shortcut icon" type="/image/vnd.microsoft.icon">
</head>
<body class="_Ac">
    <div class="_Ac1"><div class="ac1"><p id="iAmA" class="ac2">Chào bạn, vui lòng <a href="javascript:;" onclick="fL()"><strong>Đăng nhập</strong></a></p></div></div>
    <div class="_Ac2">
        <div class="ac3">
            <div class="ac4">
                <div class="ac5"><a href="/tai-khoan.html"><img src="/lib/ac_logo.png"></a></div>
                <div class="ac6"><form method="GET" onsubmit="return false"><label><input type="text" name="search" autocomplete="off" placeholder="Tìm kiếm thông tin"><a href="#"><span id="btnSearch" class="btn_ser"></span></a></label></form></div>
                <div class="ac7">
                    <ul>
                        <li><a id="iAmO" onclick="fF(5)">ĐĂNG XUẤT</a></li>
                        <li><a id="iAmH" onclick="fF(4)">LỊCH SỬ</a></li>
                        <li><a id="iAmP" onclick="fF(3)">NẠP THẺ</a></li>
                        <li><a id="iAmI" onclick="fF(2)">THÔNG TIN</a></li>
                        <li><a id="iAmR" onclick="fF(1)" class="current">ĐĂNG KÝ</a></li>
                        <li><a href="/">TRANG CHỦ</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="_Ac3">
        <div class="ac8">
            <span class="ac81"></span>
            <a class="ac82" href="/"><strong>Trang chủ</strong></a>
            <span class="ac83"></span>
            <a class="ac82" href="/tai-khoan.html">Tài khoản</a>
            <span class="ac83"></span>
            <a id="iAl">Đăng ký</a>
        </div>
        <div class="ac9">
            <div class="ac91">
                <div id="iAc" class="ac912"></div>
            </div>
        </div>
        <div class="ac10">
            <a>Hệ thống quản lý tài khoản thông minh bởi <?php echo $__c['title'][0];?></a>
        </div>
    </div>
</body>
</html>










