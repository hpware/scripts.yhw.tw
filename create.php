<?php
$actual_link = "https://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
echo $actual_link.replace("https://scripts.yhw.tw/create.php", "");
?>
