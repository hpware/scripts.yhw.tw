<?php
$actual_link = "https://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$link = str_replace("https://scripts.yhw.tw/create.php", "", $actual_link);

echo $link;
?>
