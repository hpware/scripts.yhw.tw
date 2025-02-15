<?php
$actual_link = "https://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$link = str_replace("https://scripts.yhw.tw/create.php?", "", $actual_link);

if (strpos($link, "../") !== false) {
    die("error");
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $content = $_POST['content'] ?? '';
    $myfile = fopen($link, "w");
    fwrite($myfile, $content);
    fclose($myfile);
    echo "File written successfully";
}
?>

<form action="create.php" method="POST">
    <textarea name="content"></textarea>
    <input type="text" name="filename" />
    <input type="submit"/>
</form>
