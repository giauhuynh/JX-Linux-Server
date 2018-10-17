<?php
// NOTE: The ADOdb and PEAR directories MUST be in your PHP include_path!
require_once "Auth/Auth.php";

function loginFunction() {
?>
    <form method="post" action="<?php echo $_SERVER['PHP_SELF'] ?>">
    <input autocomplete='off' type="text" name="username">
    <input autocomplete='off' type="password" name="password">
    <input autocomplete='off' type="submit">
    </form>
<?php
}

$dsn = 'mysql://username:password@hostname/database';
// To use encrypted passwords, change cryptType to 'md5'
$params = array('dsn' => $dsn, 'table' => 'auth', 'cryptType' => 'none',
                'usernamecol' => 'username', 'passwordcol' => 'password');
$a = new Auth("ADOdb", $params, "loginFunction");
$a->start();

if ($a->getAuth()) {
    echo "Success";
    // * The output of your site goes here.
}
