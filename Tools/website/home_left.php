<?php
    require 'config.php';
?>

<html>
    <div class="_b">
        <div class="b">
            <div class="c">
                <a class="download" id="playnow" href="tai-tro-choi.html" title="Cài Đặt Ngay">Cài Đặt Ngay</a>
                <div class="panel">
                    <a class="register" href="/tai-khoan.html" title="Đăng Ký Nhanh">Đăng Ký Nhanh</a>
                    <a class="payment" title="Nạp thẻ" href="/napthe/napthe.html">Nạp thẻ</a>
                    <a class="account" title="Tài Khoản" href="/tai-khoan.html">Tài Khoản</a>
                    <a class="server" title="Chuyển Server" href="/napthe/napthe.html">Chuyển Server</a>
                </div>
            </div>
            <div class="d">
                <input type="text" name="q" placeholder="Nhập từ khóa cần tìm" class="search">
                <input type="submit" value="Tìm Kiếm" class="s_button">
            </div>
            <div class="e">
                <ul class="tab">
                    <li><a class="Active" href="javascript:;" rel="#SocialFb" title="Facebook">Facebook</a></li>
                </ul>
                <div style="padding-left: 1px;"><div class="fb-page" data-href="<?php echo $__c['link'][0][2][0];?>" data-tabs="timeline" data-width="308" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="<?php echo $__c['link'][0][2][0];?>" class="fb-xfbml-parse-ignore"><a href="<?php echo $__c['link'][0][2][0];?>">Fanpage</a></blockquote></div></div>
            </div>
        </div>
    </div>

    <div id="fb-root"></div>
    <script>(function(d, s, id) {var js, fjs = d.getElementsByTagName(s)[0];if (d.getElementById(id)) return;js = d.createElement(s); js.id = id;js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.9";fjs.parentNode.insertBefore(js, fjs);}(document, 'script', 'facebook-jssdk'));</script>
</html>
