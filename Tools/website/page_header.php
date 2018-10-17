<?php
    $_P_t = isset($_P_t)?$_P_t:'Tin tức'; $_H_t = $_P_t;

    require 'header.php';
?>

<html>
    <div class="_a" style="height: 276px;">
        <div class="_dp">
            <a class="download" href="/tai-tro-choi.html" title="Cài Đặt Ngay">Cài Đặt Ngay</a>
           <div>
               <a class="register" href="/tai-khoan.html" title="Đăng Ký Nhanh">Đăng Ký Nhanh</a>
               <a class="payment" href="/tai-khoan.html" title="Nạp thẻ">Nạp Thẻ</a>
           </div>
        </div>
        <div class="_e">
            <div class="search">
                <form method="get" onsubmit="return false">
                    <input type="text" placeholder="Nhập từ khóa cần tìm" class="search__field">
                    <input type="submit" value="Tìm Kiếm" class="search__button">
                </form>
            </div>
            <div class="e1">
                <div class="e2">
                    <div class="e3">
                        <h1 class="e4"><?php echo $_P_t;?></h1>
                        <ul class="e5">
                            <li class="e6"><a href="/">Trang chủ</a></li>
                            <li class="e7">> <?php echo $_P_t;?></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</html>
