<?php
    $contents = file_get_contents("../scripts-server/gitpull.sh");
    $output_status = shell_exec($contents);
    echo ("done? \n $output_status");
?>
