<?php
    require 'config.php';
    require_once 'func.php';

    $c = 9; $a = array(b('tin_tuc', $c), b('su_kien', $c), b('tinh_nang', $c)); $r = array('','','');

    for($i = 0; $i < $c; $i++){

        for($i2 = 0; $i2 <count($a); $i2++){

            if($a && !empty($a[$i2][$i])){

                $r[$i2] .= '<li><a class="posts__post-title " href="/'.$a[$i2][$i][0].'.html" title="'.$a[$i2][$i][1].'" target="_blank" nofollow=""><span>'.(($i < 3)?'<strong>'.$a[$i2][$i][1].'</strong>':$a[$i2][$i][1]).'</span><time datetime="'.(substr($a[$i2][$i][3], 0, 5)).'">'.(substr($a[$i2][$i][3], 0, 5)).'</time></a></li>';

            }
        }
    }
?>

<html>
    <div class="_c">
        <div class="a" id="banner-event" data-jcarousel="true" data-jcarouselautoscroll="true">
            <ul class="banner-event__list" style="left: 0px; top: 0px;">
                <li><a href="<?php echo $__c['slide'][0][0][1]; ?>"><img width="630" height="280" src="<?php echo $__c['slide'][0][0][0]; ?>" alt="<?php echo $__c['slide'][0][0][2]; ?>"></a></li>
                <li><a href="<?php echo $__c['slide'][0][1][1]; ?>"><img width="630" height="280" src="<?php echo $__c['slide'][0][1][0]; ?>" alt="<?php echo $__c['slide'][0][1][2]; ?>"></a></li>
                <li><a href="<?php echo $__c['slide'][0][2][1]; ?>"><img width="630" height="280" src="<?php echo $__c['slide'][0][2][0]; ?>" alt="<?php echo $__c['slide'][0][2][2]; ?>"></a></li>
                <li><a href="<?php echo $__c['slide'][0][3][1]; ?>"><img width="630" height="280" src="<?php echo $__c['slide'][0][3][0]; ?>" alt="<?php echo $__c['slide'][0][3][2]; ?>"></a></li>
            </ul>
            <div class="jcarousel-pagination" data-jcarouselpagination="true">
                <a href="#1" class="active">1</a>
                <a href="#2" class="">2</a>
                <a href="#3" class="">3</a>
                <a href="#4" class="">4</a>
            </div>
        </div>
        <div class="posts">
            <ul class="posts__tab" id="posts__tab">
                <li><a data-target="/tin-tuc/trang-1.html" href="/tin-tuc.html" data-block-name="tintuc" data-category data-shorturl class="tab01 active">Tin Tức</a></li>
                <li><a data-target="/giai-dau/trang-1.html" href="/su-kien.html" data-block-name="giaidau" data-category data-shorturl class="tab03">Giải Đấu</a></li>
                <li><a data-target="/tinh-nang/trang-1.html" href="/cam-nang.html" data-block-name="tinhnang" data-category data-shorturl class="tab02">Tính Năng</a></li>
            </ul>
            <div id="posts__list" class="posts__list">
                <ul id="posts__list_tintuc" style="display: block;">
                    <?php echo $r[0];?>
                </ul>
                <ul id="posts__list_giaidau" style="display: none;">
                    <?php echo $r[1];?>
                </ul>
                <ul id="posts__list_tinhnang" style="display: none;">
                    <?php echo $r[2];?>
                </ul>
            </div>
            <a class="posts__view-all" id="posts__view-all" title="Xem thêm" href="">Xem thêm</a>
        </div>
        <ul class="b">
            <li><a class="camnang" href="/cam-nang.html" title="Cẩm nang">Cẩm nang</a></li>
            <li><a class="nhiemvu" href="/cam-nang.html" title="Nhiệm vụ">Nhiệm vụ</a></li>
        </ul>
        <div class="Daily">
            <div class="DailyPageControl">
                <a href="#" title="Trở về trang trước" class="PrevPage">Trở về trang trước</a>
                <ul class="NumPage">
                    <li style="display: block;">CN</li>
                    <li style="display: none;">Thứ 2</li>
                    <li style="display: none;">Thứ 3</li>
                    <li style="display: none;">Thứ 4</li>
                    <li style="display: none;">Thứ 5</li>
                    <li style="display: none;">Thứ 6</li>
                    <li style="display: none;">Thứ 7</li></ul>
                <a href="#" title="Đến trang tiếp theo" class="NextPage">Đến trang tiếp theo</a>
            </div>
            <div class="DailyPage" style="margin-left: 0px;">
                <div class="Page scroll-pane" id="page-1" style=""><div class="jspContainer" style=""><div class="jspPane" style=""><ul><li><a href="javascript:;" title=""><span class="Time">8h-9h</span><span class="TitlePage">Viêm Đế</span></a></li><li><a href="javascript:;" title=""><span class="Time">10h-11h</span><span class="TitlePage">Vượt ải</span></a></li><li><a href="javascript:;" title=""><span class="Time">11h-12h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">11h-12h</span><span class="TitlePage">Mật Địa Biện Kinh</span></a></li><li><a href="javascript:;" title=""><span class="Time">12h-12h30</span><span class="TitlePage">Hạt Hoàng Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">13h-14h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">15h-16h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">17h-18h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">19h-20h</span><span class="TitlePage">Săn Boss</span></a></li><li><a href="javascript:;" title=""><span class="Time">20h30-20h45</span><span class="TitlePage">Boss Lý Bạch</span></a></li><li><a href="javascript:;" title=""><span class="Time">21h-22h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">23h-24h</span><span class="TitlePage">Tống Kim</span></a></li></ul></div></div></div>
                <div class="Page scroll-pane" id="page-2" style=""><div class="jspContainer" style=""><div class="jspPane" style=""><ul><li><a href="javascript:;" title=""><span class="Time">8h-9h</span><span class="TitlePage">Viêm Đế</span></a></li><li><a href="javascript:;" title=""><span class="Time">10h-11h</span><span class="TitlePage">Vượt ải</span></a></li><li><a href="javascript:;" title=""><span class="Time">11h-12h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">11h-12h</span><span class="TitlePage">Mật Địa Biện Kinh</span></a></li><li><a href="javascript:;" title=""><span class="Time">12h-12h30</span><span class="TitlePage">Hạt Hoàng Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">13h-14h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">15h-16h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">17h-18h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">19h-20h</span><span class="TitlePage">Săn Boss</span></a></li><li><a href="javascript:;" title=""><span class="Time">20h30-20h45</span><span class="TitlePage">Boss Lý Bạch</span></a></li><li><a href="javascript:;" title=""><span class="Time">21h-22h</span><span class="TitlePage">Thiên Tử</span></a></li><li><a href="javascript:;" title=""><span class="Time">23h-24h</span><span class="TitlePage">Tống Kim</span></a></li></ul></div></div></div>
                <div class="Page scroll-pane" id="page-3" style=""><div class="jspContainer" style=""><div class="jspPane" style=""><ul><li><a href="javascript:;" title=""><span class="Time">8h-9h</span><span class="TitlePage">Viêm Đế</span></a></li><li><a href="javascript:;" title=""><span class="Time">10h-11h</span><span class="TitlePage">Vượt ải</span></a></li><li><a href="javascript:;" title=""><span class="Time">11h-12h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">11h-12h</span><span class="TitlePage">Mật Địa Biện Kinh</span></a></li><li><a href="javascript:;" title=""><span class="Time">12h-12h30</span><span class="TitlePage">Hạt Hoàng Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">13h-14h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">15h-16h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">17h-18h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">19h-20h</span><span class="TitlePage">Săn Boss</span></a></li><li><a href="javascript:;" title=""><span class="Time">20h30-20h45</span><span class="TitlePage">Boss Lý Bạch</span></a></li><li><a href="javascript:;" title=""><span class="Time">21h-22h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">23h-24h</span><span class="TitlePage">Tống Kim</span></a></li></ul></div></div></div>
                <div class="Page scroll-pane" id="page-4" style=""><div class="jspContainer" style=""><div class="jspPane" style=""><ul><li><a href="javascript:;" title=""><span class="Time">8h-9h</span><span class="TitlePage">Viêm Đế</span></a></li><li><a href="javascript:;" title=""><span class="Time">10h-11h</span><span class="TitlePage">Vượt ải</span></a></li><li><a href="javascript:;" title=""><span class="Time">11h-12h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">11h-12h</span><span class="TitlePage">Mật Địa Biện Kinh</span></a></li><li><a href="javascript:;" title=""><span class="Time">12h-12h30</span><span class="TitlePage">Hạt Hoàng Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">13h-14h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">15h-16h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">17h-18h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">19h-20h</span><span class="TitlePage">Săn Boss</span></a></li><li><a href="javascript:;" title=""><span class="Time">20h30-20h45</span><span class="TitlePage">Boss Lý Bạch</span></a></li><li><a href="javascript:;" title=""><span class="Time">21h-22h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">23h-24h</span><span class="TitlePage">Tống Kim</span></a></li></ul></div></div></div>
                <div class="Page scroll-pane" id="page-5" style=""><div class="jspContainer" style=""><div class="jspPane" style=""><ul><li><a href="javascript:;" title=""><span class="Time">8h-9h</span><span class="TitlePage">Viêm Đế</span></a></li><li><a href="javascript:;" title=""><span class="Time">10h-11h</span><span class="TitlePage">Vượt ải</span></a></li><li><a href="javascript:;" title=""><span class="Time">11h-12h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">11h-12h</span><span class="TitlePage">Mật Địa Biện Kinh</span></a></li><li><a href="javascript:;" title=""><span class="Time">12h-12h30</span><span class="TitlePage">Hạt Hoàng Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">13h-14h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">15h-16h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">17h-18h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">19h-20h</span><span class="TitlePage">Săn Boss</span></a></li><li><a href="javascript:;" title=""><span class="Time">20h30-20h45</span><span class="TitlePage">Boss Lý Bạch</span></a></li><li><a href="javascript:;" title=""><span class="Time">21h-22h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">23h-24h</span><span class="TitlePage">Tống Kim</span></a></li></ul></div></div></div>
                <div class="Page scroll-pane" id="page-6" style=""><div class="jspContainer" style=""><div class="jspPane" style=""><ul><li><a href="javascript:;" title=""><span class="Time">8h-9h</span><span class="TitlePage">Viêm Đế</span></a></li><li><a href="javascript:;" title=""><span class="Time">10h-11h</span><span class="TitlePage">Vượt ải</span></a></li><li><a href="javascript:;" title=""><span class="Time">11h-12h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">11h-12h</span><span class="TitlePage">Mật Địa Biện Kinh</span></a></li><li><a href="javascript:;" title=""><span class="Time">12h-12h30</span><span class="TitlePage">Hạt Hoàng Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">13h-14h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">15h-16h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">17h-18h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">19h-20h</span><span class="TitlePage">Săn Boss</span></a></li><li><a href="javascript:;" title=""><span class="Time">20h00-21h30</span><span class="TitlePage">Thất Thành Đại Chiến</span></a></li><li><a href="javascript:;" title=""><span class="Time">21h-22h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">23h-24h</span><span class="TitlePage">Tống Kim</span></a></li></ul></div></div></div>
                <div class="Page scroll-pane" id="page-7" style=""><div class="jspContainer" style=""><div class="jspPane" style=""><ul><li><a href="javascript:;" title=""><span class="Time">8h-9h</span><span class="TitlePage">Viêm Đế</span></a></li><li><a href="javascript:;" title=""><span class="Time">10h-11h</span><span class="TitlePage">Vượt ải</span></a></li><li><a href="javascript:;" title=""><span class="Time">11h-12h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">11h-12h</span><span class="TitlePage">Mật Địa Biện Kinh</span></a></li><li><a href="javascript:;" title=""><span class="Time">12h-12h30</span><span class="TitlePage">Hạt Hoàng Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">13h-14h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">15h-16h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">17h-18h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">19h-20h</span><span class="TitlePage">Săn Boss</span></a></li><li><a href="javascript:;" title=""><span class="Time">20h30-20h45</span><span class="TitlePage">Boss Lý Bạch</span></a></li><li><a href="javascript:;" title=""><span class="Time">21h-22h</span><span class="TitlePage">Tống Kim</span></a></li><li><a href="javascript:;" title=""><span class="Time">23h-24h</span><span class="TitlePage">Tống Kim</span></a></li></ul></div></div></div>
            </div>
        </div>
        <ul class="c">
            <li>
                <p><strong>HOTLINE</strong></p>
                <p class="HotLine">0942 338 217</p>
                <p>(cước phí:hien hanh) </p>
            </li>
            <li class="NoBorder"><p><a href="<?php echo $__c['link'][0][0][0];?>" target="_blank">Trung tâm hỗ trợ</a></p></li>
            <li class="NoBorder"><p><a href="<?php echo $__c['link'][0][2][0];?>" target="_blank">Hỗ trợ trên Fanpage</a></p></li>
        </ul>
    </div>
</html>
