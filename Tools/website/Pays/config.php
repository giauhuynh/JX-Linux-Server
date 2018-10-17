<?php

    error_reporting(0);
    require_once 'adodb5/adodb.inc.php';

    /* $c_allowConnect: Chỉ cho phép máy chủ có địa chỉ này truy cập
     * nếu các kết nối đến máy chủ này không phải địa chỉ được khai báo sẽ không thể truy vấn đến database
     * */ $c_allowConnect = '127.0.0.1';

    /* $c_ipDatabase: khai báo địa chỉ database
     *  mặc định là 127.0.0.1 hoặc localhost
     * */ $c_ipDatabase = 'TLINKVN-25249';

    /* $c_UserDatabase: khai báo tài khoản dùng để đăng nhập database
     * thường là: sa
     * */ $c_UserDatabase = 'sa';

     /* $c_PassDatabase: khai báo mật khẩu dùng để truy cập database
      * */ $c_PassDatabase = 'TrungHieu@123';

      /* $c_NameDatabase: tên database cần truy vấn
       * jx linux hay dùng là: account_tong
       * */ $c_NameDatabase = 'account_tong';

       /* $c_API_BaoKim: khai báo cấu hình nạp thẻ BaoKim.vn */
       $c_API_BaoKim = array(
           'isBank' => array('API_BaoKim', /* Khu vực <isBank> không được thay đổi */),
           'SecurityCode' => array('c90aa3947c76b602', 'Mật khẩu đi kèm mã website do bảo kim cung cấp'),
           'MerchantID' => array('20792', 'MerchantID do bảo kim cung cấp'),
           'APIUserName' => array('volamtruyenky', 'APIUserName do bảo kim cung cấp'),
           'APIPassword' => array('JHGIUEGH7632KHERt6', 'APIPassword do bảo kim cung cấp'),
       );
	   
       /* $c_API_BaoKim: khai báo cấu hình nạp thẻ VipPay.vn */
       $c_API_VipPay = array(
           'isBank' => array('API_VipPay', /* Khu vực <isBank> không được thay đổi */),
           'MerchantID' => array('12221', 'MerchantID do vippay cung cấp'),
           'APIUserName' => array('202a3fe17a16408d89b4b9f9e26baae3', 'APIUserName do vippay cung cấp'),
           'APIPassword' => array('fe75e445aee74e03acde2c97ecfe98bb', 'APIPassword do vippay cung cấp'),
       );
	   
	    /* $c_API_GameBank: khai báo cấu hình nạp thẻ GameBank.vn */
	   $c_API_GameBank = array(
			'isBank' => array('API_GameBank', /* Khu vực <isBank> không được thay đổi */),
			'MerchantID' => array('50844', 'MerchantID do gamebank cung cấp'),
			'APIUserName' => array('Xin liên hệ bộ phận hỗ trợ của gamebank', 'APIUserName do gamebank cung cấp'),
			'APIPassword' => array('fe75e445aee74e03acde2c97ecfe98bb', 'APIPassword do gamebank cung cấp'),
	   );

       /* Khai báo trung gian tiếp nhận thanh toán thẻ */
       $c_Payment = $c_API_GameBank;

    $db = ADONewConnection('mssql');
    $db->debug = false;

?>














