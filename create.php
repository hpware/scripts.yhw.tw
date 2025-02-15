<?php
$actual_link = "https://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$link = str_replace("https://scripts.yhw.tw/create.php?", "", $actual_link);
if (strpos($link, "../") !== false) {
    die("error");
}

$myfile = fopen($link, "w") or die("Unable to open file!");

?>
<form submit="create.php" method="POST">
    <textarea/>
    <input type="text" />
</form>
