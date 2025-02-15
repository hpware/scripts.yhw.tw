<?php
    $output_status = shell_exec("cd /var/www/scripts.yhw.tw/ && sudo git pull");
    echo ("done? \n $output_status");
?>
