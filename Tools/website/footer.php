<?php
    require 'config.php';
?>

<html>
    <div class="_d">
        <div class="d1">
            <p class="VNG"></p>
            <p class="KingSoft"></p>
            <p class="text">
                Bản quyền trò chơi thuộc công ty Kingsoft.<br>
                Công ty Cổ phần VNG phân phối độc quyền tại Việt Nam. 182 Lê Đại Hành, Phường 15, Quận 11, TP.HCM.<br>
                <?php echo 'Lưu ý: '.$__c['title'][0].' không phải nhà phân phối chính thức, xin cân nhắc trước khi tham gia';?></p>
        </div>
    </div>

    <div id="fb-root"></div>
    <script>(function(d, s, id) {var js, fjs = d.getElementsByTagName(s)[0];if (d.getElementById(id)) return;js = d.createElement(s); js.id = id;js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.5";fjs.parentNode.insertBefore(js, fjs);}(document, 'script', 'facebook-jssdk'));</script>
    <script>jQuery(document).ready(function () {jQuery(".chat_fb").click(function() {jQuery('.fchat').toggle('slow');});});</script>
    <?php
        if(!empty($__c['link'][0][2][2]) && $__c['link'][0][2][2] == 1){
            echo '
                <div id="cfacebook">
                    <a href="javascript:;" class="chat_fb" onclick="return false;"><i class="fa fa-facebook-square"></i>Trò chuyện với Gamemaster</a>
                    <div class="fchat"><div class="fb-page" data-tabs="messages" data-href=" '.$__c['link'][0][2][0].' " data-width="250" data-height="400" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true" data-show-posts="false"></div></div>
                </div>
            ';
        }
    ?>
</html>
