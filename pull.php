<?php
    $output_status = shell_exec("git config --global --add safe.directory /var/www/scripts.yhw.tw && cd /var/www/scripts.yhw.tw/ && git pull");
    echo ("done? \n $output_status");
?>
