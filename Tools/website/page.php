<?php
    require 'config.php';
    require_once 'func.php';

    $p_t = (isset($_GET['t']) && $_GET['t'])?$_GET['t']:''; $p_pn = (isset($_GET['p']) && $_GET['p'] && is_numeric($_GET['p']))?$_GET['p']:1;

    $a_i = array('tin-tuc' => array('Tin tức'), 'su-kien' => array('Sự kiện'), 'cam-nang' => array('Cẩm nang'),);

    $_P_t = $a_i[$p_t][0];

    require 'page_header.php';

    if($p_t == 'tin-tuc' || $p_t == 'su-kien'){
    $p_p = '
        <div class="f6">
        <ul>
            <li class="first '.($p_pn>1?'':'disabled').'"><a href="/'.($p_t.'-1.html').'">«</a></li>
            <li class="prev '.($p_pn>1?'':'disabled').'"><a href="/'.$p_t.'-'.($p_pn-1).'.html">‹</a></li>
            <li class="page active"><a href="/'.($p_t.'-'.$p_pn.'.html').'">'.$p_pn.'</a></li>
            <li class="page"><a href="/'.($p_t.'-'.($p_pn+1).'.html').'">'.($p_pn+1).'</a></li>
            <li class="page"><a href="/'.($p_t.'-'.($p_pn+2).'.html').'">'.($p_pn+2).'</a></li>
            <li class="page"><a href="/'.($p_t.'-'.($p_pn+3).'.html').'">'.($p_pn+3).'</a></li>
            <li class="page"><a href="/'.($p_t.'-'.($p_pn+4).'.html').'">'.($p_pn+4).'</a></li>
            <li class="next"><a href="/'.$p_t.'-'.($p_pn+1).'.html">›</a></li>
            <li class="last"><a href="/'.$p_t.'-'.($p_pn+1).'.html">»</a></li>
        </ul>
    </div>
    ';
}

    if($p_t == 'tin-tuc'){
        $a = b('tin_tuc', 15, $p_pn);

        $p_c = ' <ul class="f2"> <li><a href="#tat-ca" class="active"><span>Tất cả</span></a></li> <li><a href="#tin-nong" class=""><span>Tin nóng</span></a></li> <li><a href="#tin-tinh-nang" class=""><span>Tin tính năng</span></a></li> <li><a href="#tin-giai-dau" class=""><span>Tin giải đấu</span></a></li> </ul> <div class="f3"><ul> ';

        for($i = 0; $i < count($a); $i++){
            $p_c .= '<li><a href="/'.$a[$i][0].'.html"><span class="f4">Tin nóng</span><h2>'.$a[$i][1].'</h2><span class="f5">'.$a[$i][3].'</span></a></li>';
        }

        $p_c .= '</ul></div>'.$p_p;
    }

    if($p_t == 'su-kien'){
        $a = b('su_kien', 10, $p_pn);

        $p_c = '<ul class="f7">';

        for($i = 0; $i < count($a); $i++){
            $p_c .= '<li><a href="/'.$a[$i][0].'.html"><img src="'.$a[$i][4].'"></a><div class="ct"><h2><a href="/'.$a[$i][0].'.html" >'.$a[$i][1].'</a></h2><span>Bài viết '.$a[$i][3].'</span></div></li>';
        }

        $p_c .= '</ul>'.$p_p;
    }

    if($p_t == 'cam-nang'){
        $p_c = '
            <div class="f8">
                <div class="ContentBlock">
                    <div class="BlockBtnCN">
                        <ul>
                            <li><a class="BtnCN-1 Dangky" href="/tai-khoan.html">Đăng ký Zing ID</a></li>
                            <li><a class="BtnCN-2" href="/tai-tro-choi.html">Tải game và cài đặt</a></li>
                            <li><a class="BtnCN-3" href="/tai-khoan.html">Đăng nhập</a></li>
                            <li><a class="BtnCN-4" href="/tai-tro-choi.html">Chơi game</a></li>
                        </ul>
                    </div>
                    <div class="BlockAccordion">
                        <div class="accordionButton TanThu">Tân Thủ</div>
                        <div class="accordionContent" style="display: none;">
                            <div class="ColumnContent">
                                <h2>Nội dung cần biết</h2>
                                <ul>
                                    <li><a href="/" title="Cấu hình &amp; cài đặt">Cấu hình &amp; cài đặt</a></li>
                                    <li><a href="/" title="Chuyển server">Chuyển server</a></li>
                                    <li><a href="/" title="Điều khoản sử dụng">Điều khoản sử dụng</a></li>
                                    <li><a href="/" target="_blank" title="trung tâm hỗ trợ">Trung tâm hỗ trợ</a></li>
                                </ul>
                            </div>
                            <div class="ColumnContent">
                                <h2>Hướng dẫn cơ bản</h2>
                                <ul>
                                    <li><a href="/" title="Môn phái">Môn phái</a></li>
                                    <li><a href="/" title="Các mối quan hệ">Các mối quan hệ</a></li>
                                    <li><a href="/" title="Hệ thống ngũ hành">Hệ thống ngũ hành</a></li>
                                    <li><a href="/" title="Nhân vật trong game">Nhân vật trong game</a></li>
                                    <li><a href="/" title="NPC trong game">NPC trong game</a></li>
                                    <li><a href="/" title="Thuật ngữ thường dùng">Thuật ngữ thường dùng</a></li>
                                </ul>
                            </div>
                            <div class="ColumnContent">
                                <h2>Thao tác cơ bản</h2>
                                <ul>
                                    <li><a href="/" title="Giao diện game">Giao diện game</a></li>
                                    <li><a href="/" title="Hệ thống phím tắt">Hệ thống phím tắt</a></li>
                                    <li><a href="/" title="Cách thức di chuyển">Cách thức di chuyển</a></li>
                                    <li><a href="/" title="Chức năng quay phim">Chức năng quay phim</a></li>
                                    <li><a href="/" title="Chức năng tán gẫu">Chức năng tán gẫu</a></li>
                                    <li><a href="/" title="Giao dịch trong game">Giao dịch trong game</a></li>
                                    <li><a href="/" title="Phục hồi trang bị">Phục hồi trang bị</a></li>
                                    <li><a href="/" title="Phương thức giao đấu">Phương thức giao đấu</a></li>
                                    <li><a href="/" title="Thành lập tổ đội">Thành lập tổ đội</a></li>
                                </ul>
                            </div>
                            <div class="ColumnContent">
                                <h2>Nhiệm vụ tân thủ</h2>
                                <ul>
                                    <li><a href="/" title="Tân thủ thôn">Nhiệm vụ Tân Thủ Thôn</a></li>
                                    <li><a href="/" title="Thế giới">Nhiệm vụ thế giới</a></li>
                                    <li><a href="/" title="">Nhiệm vụ Thiếu Lâm</a></li>
                                    <li><a href="/" title="">Nhiệm vụ Thiên Vương</a></li>
                                    <li><a href="/" title="">Nhiệm vụ Đường Môn</a></li>
                                    <li><a href="/" title="">Nhiệm vụ Ngũ Độc</a></li>
                                    <li><a href="/" title="">Nhiệm vụ Võ Đang</a></li>
                                    <li><a href="/" title="">Nhiệm vụ Côn Lôn</a></li>
                                    <li><a href="/" title="">Nhiệm vụ Thúy Yên</a></li>
                                    <li><a href="/" title="">Nhiệm vụ Nga My</a></li>
                                    <li><a href="/" title="">Nhiệm vụ Thiên Nhẫn</a></li>
                                    <li><a href="/" title="">Nhiệm vụ Cái Bang</a></li>
                                    <li><a href="/" title="">Nhiệm vụ Hoa Sơn</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="accordionButton TinhNang">Tính Năng</div>
                        <div class="accordionContent" style="display: none;">
                            <div class="ColumnContent">
                                <ul>
                                    <li><a target="_blank" href="/">Viêm Đế</a></li>
                                    <li><a target="_blank" href="/">Vượt Ải</a></li>
                                    <li><a target="_blank" href="/">Phong Vân Luận Kiếm</a></li>
                                    <li><a target="_blank" href="/">Mật Địa Biện Kinh</a></li>
                                    <li><a target="_blank" href="/">Quả Hoàng Kim</a></li>
                                    <li><a target="_blank" href="/">Boss Lý Bạch</a></li>
                                    <li><a target="_blank" href="/">Quốc Chiến Thiên Tử</a></li>
                                    <li><a target="_blank" href="/">Thất Thành Đại Chiến</a></li>
                                    &gt;</ul>
                            </div>
                            <div class="ColumnContent">
                                <ul>
                                    <li><a href="#">Nhiệm vụ sát thủ</a></li>
                                    <li><a href="#">Nhiệm vụ sứ giả</a></li>
                                    <li><a href="#">Nhiệm vụ Dã Tẩu</a></li>
                                    <li><a href="#">Đoán Hoa Đăng</a></li>
                                    <li><a href="#">Đêm Huy Hoàng</a></li>
                                    <li><a href="#">Phong Hỏa Liên Thành</a></li>
                                    &gt;</ul>
                            </div>
                            <div class="ColumnContent">
                                <ul>
                                    <li><a href="#">Trùng Sinh nhân vật</a></li>
                                    <li><a href="#">Rời mạng nhận thưởng</a></li>
                                    <li><a href="#">Hệ thống tinh lực</a></li>
                                    <li><a href="#">Boss Đại Hoàng Kim</a></li>
                                    <li><a href="#">Đổi tên Bang hội</a></li>
                                    <li><a href="#">Đổi tên nhân vật</a></li>
                                    <li><a href="#">Hệ thống Sư Đồ</a></li>
                                    <li><a href="#">Thiên Lộc Phúc</a></li>
                                    <li><a href="/">Ngoại trang mới</a></li>
                                    <li><a href="/">Thu thập EXP cao</a></li>
                                    &gt;</ul>
                            </div>
                            <div class="ColumnContent">
                                <ul>
                                    <li><a target="_blank" href="/">Dung Luyện Trang Bị</a></li>
                                    <li><a target="_blank" href="/">Online nhận thưởng</a></li>
                                    <li><a target="_blank" href="/">Cảnh Kỹ Trường</a></li>
                                    <li><a target="_blank" href="/">Bạn Đồng Hành</a></li>
                                    <li><a target="_blank" href="/">Nhiệm vụ Bắc Đẩu mới</a></li>
                                    <li><a target="_blank" href="/">Phù Ly Chiến</a></li>
                                    <li><a target="_blank" href="/">Bang Hội Thành Bảo</a></li>
                                    <li><a target="_blank" href="/">Chức năng khóa mới</a></li>
                                    <li><a target="_blank" href="/">Ch-trường Thương Lang</a></li>
                                    <li><a target="_blank" href="/">Phó bản Cổ Tháp</a></li>
                                    <li><a target="_blank" href="/">Tuyệt thế Phi Phong</a></li>
                                    &gt;</ul>
                            </div>
                        </div>
                        <div class="accordionButton TrangBi">Trang Bị và Vật Phẩm</div>
                        <div class="accordionContent" style="display: none;">
                            <div class="ColumnContent">
                                <ul>
                                    <li><a target="_blank" href="/">Chế tạo Đằng Long</a></li>
                                    <li><a target="_blank" href="/">Nguyên liệu Đằng Long</a></li>
                                    <li><a target="_blank" href="/">Trang bị Tinh Sương</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        ';
}
?>

<html>
        <div class="_f">
            <div class="f1">
                <?php echo $p_c; ?>
            </div>
        </div>
</html>

<?php require 'footer.php'; ?>