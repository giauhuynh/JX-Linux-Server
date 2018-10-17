<?php
    require_once 'func.php';
    require_once 'config.php';

    if(isset($_GET['i']) && !empty($_GET['i'])){
        $i = $_GET['i'];

        if(is_file($__c['folder_baiviet'][0] . '/' . $i . '.php')){

            require_once $__c['folder_baiviet'][0] . '/' . $i . '.php';

            $t = $ContentFile[$i . '_Title']; $c = $ContentFile[$i . '_Content'];
        }
    }
	
	$a = b('all', 5);
	$c .= '
		<ul class="_Post_n">
			<li class="t">Tin tức có liên quan</li>
	';
	
	for($_f = 0; $_f < count($a); $_f ++){
		$c .= '
			<li><a href="/'.$a[$_f][0].'.html">'.$a[$_f][1].'</a><span>'.$a[$_f][3].'</span></li>
		';
	}
	$c .= '</ul>';

    (isset($c)&&!empty($c))?null:($c='<META HTTP-EQUIV="refresh" CONTENT="0; URL=/">');

    $_P_t = $t?$t:'';

    require 'page_header.php';
?>

<html>
    <style type="text/css" rel="stylesheet">
		._e .e1{background: none repeat scroll 0 0 #323337;}
		._Post_n{padding: 0;list-style: none;background:#f1f1f1;margin-top: 50px;}
		._Post_n li.t{padding: 8px;background: linear-gradient(#556565, #020202);color: #fff;font-weight: bold;text-indent: 20px;}
		._Post_n li{background: url(/lib/icon.gif) no-repeat 12px center;padding-left: 26px;border-bottom: 1px solid #bbb;margin: 6px 0;padding-top: 3px;padding-bottom: 3px;}
		._Post_n li a{color: #000;display: inline-block;width: 85%;}
		._Post_n li a:hover{color:#ff0000;}
		._Post_n li span{float: right;margin-right: 20px;}
	</style>
    <link type="text/css" rel="stylesheet" href="/lib/content.css">
    <div class="_g">
        <div class="g1"><?php echo $c; ?></div>
    </div>
</html>

<?php require 'footer.php'; ?>
