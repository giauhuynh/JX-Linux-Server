<?php
	error_reporting(0);
    session_start();
    require_once 'config.php';
    require_once 'func.php';

    if(isset($_POST['r']) && !empty($_POST['r'])){
        if($_POST['r'] == 'snp'){
            $i = d($_POST['i']); $t = d($_POST['t']); $ty = d($_POST['ty']); $pp = d($_POST['pp']); $c = d($_POST['c']); $arp = !empty($_POST['arp'])?$_POST['arp']:null;

            n($i, $t, $ty, $pp, $c, $arp);
        }

        if($_POST['r'] == 'sdp'){
            if(!empty($_POST['k'])){
                e($_POST['k']);
            }
            else{
                $r['r'] = 0;$r['e'] = 'ID bài viết không đúng!';echo json_encode($r);exit();
            }
        }

        if($_POST['r'] == 'sout'){
            unset($_SESSION['ad_l']);

            $r['r'] = 1; $r['d'] = 'Kết thúc phiên làm việc thành công!';

            echo json_encode($r);exit();
        }

        if($_POST['r'] == 'sedp'){

            if(!empty($_POST['k'])){
                $k = $_POST['k'];

                if(is_file($__c['folder_baiviet'][0] . '/' . $k . '.php')){

                    require_once $__c['folder_baiviet'][0] . '/' . $k . '.php';

                    $t = $ContentFile[$k . '_Title']; $ty = $ContentFile[$k . '_Type']; $p = $ContentFile[$k . '_Poster']; $c = $ContentFile[$k . '_Content'];

                    $r['r'] = 1; $r['d'][0] = $t; $r['d'][1] = $ty; $r['d'][2] = $p; $r['d'][3] = $c; $r['d'][4] = $k;

                    echo json_encode($r);exit();
                }
                else{
                    $r['r'] = 0;$r['e'] = 'Bài viết này không tồn tại!';echo json_encode($r);exit();
                }
            }

            $r['r'] = 0;$r['e'] = 'ID bài viết không đúng!';echo json_encode($r);exit();
        }

        if($_POST['r'] == 'srcf'){
            $t = !empty($_POST['t'])?$_POST['t']:null;
            $s_p1 = !empty($_POST['s_p1'])?$_POST['s_p1']:null;
            $s_p2 = !empty($_POST['s_p2'])?$_POST['s_p2']:null;
            $s_p3 = !empty($_POST['s_p3'])?$_POST['s_p3']:null;
            $s_p4 = !empty($_POST['s_p4'])?$_POST['s_p4']:null;
            $s_l1 = !empty($_POST['s_l1'])?$_POST['s_l1']:null;
            $s_l2 = !empty($_POST['s_l2'])?$_POST['s_l2']:null;
            $s_l3 = !empty($_POST['s_l3'])?$_POST['s_l3']:null;
            $s_l4 = !empty($_POST['s_l4'])?$_POST['s_l4']:null;
            $c_p = !empty($_POST['c_p'])?$_POST['c_p']:null;
            $c_a_v = !empty($_POST['c_a_v'])?$_POST['c_a_v']:null;
            $c_a_m = !empty($_POST['c_a_m'])?$_POST['c_a_m']:null;
            $c_a_vn = !empty($_POST['c_a_vn'])?$_POST['c_a_vn']:null;
            $c_a_vna = !empty($_POST['c_a_vna'])?$_POST['c_a_vna']:null;
            $c_a_g = !empty($_POST['c_a_g'])?$_POST['c_a_g']:null;
            $c_e_x = !empty($_POST['c_e_x'])?$_POST['c_e_x']:null;
            $c_e_a = !empty($_POST['c_e_a'])?$_POST['c_e_a']:null;
            $p_f = !empty($_POST['p_f'])?$_POST['p_f']:null;
            $l_s = !empty($_POST['l_s'])?$_POST['l_s']:null;
            $l_4 = !empty($_POST['l_4'])?$_POST['l_4']:null;
            $l_f = !empty($_POST['l_f'])?$_POST['l_f']:null;
            $tt_nt = !empty($_POST['tt_nt'])?$_POST['tt_nt']:null;
            $tt_lf = !empty($_POST['tt_lf'])?$_POST['tt_lf']:null;

            if (r($t, $s_p1, $s_p2, $s_p3, $s_p4, $s_l1, $s_l2, $s_l3, $s_l4, $c_p, $c_a_v, $c_a_m, $c_a_vn, $c_a_vna, $c_a_g, $c_e_x, $c_e_a, $p_f, $l_s, $l_4, $l_f, $tt_nt, $tt_lf) != 1){
                $r['r'] = 0;$r['e'] = 'Lỗi lưu cấu hình, xin kiểm tra lại các trường khai báo cấu hình.';echo json_encode($r);exit();
            }

            $r['r'] = 1;$r['d'] = 'Lưu cấu hình website thành công.<br>Bạn cần reload lại website để kiểm tra cấu hình vừa lưu.';echo json_encode($r);exit();
        }

        if($_POST['r'] == 'sla'){
            $k = isset($_POST['k'])?$_POST['k']:rs('Lệnh yên cầu không hợp lệ.');

            $a = c('a=a', array('k' => $k, 'la' => 'litus'));

            ($a['r'] != 1)?($a['e']?rs($a['e']):rs('Máy chủ database không phản hồi!')):null;

            $c = '
                <div style="text-align: center;border-bottom: 1px solid #d4d4d4;padding: 10px;">
                    <style>
                        .la_pager_span{cursor: pointer;display: inline-block;width: 50px;}
                        .la_pager_span:hover{color:red;}
                    </style>
                    <span class="la_pager_span" onclick="As(\'la\', '.((($k-128)>=0)?($k-128):0).')">◄</span>
                    Trang 
                    <input id="la_pager_input" type="number" value="'.($k/128).'" style="width: 50px;text-align: center;">
                    /'.(round($a['c'][0]/128)).'
                    <span class="la_pager_span" onclick="As(\'la\', '.($k+128).')">►</span>
                </div>
            ';

            $r = '
                <style type="text/css">
                    .Ad_d6 .Ad_d8 .Ad_d9 .Ad_u3{margin: 0 20px;}
                    .Ad_d6 .Ad_d8 .Ad_d9 .Ad_u3 li{display: block;text-align: left;background: #fafafa;border-bottom: 1px solid #d4d4d4;border-right: 1px solid #d4d4d4;font-size: 13px;user-select: none;}
					.Ad_d6 .Ad_d8 .Ad_d9 .Ad_u3 li a{display: inline-block;padding: 3px 0;border-left: 1px solid #d4d4d4;padding-left: 8px;}
					.Ad_d6 .Ad_d8 .Ad_d9 .Ad_u3 li a.n{width: 189px;}
					.Ad_d6 .Ad_d8 .Ad_d9 .Ad_u3 li a.t{width: 40px;}
					.Ad_d6 .Ad_d8 .Ad_d9 .Ad_u3 li a.b{width: 52px;}
					.Ad_d6 .Ad_d8 .Ad_d9 .Ad_u3 li a.q{width: 200px;}
					.Ad_d6 .Ad_d8 .Ad_d9 .Ad_u3 li a.a{width: 130px;}
					.Ad_d6 .Ad_d8 .Ad_d9 .Ad_u3 li a.dr{width: 133px;}
					.Ad_d6 .Ad_d8 .Ad_d9 .Ad_u3 li a.de{width: 133px;}
					.Ad_d6 .Ad_d8 .Ad_d9 .Ad_u3 li a.p2{width: 133px;}
                    .Ad_d6 .Ad_d8 .Ad_d9 .Ad_u3 li:hover{background: #009bdf !important;color: #fff;cursor: pointer;}
                    .Ad_d6 .Ad_d8 .Ad_d9 .Ad_u3 li.t{background: #f1f1f1 ;}
                    ::selection {background:red;color:#fff;}
                </style>
                <ul class="Ad_u3">
            '.$c.'
				<li style="background: #009bdf;color: #fff;font-weight: bold;"><a class="n">Tài khoản</a><a class="t">TĐ</a><a class="b">Banned</a><a class="dr" style="text-indent: 34px;">Đăng ký</a><a class="de" style="text-indent: 34px;">Hết hạn</a><a class="de" style="text-indent: 42px;">Pass2</a><a class="q" style="text-indent: 54px;">Câu hỏi</a><a class="a" style="text-indent: 20px;">Trả lời</a></li>
			';

            $b = false;
            for($_f = 0; $_f < count($a['d']); $_f ++){
                $r .= '<li id="la_u'.$_f.'" onclick="Ala('.$_f.')" '.($b?'class="t"':null).'><a class="n">'.$a['d'][$_f][0].'</a><a class="t">'.$a['d'][$_f][1].'</a><a class="b">'.($a['d'][$_f][2]==1?"Banned":"No").'</a><a class="dr">'.($a['d'][$_f][5]?$a['d'][$_f][5]:'Chưa có thông tin').'</a><a class="de">'.($a['d'][$_f][6]?$a['d'][$_f][6]:'Chưa có thông tin').'</a><a class="p2">'.($a['d'][$_f][7]?'Đã cập nhật':'Not yet').'</a><a class="q">'.($a['d'][$_f][3]?$a['d'][$_f][3]:'Chưa cập nhật').'</a><a class="a">'.($a['d'][$_f][4]?$a['d'][$_f][4]:'Chưa cập nhật').'</a></li>';
                $b = $b?false:true;
            }

            rs(1, $r.'</ul>'.$c);
        }

        if($_POST['r'] == 'g1'){
            $r['r'] = 1;
            $r['d'] = '
                <div class="Ad_d10">
                    <ul class="Ad_u1">
                        <li class="Ad_l3"><a class="Ad_a5">ID của bài viết</a><input id="p_id" class="Ad_i2" type="text" placeholder="huong-dan-tai-game"></li>
                        <li class="Ad_l3"><a class="Ad_a5">Tiêu đề bài viết</a><input id="p_t"  class="Ad_i2" type="text" placeholder="hướng dẫn tải game"></li>
                    </ul>
                    <ul class="Ad_u1">
                        <li class="Ad_l3">
                            <a class="Ad_a5">Kiểu bài viết</a>
                            <select id="p_ty" class="Ad_i2 select">
                                <option value="tin_tuc">Hướng Dẫn</option>
                                <option value="su_kien">Hoạt Động</option>
                                <option value="tinh_nang">Tính năng</option>
                            </select>
                        </li>
                        <li class="Ad_l3"><a class="Ad_a5" style="margin-right: 4px;">Ảnh poster</a><input id="p_i" class="Ad_i2" type="text" placeholder="/lib/anh.png" value="/lib/library/images/poster/default.jpg" style="width: 196px;">
                            <input class="Ad_i2 submit" type="submit" value="Chọn" onclick="Api()">
                        </li>
                    </ul>
                    <ul class="Ad_u1" style="width: 200px;">
                        <li class="Ad_l3">
                            <input type="submit" class="Ad_i2 submit submit200" value="Đăng bài viết" onclick="As(\'np\')">
                        </li>
                    </ul>
                </div>
                <div class="Ad_d11">
                    <textarea id="postnew_content" name="postnew_textarea"></textarea>
                    <script> CKEDITOR.replace( \'postnew_textarea\' , {height:0, contentsCss:\'/lib/content.css\'}); </script>
                </div>
            ';

            echo json_encode($r);exit();
        }

        if($_POST['r'] == 'g2'){
            if(u($__c['folder_baiviet'][0].'/') != 1){
                $rt['r'] = 0;$rt['e'] = 'Cập nhật lạ danh sách thất bại, tuy nhiên bài viết đã được lưu';echo json_encode($rt);exit();
            }

            $a = b('all', 100); $c = '';

            if(count($a) && !empty($a[0])){
                for($i = 0; $i < count($a); $i++){
                    $c .= '<li><a class="t">'.$a[$i][1].' </a><a class="d">'.$a[$i][3].'</a><a class="v" href="/'.$a[$i][0].'.html" target="_blank">Xem</a><a class="e" onclick="As(\'edp\', \''.$a[$i][0].'\')">Sửa</a><a class="dl" onclick="As(\'dp\', \''.$a[$i][0].'\')">Xóa</a></li>';
                }
            }

            $r['r'] = 1;
            $r['d'] = '
                <div class="Ad_d11">
                    <ul>
                        <li style="border-bottom: 1px solid #e5e5e5;margin-bottom: 15px;background: none;color: #000;">
                            <a class="t">Tên bài viết</a>
                            <a class="d">Ngày viết bài</a>
                            <a class="v" style="width:210px;color:#000;cursor: auto;">Tác vụ</a>
                        </li>
                      '.$c.'
                    </ul>
                </div>
            ';

            echo json_encode($r);exit();
        }

        if($_POST['r'] == 'g3'){
            $r['r'] = 1;
            $r['d'] = '
            <div class="Ad_d12">
                <div class="Ad_d13">
                    <a>Nhập tên tài khoản cần kiểm tra</a>
                    <input id="agu" type="text" placeholder="Tên tài khoản">
                    <input type="submit" value="Kiểm tra" onclick="agu()">
                </div>
                <div  class="Ad_d14">
                    <ul>
                        <li><a>Tên tài khoản</a><input id="agu_u" type="text" value disabled="disabled" style="cursor: no-drop;"><input type="submit" class="disable" value="Sửa"></li>
                        <li><a>Mật khẩu</a><input id="agu_p" type="text" value><input type="submit" value="Sửa" onclick="agu_s(\'agu_p\')"></li>
                        <li><a>Mật khẩu cấp 2</a><input id="agu_p2" type="text" value><input type="submit" value="Sửa" onclick="agu_s(\'agu_p2\')"></li>
                        
                        <li>
                        <a>Câu hỏi bảo mật</a>
                        <select id="agu_q">
                            <option value="NULL"></option>
                            <option value="cap-1-ban-hoc-truong-nao">Cấp 1 bạn học trường nào</option>
                            <option value="thu-cung-cua-ban-la-gi">Thú cưng của bạn là gì</option>
                            <option value="ten-nguoi-trong-mong-cua-ban">Tên người trong mộng của bạn</option>
                            <option value="tuong-lai-ban-dinh-lam-gi">Tương lai bạn định làm gì</option>
                        </select>
                        <input type="submit" value="Sửa"  onclick="agu_s(\'agu_q\')">
                        </li>
                        
                        <li><a>Câu trả lời bảo mật</a><input id="agu_a" type="text" value><input type="submit" value="Sửa"  onclick="agu_s(\'agu_a\')"></li>
                        <li><a>Tiền đồng</a><input id="agu_td" type="text" value><input type="submit" value="Sửa"  onclick="agu_s(\'agu_td\')"></li>
                        <li>
                        <a>Khóa tài khoản đăng nhập game</a>
                        <select id="agu_l">
                            <option value="NULL"></option>
                            <option value="dangnhap">Được phép đăng nhập</option>
                            <option value="khoatk">Không cho phép đăng nhập game</option>
                        </select>
                        <input type="submit" value="Sửa"  onclick="agu_s(\'agu_l\')">
                        </li>
                        <li><a>Trạng thái ingame</a><input id="agu_ol" type="text" value><input type="submit" class="disable" value="Sửa"></li>
						<li><a>Ngày hết hạn</a><input id="agu_de" type="text" value><input type="submit" value="Sửa"  onclick="agu_s(\'agu_de\')"></li>
                    </ul>
                </div>
            </div>
            ';

            echo json_encode($r);exit();
        }

        if($_POST['r'] == 'g4'){
            $r['r'] = 1;
            $r['d'] = '
                <div>
                    <iframe style="width: 100%;height: 975px;" frameborder="0" scrolling="no" src="/lib/ckfinder/ckfinder_call.php"></iframe>
                </div>
            ';

            echo json_encode($r);exit();
        }

        if($_POST['r'] == 'g5'){
            $r['r'] = 1;
            $r['d'] = '
                <div class="Ad_d15">
                    <ul>
                        <li>
                            <a>Tên Website</a>
                            <span>
                                <a>Tên hiển thị của trang web</a>
                                <input id="srcf_title" type="text" value="'.$__c['title'][0].'">
                            </span>
                        </li>
                        <li>
                            <a>Slide ảnh trang chủ</a>
                            <span>
                                <a>Ảnh 1</a>
                                <input  id="srcf_slide_p1" type="text" value="'.$__c['slide'][0][0][0].'">
                                <input onclick="Api(\'srcf_slide_p1\')" class="sf" type="submit" value="chọn">
                                <a>Liên kết</a>
                                <input id="srcf_slide_l1" type="text" value="'.$__c['slide'][0][0][1].'">
                            </span>
                            <span>
                                <a>Ảnh 2</a>
                                <input id="srcf_slide_p2"  type="text" value="'.$__c['slide'][0][1][0].'">
                                <input onclick="Api(\'srcf_slide_p2\')" class="sf" type="submit" value="chọn">
                                <a>Liên kết</a>
                                <input id="srcf_slide_l2" type="text" value="'.$__c['slide'][0][1][1].'">
                            </span>
                            <span>
                                <a>Ảnh 3</a>
                                <input id="srcf_slide_p3"  type="text" value="'.$__c['slide'][0][2][0].'">
                                <input onclick="Api(\'srcf_slide_p3\')" class="sf" type="submit" value="chọn">
                                <a>Liên kết</a>
                                <input id="srcf_slide_l3" type="text" value="'.$__c['slide'][0][2][1].'">
                            </span>
                            <span>
                                <a>Ảnh 4</a>
                                <input id="srcf_slide_p4" type="text" value="'.$__c['slide'][0][3][0].'">
                                <input onclick="Api(\'srcf_slide_p4\')" class="sf" type="submit" value="chọn">
                                <a>Liên kết</a>
                                <input id="srcf_slide_l4" type="text" value="'.$__c['slide'][0][3][1].'">
                            </span>
                        </li>
                        <li>
                            <a>Tỷ lệ nạp thẻ cào</a>
                            <span>
                                <a>Mệnh giá 1.000 VNĐ = </a>
                                <input id="srcf_card_per" type="text" value="'.$__c['payment_am'][0].'">
                                <a>Tiền đồng</a>
                            </span>
                        </li>
                        <li>
                            <a>Cho phép loại thẻ nạp</a>
                            <span>
                                <a class="f">Thẻ Viettel</a>
                                <select id="srcf_card_al_VT">
                                    <option value="'.(($__c['payment_al'][0][0][1])?'true':'false').'">'.(($__c['payment_al'][0][0][1])?'Mở':'---- Bảo trì').'</option>
                                    <option value="'.(($__c['payment_al'][0][0][1])?'false':'true').'">'.(($__c['payment_al'][0][0][1])?'Bảo trì':'Mở').'</option>
                                </select>
                            </span>
                            <span>
                                <a class="f">Thẻ Mobifone</a>
                                <select id="srcf_card_al_MB">
                                    <option value="'.(($__c['payment_al'][0][1][1])?'true':'false').'">'.(($__c['payment_al'][0][1][1])?'Mở':'---- Bảo trì').'</option>
                                    <option value="'.(($__c['payment_al'][0][1][1])?'false':'true').'">'.(($__c['payment_al'][0][1][1])?'Bảo trì':'Mở').'</option>
                                </select>
                            </span>
                            <span>
                                <a class="f">Thẻ Vinaphone</a>
                                <select id="srcf_card_al_VN">
                                    <option value="'.(($__c['payment_al'][0][2][1])?'true':'false').'">'.(($__c['payment_al'][0][2][1])?'Mở':'---- Bảo trì').'</option>
                                    <option value="'.(($__c['payment_al'][0][2][1])?'false':'true').'">'.(($__c['payment_al'][0][2][1])?'Bảo trì':'Mở').'</option>
                                </select>
                            </span>
                            <span>
                                <a class="f">Thẻ Vietnammobi</a>
                                <select id="srcf_card_al_VNa">
                                    <option value="'.(($__c['payment_al'][0][3][1])?'true':'false').'">'.(($__c['payment_al'][0][3][1])?'Mở':'---- Bảo trì').'</option>
                                    <option value="'.(($__c['payment_al'][0][3][1])?'false':'true').'">'.(($__c['payment_al'][0][3][1])?'Bảo trì':'Mở').'</option>
                                </select>
                            </span>
                            <span>
                                <a class="f">Thẻ Gate</a>
                                <select id="srcf_card_al_GA">
                                    <option value="'.(($__c['payment_al'][0][4][1])?'true':'false').'">'.(($__c['payment_al'][0][4][1])?'Mở':'---- Bảo trì').'</option>
                                    <option value="'.(($__c['payment_al'][0][4][1])?'false':'true').'">'.(($__c['payment_al'][0][4][1])?'Bảo trì':'Mở').'</option>
                                </select>
                            </span>
                        </li>
                        <li>
                            <a>Chương trình khuyến mãi nạp thẻ</a>
                            <span>
                                <a>Tỷ lệ khuyến mãi: Nhân </a>
                                <input id="srcf_card_e_x" type="text" value="'.$__c['payment_ae'][0][0][0].'">
                                <a>lần số lượng tiền đồng</a>
                            </span>
                            <span>
                                <a>Mệnh giá thẻ được phép tham gia từ</a>
                                <input id="srcf_card_e_a" type="text" value="'.$__c['payment_ae'][0][1][0].'">
                                <a>VNĐ trở lên</a>
                            </span>
                        </li>
                        <li>
                            <a>Danh sách các bài viết</a>
                            <span>
                                <a>Thư mục bài viết</a>
                                <input id="srcf_p_f" type="text" value="'.$__c['folder_baiviet'][0].'">
                            </span>
                        </li>
                        <li>
                            <a>Liên kết nội dung</a>
                            <span>
                                <a class="f">Liên kết hỗ trợ</a>
                                <input id="srcf_l_s" type="text" value="'.$__c['link'][0][0][0].'">
                            </span>
                            <span>
                                <a class="f">Liên kết diễn đàn</a>
                                <input id="srcf_l_4" type="text" value="'.$__c['link'][0][1][0].'">
                            </span>
                            <span>
                                <a class="f">Liên kết fanpage</a>
                                <input id="srcf_l_f" type="text" value="'.$__c['link'][0][2][0].'">
                            </span>
                        </li>
                        <li>
                            <a>Tương tác với người dùng</a>
                            <span>
                                <a class="f">Khung tin nhắn</a>
                                <select id="srcf_tt_nt">
                                    <option value="'.(($__c['link'][0][2][2])?'1':'-1').'">'.(($__c['link'][0][2][2])?'Mở':'Tắt').'</option>
                                    <option value="'.(($__c['link'][0][2][2])?'-1':'1').'">'.(($__c['link'][0][2][2])?'Tắt':'Mở').'</option>
                                </select>
                            </span>
                            <span>
                                <a class="f">Popup like fanpage</a>
                                <select id="srcf_tt_lf">
                                    <option value="'.(($__c['link'][0][2][3])?'1':'-1').'">'.(($__c['link'][0][2][3])?'Mở':'Tắt').'</option>
                                    <option value="'.(($__c['link'][0][2][3])?'-1':'1').'">'.(($__c['link'][0][2][3])?'Tắt':'Mở').'</option>
                                </select>
                            </span>
                        </li>
                        <li>
                            <span style="padding: 0;text-align: center;">
                                <input value="Xác nhận cập nhật cấu hình" type="submit" onclick="As(\'rcf\')">
                            </span>
                        </li>
                    </ul>
                </div>
            ';

            echo json_encode($r);exit();
        }

        if($_POST['r'] == 'g6'){
            $r['r'] = 1;
            $r['d'] = '
                <ul class="Ad_u2">
					<a>Update-5 (180305)</a>
					<li>Tích hợp thêm cổng thanh toán thẻ GameBank, đổi ở config module Pays.</li>
					<a>Update-4 (171219)</a>
					<li>Tích hợp thêm cổng thanh toán thẻ VipPay, đổi ở config module Pays.</li>
					<li>Khởi tạo tab hiển thị danh sách các thẻ nạp từ người chơi.</li>
					<li>Thông tin tài khoản của người chơi khi đăng nhập nay hiển thị thêm ngày hết hạn.</li>
					<li>Thêm quyền chỉnh sửa ngày hết hạn cho tài khoản chỉ định ở tab "xem tài khoản".</li>
					<li>Điều chỉnh hiển thị thông tin ở tab danh sách tài khoản.</li>
                    <a>Update-3 (170719)</a>
					<li>Thêm tính năng, hỗ trợ xem thông tin tài khoản ở tab danh sách.</li>
					<li>Thêm Tab hiển thị toàn bộ danh sách các tài khoản đã đăng ký, hỗ trợ phân trang.</li>
					<li>Thêm hiển thị các bài viết có liên quan trong khu vực bài viết</li>
                    <a>Update-2 (170715)</a>
					<li>Vá lỗi có liên quan đến nạp thẻ Bảo kim</li>
                    <a>Update-1 (170712)</a>
                    <li>Thêm tính năng quản lý tập tin</li>
                    <li>Thêm tính năng cấu hình website</li>
                    <li>Thêm cấu hình hiển thị popup like fanpage</li>
                    <li>Thêm tùy chọn khóa tài khoản game trong quản lý tài khoản</li>
                <ul>
            ';

            echo json_encode($r);exit();
        }
		
        if($_POST['r'] == 'g7'){
            $r['r'] = 1;$r['d'] = '<p style="margin: 40px;">Đang tải danh sách tài khoản, xin vui lòng đợi...<br>Nếu đợi quá lâu bạn có thể reload lại tab!</p>';

            echo json_encode($r);exit();
        }
		
        if($_POST['r'] == 'g8'){
			$a = c('a=a', array('lc' => 'lc'));
            
            if($a['r'] == 1){
                $r['r'] = 1;
				
				$r['d'] = '<style>
					.ag_8{display: block;margin: 0 20px;text-align: left;background: #fafafa;border-bottom: 1px solid #d4d4d4;border-right: 1px solid #d4d4d4;font-size: 13px;}
					.ag_8.t{background: #f1f1f1;}
					.ag_8 a{display: inline-block;padding: 3px 18px;border-left: 1px solid #d4d4d4;}
					.ag_8 a.i{width: 33px;}
					.ag_8 a.n{width: 163px;}
					.ag_8 a.c{width: 183px;}
					.ag_8 a.d{width: 131px;}
					.ag_8 a.t{width: 53px;}
					.ag_8 a.v{width: 16px;}
					.ag_8 a.f{width: 16px;}
					.ag_8 a.m{}
				</style>';
				
				$r['d'] .= '<li class="ag_8" style="background: #009bdf;color: #fff;font-weight: bold;"><a class="i">ID</a><a class="n">UserName</a><a class="c">Seri thẻ</a><a class="d">Thời gian</a><a class="t">Loại thẻ</a><a class="v">No</a><a class="f">No</a><a class="m">Mệnh giá</a> </li>';
				
				$b = false;
				for($_f = 0; $_f < count($a['d']); $_f ++){
					$r['d'] .= '<li class="ag_8'.($b?' t':null).'"><a class="i">'.$a['d'][$_f][0].'</a><a class="n">'.$a['d'][$_f][1].'</a><a class="c">'.strtoupper($a['d'][$_f][2]).'</a><a class="d">'.$a['d'][$_f][3].'</a><a class="t">'.strtoupper($a['d'][$_f][4]).'</a><a class="v">'.$a['d'][$_f][5].'</a><a class="f">'.$a['d'][$_f][6].'</a><a class="m">'.($a['d'][$_f][7]=='false'?'<span style=color:red;>Không thành công</span>':$a['d'][$_f][7]).'</a></li>';
					$b = $b?false:true;
				}
            }
            else{
                $r['r'] = 0; $r['e'] = $a['e']?$a['e']:'Máy chủ database không có phản hồi';
            }

            echo json_encode($r);exit();
        }

        if($_POST['r'] == 'agu'){
            a($_POST['u'], 4);

            $u = $_POST['u'];

            $a = c('a=a', array('e'=>'i','u'=>$u));

            if($a['r'] != 1){
                $r['r'] = 0; $r['e'] = $a['e']?$a['e']:'Máy chủ database không có phản hồi'; echo json_encode($r);exit();
            }

            $r['r'] = 1; $r['d']['u'] = $a['d']['u']; $r['d']['p'] = $a['d']['p']; $r['d']['p2'] = $a['d']['p2']; $r['d']['q'] = $a['d']['q']; $r['d']['a'] = $a['d']['a']; $r['d']['td'] = $a['d']['td']; $r['d']['ol'] = $a['d']['ol']; $r['d']['l'] = $a['d']['l']; $r['d']['de'] = $a['d']['de'];

            echo json_encode($r);exit();
        }

        if($_POST['r'] == 'agu_s'){

            if(!$_POST['e'] || empty($_POST['e'])){
                $r['r'] = 0;$r['e'] = 'Lệnh yêu cầu không tồn tại';echo json_encode($r);exit();
            }

            if(!isset($_POST['v'])){
                $r['r'] = 0;$r['e'] = 'Máy chủ không nhận được giá trị gửi lên';echo json_encode($r);exit();
            }

            $a = c('a=a', array('u'=>$_POST['u'], 'e'=>$_POST['e'], 'v'=>$_POST['v']));

            if($a['r'] == 1){
                $r['r'] = 1;echo json_encode($r);exit();
            }
            else{
                $r['r'] = 0; $r['e'] = $a['e']?$a['e']:'Máy chủ database không có phản hồi'; echo json_encode($r);exit();
            }

            $r['r'] = 0; $r['e'] = 'Lệnh yêu cầu thất bại'; echo json_encode($r);exit();
        }

        exit();
    }

    if(!isset($_SESSION['ad_l']) || empty($_SESSION['ad_l'])){
        $c = '<div class="Ad_d1">
        <div class="Ad_d2">
            <a class="Ad_a1">'.$__c['title'][0].'</a>
            <a class="Ad_a2" style="text-shadow: 0 1px 0 #ffffff;color: #555555;text-decoration: none;background-color: #e5e5e5;box-shadow: inset 0 3px 8px rgba(0, 0, 0, 0.125);">Đăng nhập</a>
        </div>
    </div>
    <div class="Ad_d3">
        <div class="Ad_d4"><a>Login</a></div>
        <div class="Ad_d5">
            <form action="admin.php" method="post">
                <ul>
                    <li class="Ad_l1">
                        <a class="Ad_a3">Username</a>
                        <input name="u" class="Ad_i1" type="text" autocomplete="off">
                    </li>
                    <li class="Ad_l1">
                        <a class="Ad_a3">Password</a>
                        <input name="p" class="Ad_i1" type="password" autocomplete="off">
                    </li>
                    <li class="Ad_l1">
                        <a class="Ad_a3" style="height: 10px;"></a>
                        <input class="Ad_i1 submit" type="submit" value="Login">
                    </li>
                </ul>
            </form>
        </div>
    </div>';

        if(isset($_POST['u']) && !empty($_POST['u']) && !empty($_POST['p'])){

            $u = $_POST['u']; $p = $_POST['p'];

            if(!al($u, $p)){$c .= '<script>fN("<span style=\"color:red;\">Đăng nhập thất bại!</span><br>Tên tài khoản quản trị hoặc mật khẩu quản trị không đúng");</script>';}
            else{
                $_SESSION['ad_l'] = $u;
            }
        }
    }

    if(isset($_SESSION['ad_l']) && !empty($_SESSION['ad_l'])){
        $c = '
    <div class="Ad_d1">
        <div class="Ad_d2" style="float: left;width: auto;">
            <a class="Ad_a1">'.$__c['title'][0].'</a>
            <a class="Ad_a2">►</a>
            <a class="Ad_a2">Quản trị website</a>
        </div>
        <a class="Ad_a4">Chào quản trị viên <strong>'.$_SESSION['ad_l'].'</strong>, <span onclick="As(\'out\')">Đăng xuất</span></a>
    </div>
    <div class="Ad_d6">
        <div class="Ad_d7">
            <ul>
                <li id="amn" class="Ad_l2 ac" onclick="Ag(1)"><a>Viết bài mới</a></li>
                <li id="amm" class="Ad_l2" onclick="Ag(2)"><a>Các bài viết</a></li>
                <li id="amu" class="Ad_l2" onclick="Ag(3)"><a>Xem tài khoản</a></li>
				<li id="amlu" class="Ad_l2" onclick="Ag(7)"><a>List account</a></li>
				<li id="amlc" class="Ad_l2" onclick="Ag(8)"><a>Danh sách thẻ nạp</a></li>
                <li id="amf" class="Ad_l2" onclick="Ag(4)"><a>Quản lý tập tin</a></li>
                <li id="amcf" class="Ad_l2" onclick="Ag(5)"><a>Cấu hình website</a></li>
                <li id="amhs" class="Ad_l2" onclick="Ag(6)"><a>Lịch sử update</a></li>
            </ul>
        </div>
        <div class="Ad_d8">
            <p id="amd" class="Ad_p1">Viết bài mới</p>
            <div id="amc" class="Ad_d9">
                <script>Ag(1);</script>
            </div>
        </div>
    </div>
        ';
    }

?>

<html>
<head>
    <meta charset="utf-8" />
    <title><?php echo $__c['title'][0];?></title>
    <script type="text/javascript" src="/lib/_jq.js"></script>
    <script type="text/javascript" src="/lib/_j.js"></script>
    <script type="text/javascript" src="/lib/ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="/lib/ckfinder/ckfinder.js"></script>
    <link href="/lib/favicon.ico" rel="shortcut icon" type="/image/vnd.microsoft.icon">
    <style type="text/css" rel="stylesheet">
        body, ul, li, form{margin:0;padding:0;list-style: none;font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;}
        .Ad_d1 {min-width: 1024px;box-shadow: 0 1px 4px rgba(0, 0, 0, 0.065);background-repeat: repeat-x;border: 1px solid #d4d4d4;background-image: linear-gradient(to bottom, #ffffff, #f2f2f2);height: 40px;padding-right: 20px;padding-left: 20px;background-color: #fafafa;}
        .Ad_d1 .Ad_d2, .Ad_d3{width: 900px;margin: 0 auto;}
        .Ad_d1 .Ad_d2 .Ad_a1{display: block;float: left;padding: 9px 20px;font-size: 20px;font-weight: 200;color: #777777;text-shadow: 0 1px 0 #ffffff;}
        .Ad_d1 .Ad_d2 .Ad_a2{display: block;float: left;padding: 11px 15px;color: #555555;text-decoration: none;cursor: pointer;}
        .Ad_d3 .Ad_d4{display: block;width: 100%;padding: 0;margin-bottom: 20px;font-size: 21px;line-height: 40px;color: #333333;border: 0;border-bottom: 1px solid #e5e5e5;margin-top: 40px;}
        .Ad_d3 .Ad_d5{margin-left: 100px;margin-top: 60px;}
        .Ad_d3 .Ad_d5 .Ad_a3, .Ad_a5{font-size: 14px;display: inline-block;width: 100px;}
        .Ad_d3 .Ad_d5 .Ad_i1, .Ad_i2{display: inline-block;margin-bottom: 0;vertical-align: middle;background-color: #ffffff;border: 1px solid #cccccc;transition: border linear 0.2s, box-shadow linear 0.2s;height: 20px;padding: 14px 6px;font-size: 14px;line-height: 20px;color: #555555;border-radius: 4px;width: 270px;}
        .Ad_d3 .Ad_d5 .Ad_i1:focus, .Ad_i2:focus{border-color: rgba(82, 168, 236, 0.8);outline: 0;box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(82, 168, 236, 0.6);}
        .Ad_d3 .Ad_d5 .Ad_i1.submit, .Ad_i2.submit{height: 35px;padding: 0;background: #009bdf;color: #fff;border: 0;cursor: pointer;font-weight: bold;}
        .Ad_d3 .Ad_d5 .Ad_i1.submit:hover, .Ad_i2.submit:hover{background: #008cc9;border-bottom-color: #016997;}
        .Ad_d3 .Ad_d5 .Ad_l1{margin: 20px 0;}
        .Ad_d1 .Ad_a4{display: block;float: right;font-size: 12px;padding: 13px;}
        .Ad_d1 .Ad_a4 span:hover{cursor: pointer;text-decoration: underline;}
        .Ad_d6 {min-width: 1024px;width: 100%;float: left;}
        .Ad_d6 .Ad_d7{height: 100%;width: 13%;float: left;box-shadow: 0 1px 4px rgba(0, 0, 0, 0.065);background-repeat: repeat-x;border: 1px solid #d4d4d4;background-color: #fafafa;border-left: 0;border-top: 0;min-height: 1024px;}
        .Ad_d6 .Ad_d8{width: 85.5%;float: left;background: #fff;margin-top: 8px;margin-left: 8px;display: inline-block;min-width: 600px;border: 1px solid #d4d4d4;min-height: 1015px;border-bottom: 0;}
        .Ad_d6 .Ad_d7 .Ad_l2{user-select: none;cursor: pointer;height: 40px;width: 100%;float: right;text-align: center;}
        .Ad_d6 .Ad_d7 .Ad_l2 img{width: 80px;display: block;margin: 0 auto;margin-top: 9px;}
        .Ad_d6 .Ad_d7 .Ad_l2 a{display: block;font-size: 13px;font-weight: bold;padding: 13px 0;}
        .Ad_d6 .Ad_d7 .Ad_l2.ac{background: #009bdf;color: #fff;}
        .Ad_d6 .Ad_d7 .Ad_l2:hover{background: #e5e5e5;background-image: linear-gradient(to bottom, #73d4ff, #009bdf);color: #fff;}
        .Ad_d6 .Ad_d7 .Ad_l2:active{background: #009bdf;background-image:none;}
        .Ad_d6 .Ad_d8 .Ad_p1{padding: 8px 15px;margin: 0 20px;border-bottom: 1px solid #e5e5e5;font-size: 21px;}
        .Ad_d6 .Ad_d8 .Ad_d9{height: 733px;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d10{margin:10px 20px 15px;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d10 .Ad_u1{display: inline-block;width: 400px;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d10 .Ad_u1 .Ad_l3{padding: 5px 0;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d10 .Ad_u1 .Ad_l3 .Ad_a5{width: 110px;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d10 .Ad_u1 .Ad_l3 .Ad_i2.submit{width: 70px;height: 30px;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d10 .Ad_u1 .Ad_l3 .Ad_i2.select{padding: 0;height: 30px;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d10 .Ad_u1 .Ad_l3 .Ad_i2.submit200{width: 200px;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d11{overflow: auto;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d11 ul{padding: 20px;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d11 ul li{display: block;height: 18px;padding: 6px;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d11 ul li:hover{background: #009bdf;color: #fff;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d11 ul li:hover .v{color: #fff;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d11 ul li:hover .e{color: #fff;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d11 ul li:hover .dl{color: #fff;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d11 ul li .t{float: left;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d11 ul li .d{float: right;width: 120px;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d11 ul li .v{float: right;width: 87px;color: #00c16a;cursor: pointer;text-decoration: none;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d11 ul li .e{float: right;width: 60px;color: #ff8300;cursor: pointer;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d11 ul li .dl{float: right;width: 60px;color: #f00;cursor: pointer;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d12{margin: 20px;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d12 .Ad_d13{border-bottom: 1px solid #d4d4d4;padding: 10px;margin-bottom: 20px;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d12 .Ad_d13 a{}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d12 .Ad_d13 input[type="submit"]{width: 100px;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d12 .Ad_d13 input, .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d12 .Ad_d13 input[type="submit"]{margin: 0 !important;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d12 .Ad_d14{}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d12 .Ad_d14 ul{}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d12 .Ad_d14 ul li{display: inline-block;width: 315px;height: 130px;border: 1px solid #d4d4d4;padding: 15px;margin: 12px 10px;text-align: center;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d12 .Ad_d14 ul li a{display: block;text-align: center;padding: 10px;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d12 .Ad_d14 ul li input, .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d12 .Ad_d14 ul li select, .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d12 .Ad_d13 input, .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d15 ul li span input, .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d15 ul li span select{display: inline-block;vertical-align: middle;background-color: #ffffff;border: 1px solid #cccccc;transition: border linear 0.2s, box-shadow linear 0.2s;height: 20px;padding: 14px 6px;font-size: 14px;line-height: 20px;border-radius: 4px;width: 270px;margin-bottom: 12px;text-align: center;color: red;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d12 .Ad_d14 ul li input[type=submit].disable{background: #8ccbe6 !important;box-shadow: none;cursor: no-drop;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d12 .Ad_d14 ul li input[type="submit"], .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d12 .Ad_d13 input[type="submit"], .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d15 ul li span input[type="submit"]{padding: 0;background: #009bdf;color: #fff;border: 0;cursor: pointer;font-weight: bold;height: 30px;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d12 .Ad_d14 ul li input[type="submit"]:hover, .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d12 .Ad_d13 input[type="submit"]:hover, .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d15 ul li span input[type="submit"]:hover{background: #008cc9;border-bottom-color: #016997;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d12 .Ad_d14 ul li select{padding: 0;height: 30px;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d12 .Ad_d14 ul li input:focus, .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d12 .Ad_d13 input:focus, .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d12 .Ad_d14 ul li select:focus, .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d15 ul li span input:focus, .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d15 ul li span select:focus{border-color: rgba(82, 168, 236, 0.8);outline: 0;box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(82, 168, 236, 0.6);}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d15{margin-bottom: 150px;float: left;width: 100%;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d15 ul{float: left;width: 100%;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d15 ul li{display: block;margin: 20px;border: 1px solid #e5e5e5;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d15 ul li a{display: block;border-bottom: 1px solid #e5e5e5;padding: 10px 0 4px 10px;margin-bottom: 10px;font-weight: bold;background: #e5e5e5;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d15 ul li span{display: block;padding: 0 10px;padding-bottom: 10px;text-align: center;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d15 ul li span a{display: inline-block;vertical-align: middle;border: 0;padding: 0;margin: 0;font-weight: normal;background: 0;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d15 ul li span a.f{display: inline-block;width: 150px;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d15 ul li span input{color: #009bdf;font-weight: bold;margin: 0 10px;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d15 ul li span select{margin: 0 10px;padding: 0;height: 30px;color: #009bdf;font-weight: bold;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d15 ul li span input[type="submit"]{margin: 25px;width: 400px;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_d15 ul li span input[type="submit"].sf{margin: 0;width: 70px;margin-right: 10px;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_u2{padding: 20px;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_u2 a{display: block;padding-bottom: 6px;margin: 15px 0;font-weight: bold;border-bottom: 1px solid #e5e5e5;}
        .Ad_d6 .Ad_d8 .Ad_d9 .Ad_u2 li{list-style: initial;margin-left: 40px;padding: 5px;}
    </style>
    <script type="text/javascript">
        var aroot = 'admin.php';
        var alm = '';
        var arp = 0;

        function Api(id) {
            var f = new CKFinder();
            f.basePath = '/lib/ckfinder/';
            f.startupPath = 'Images:/';
            f.selectActionFunction = function(p) {
                document.getElementById(id ? id : 'p_i').value = p;
            };
            f.popup();
        }

        function Ae(str) {
            str = str.replace(/rm/g, "&ENC_r_m");
            str = str.replace(/ls/g, "&ENC_l_s");
            str = str.replace(/cat/g, "&ENC_c_a_t");
            str = str.replace(/echo/g, "&ENC_e_c_ho");
            str = str.replace(/order/g, "&ENC_o_rd_er");
            str = str.replace(/Upd/g, "&ENC_U_pd");
            str = str.replace(/upd/g, "&ENC_u_pd");
            str = str.replace(/\-/g, "&ENC_g_n");
            str = encodeURIComponent(str);
            return str;
        }

        function Adw(n, k) {
            if (n !== 1) {
                return fN('Xác nhận hành động<br>Bạn có thật sự muốn xóa bài viết này<br>Sau khi xóa sẽ không thể phục hồi lại bài viết này?', "Adw(1,\"" + k + "\")")
            }
            setTimeout(function() {
                As('dp', k, 1)
            }, 1000);
        }

        function As(p, k, n) {
            var data;
            if (p === 'dp' && n !== 1) {
                return Adw(0, k);
            }
            if (p === 'edp' || p === 'dp') {
                data = {
                    r: 's' + p,
                    k: k
                };
            }
            if (p === 'np') {
                var i = Ae($('#p_id').val()),
                    t = Ae($('#p_t').val()),
                    ty = Ae($('#p_ty').val()),
                    pp = Ae($('#p_i').val()),
                    c = CKEDITOR.instances.postnew_content;
                c = Ae(c.getData());
                if (i === '' || t === '' || ty === '' || pp === '' || c === '') {
                    return fN('<span style="color:red;">Lỗi!</span><br>Không được để trống giá trị, xin kiểm tra lại');
                }
                if (arp === 1) {
                    data = {
                        r: 's' + p,
                        i: i,
                        t: t,
                        ty: ty,
                        pp: pp,
                        c: c,
                        arp: arp
                    };
                } else {
                    data = {
                        r: 's' + p,
                        i: i,
                        t: t,
                        ty: ty,
                        pp: pp,
                        c: c
                    };
                }
            }
            if (p === 'out') {
                data = {
                    r: 's' + p
                };
            }
            if (p === 'rcf') {
                var t = document.getElementById('srcf_title').value,
                    s_p1 = document.getElementById('srcf_slide_p1').value,
                    s_p2 = document.getElementById('srcf_slide_p2').value,
                    s_p3 = document.getElementById('srcf_slide_p3').value,
                    s_p4 = document.getElementById('srcf_slide_p4').value,
                    s_l1 = document.getElementById('srcf_slide_l1').value,
                    s_l2 = document.getElementById('srcf_slide_l2').value,
                    s_l3 = document.getElementById('srcf_slide_l3').value,
                    s_l4 = document.getElementById('srcf_slide_l4').value,
                    c_p = document.getElementById('srcf_card_per').value,
                    c_a_v = document.getElementById('srcf_card_al_VT').value,
                    c_a_m = document.getElementById('srcf_card_al_MB').value,
                    c_a_vn = document.getElementById('srcf_card_al_VN').value,
                    c_a_vna = document.getElementById('srcf_card_al_VNa').value,
                    c_a_g = document.getElementById('srcf_card_al_GA').value,
                    c_e_x = document.getElementById('srcf_card_e_x').value,
                    c_e_a = document.getElementById('srcf_card_e_a').value,
                    p_f = document.getElementById('srcf_p_f').value,
                    l_s = document.getElementById('srcf_l_s').value,
                    l_4 = document.getElementById('srcf_l_4').value,
                    l_f = document.getElementById('srcf_l_f').value,
                    tt_nt = document.getElementById('srcf_tt_nt').value,
                    tt_lf = document.getElementById('srcf_tt_lf').value;
                data = {
                    r: 's' + p,
                    t: t,
                    s_p1: s_p1,
                    s_p2: s_p2,
                    s_p3: s_p3,
                    s_p4: s_p4,
                    s_l1: s_l1,
                    s_l2: s_l2,
                    s_l3: s_l3,
                    s_l4: s_l4,
                    c_p: c_p,
                    c_a_v: c_a_v,
                    c_a_m: c_a_m,
                    c_a_vn: c_a_vn,
                    c_a_vna: c_a_vna,
                    c_a_g: c_a_g,
                    c_e_x: c_e_x,
                    c_e_a: c_e_a,
                    p_f: p_f,
                    l_s: l_s,
                    l_4: l_4,
                    l_f: l_f,
                    tt_nt: tt_nt,
                    tt_lf: tt_lf
                };
            }
            if(p==='la'){
                if($('#la_pager_input').length){
                    var a = document.getElementById('la_pager_input').value;
                    if(((k+128)!==(a*128)) && ((k-128)!==(a*128)) && (a!==0)){
                        k = a*128;
                    }
                }

                data = {
                    r: 's' + p,
                    k: k
                };
            }
            waiting();
            $.ajax({
                type: 'POST',
                cache: false,
                url: aroot,
                data: data,
                dataType: 'json',
                success: function(d) {
                    waiting_Un();
                    if (d.r === 1) {
                        if (p === 'out') {
                            fN(d.d);
                            return $('body').append('<META HTTP-EQUIV="refresh" CONTENT="2; URL=/' + aroot + '">');
                        }
                        if (p === 'edp') {
                            return Ag(1, 1, d.d);
                        }
                        if (p === 'np') {
                            if (arp === 1) arp = 0;
                        }
                        if (p === 'dp') {
                            return fN(d.d + '<br>bạn có muốn tải lại danh sách các bài viết', 'Ag(2)');
                        }
                        if(p==='la'){
                            return document.getElementById('amc').innerHTML = d.d;
                        }
                        return fN(d.d);
                    } else {
                        return fN('Lỗi trả về từ máy chủ<br><span style="color:red;">' + d.e + '</span>');
                    }
                },
                error: function() {
                    waiting_Un();
                    return fN('<span style="color:red;">Tải dữ liệu thất bại!</span><br>Phát sinh lỗi: Máy chủ không phản hồi.');
                }
            });
        }

        function Ag(p, t, k) {
            var a = [];
            a[1] = ['#amn', 'Viết bài mới'];
            a[2] = ['#amm', 'Quản lý các bài viết'];
            a[3] = ['#amu', 'Tài khoản người dùng'];
            a[4] = ['#amf', 'Quản lý thư viện'];
            a[5] = ['#amcf', 'Cập nhật cấu hình'];
            a[6] = ['#amhs', 'Lịch sử cập nhật minWeb-1'];
            a[7] = ['#amlu', 'Danh sách tài khoản'];
            a[8] = ['#amlc', 'Danh sách thẻ nạp'];
            waiting();
            $.ajax({
                type: 'POST',
                cache: false,
                url: aroot,
                data: {
                    r: 'g' + p
                },
                dataType: 'json',
                success: function(d) {
                    waiting_Un();
                    if (d.r === 1) {
                        $(alm).removeClass('ac');
                        $("#amd").html(a[p][1]);
                        alm = a[p][0];
                        $(alm).addClass('ac');
                        $("#amc").html(d.d);
                        if (t === 1) {
                            $('#p_id').val(k[4]);
                            $('#p_t').val(k[0]);
                            $('#p_ty').val(k[1]);
                            $('#p_i').val(k[2]);
                            $('#postnew_content').val(k[3]);
                            arp = 1;
                        }
                        if(p===7){
                            return As('la', 0);
                        }
                        if(p===3 && t){
                            document.getElementById('agu').value = t;
                            return agu();
                        }
                        return true;
                    } else {
                        return fN('Lỗi trả về từ máy chủ<br><span style="color:red;">' + d.e + '</span>');
                    }
                },
                error: function() {
                    waiting_Un();
                    return fN('<span style="color:red;">Tải dữ liệu thất bại!</span><br>Phát sinh lỗi: Máy chủ không phản hồi.');
                }
            });
        }

        function agu_s(p) {
            var u = $('#agu_u').val();
            var a = {
                agu_p: 'mật khẩu cấp 1',
                agu_p2: 'mật khẩu cấp 2',
                agu_q: 'câu hỏi bảo mật',
                agu_a: 'câu trả lời bảo mật',
                agu_td: 'số lượng tiền đồng',
                agu_l: 'cho phép(không cho phép) đăng nhập game',
				agu_de: 'thời hạn sử dụng tài khoản'
            };
            waiting('Đang tiến hành cập nhật lại <span style="color:red;">' + a[p] + '</span> cho tài khoản <span style="color:green;">' + u + '</span> xin vui lòng đợi giây lát!');
            $.ajax({
                type: 'POST',
                cache: false,
                url: aroot,
                data: {
                    r: 'agu_s',
                    e: p,
                    v: $('#' + p).val(),
                    u: u
                },
                dataType: 'json',
                success: function(d) {
                    waiting_Un();
                    if (d.r === 1) {
                        return fN('Cập nhật <span style="color:red;">' + a[p] + '</span> cho tài khoản <span style="color:green;">' + u + '</span> thành công!');
                    } else {
                        return fN('Lỗi trả về từ máy chủ<br><span style="color:red;">' + d.e + '</span>');
                    }
                },
                error: function() {
                    waiting_Un();
                    return fN('<span style="color:red;">Tải dữ liệu thất bại!</span><br>Phát sinh lỗi: Máy chủ không phản hồi.');
                }
            });
        }

        function agu() {
            var u = $('#agu').val();
            waiting();
            $.ajax({
                type: 'POST',
                cache: false,
                url: aroot,
                data: {
                    r: 'agu',
                    u: u
                },
                dataType: 'json',
                success: function(d) {
                    waiting_Un();
                    if (d.r === 1) {
                        $('#agu_u').val(d.d['u']);
                        $('#agu_p').val(d.d['p']);
                        $('#agu_p2').val(d.d['p2']);
                        $('#agu_q').val(d.d['q']);
                        $('#agu_a').val(d.d['a']);
                        $('#agu_td').val(d.d['td']);
                        $('#agu_ol').val(d.d['ol'] ? 'on-line' : 'off-line');
                        $('#agu_l').val(d.d['l'] ? 'khoatk' : 'dangnhap');
                        $('#agu_de').val(d.d['de']);
                    } else {
                        return fN('Lỗi trả về từ máy chủ<br><span style="color:red;">' + d.e + '</span>');
                    }
                },
                error: function() {
                    waiting_Un();
                    return fN('<span style="color:red;">Tải dữ liệu thất bại!</span><br>Phát sinh lỗi: Máy chủ không phản hồi.');
                }
            });
        }

        function Ala(_i){
            var a = document.getElementById('la_u'+_i).getElementsByClassName('n')[0].innerHTML;
            return Ag(3, a);
        }
	</script>
</head>
<body>
    <?php echo $c; ?>
</body>
</html>


















