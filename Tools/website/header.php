<?php
    session_start();

    require 'config.php';

    $_H_t = isset($_H_t)?$_H_t:$__c['title'][0];

    $pu_Fb = (!empty($__c['link'][0][2][3]) && $__c['link'][0][2][3] == 1 && (!isset($_SESSION['pu_Fb']) || $_SESSION['pu_Fb'] != 1))?'<script>$(document).ready(function(){fN(\'<span style="background:#000;display: block;box-shadow: 0 0 15px 40px black;"><br>Nhanh tay nhấn thích và chia sẻ Fanpage của '.$__c['title'][0].'<br>để theo dõi các hoạt động nhận thưởng cực kỳ hấp dẫn như: <span style="color:orange;">thưởng Giftcode</span>, <span style="color:green;">thưởng mạng xã hội<span>!<br><br><br><span class="fb-like" data-href="'.$__c['link'][0][2][0].'" data-layout="button_count" data-action="like" data-size="large" data-show-faces="true" data-share="true"></span><br><br><br></span>\', null, null, 179);});</script>':'';

    (!empty($__c['link'][0][2][3]) && $__c['link'][0][2][3] == 1)?($_SESSION['pu_Fb']=1):null;

?>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="keywords" content="game lau,vo lam lau,vo lam private" />
        <meta name="description" content="<?php echo $_H_t;?>" />
        <title><?php echo $_H_t;?></title>
        <link type="text/css" rel="stylesheet" href="/lib/_c.css">
        <script type="text/javascript" src="/lib/_jq.js"></script>
        <script type="text/javascript" src="/lib/_jc.js"></script>
        <link href="/lib/favicon.ico" rel="shortcut icon" type="/image/vnd.microsoft.icon">
        <?php echo $pu_Fb;?>
    </head>
    <body>
<div class="_a" style="height: 210px;">
    <a href="/" title="Trang chủ" class="_ab">Trang chủ</a>
    <nav class="_ac">
        <ul>
            <li><a href="/" title="trang chủ" class="home"><span>icon</span></a></li>
            <li><a href="/tin-tuc.html" title="tin tức" class="news"><span>icon</span></a></li>
            <li><a href="/su-kien.html" title="sự kiện" class="events"><span>icon</span></a></li>
            <li><a href="/cam-nang.html" title="cẩm nang" class="tip"><span>icon</span></a></li>
            <li><a href="<?php echo $__c['link'][0][0][0];?>" title="hỗ trợ" class="support"><span>icon</span></a></li>
            <li><a href="<?php echo $__c['link'][0][1][0];?>" title="diễn đàn" class="social"><span>icon</span></a></li>
        </ul>
    </nav>
</div>
    </body>
</html>
