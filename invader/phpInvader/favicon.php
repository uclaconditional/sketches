<?php

if (!extension_loaded('gd')) {
  @header($_SERVER['SERVER_PROTOCOL'] . ' 404 Not Found'); die();
}

srand(microtime(true) * 1000000);

$w = isset($_REQUEST['w']) ? intval($_REQUEST['w']) : 32;
$u = floor($w/7);
$offset = $u;
$im = imagecreatetruecolor($w, $w);
$blue = imagecolorallocate($im, 0, 0, 255);
$white = imagecolorallocate($im, 255, 255, 255);

imagefill($im, 0, 0, $blue);
for ($x = 0; $x < 3; $x++) {
  for ($y = 0; $y < 5; $y++) {
    if (rand(0, 1)) {
          imagefilledrectangle($im, $offset+$x*$u, $offset+$y*$u,
                                    $offset+($x+1)*$u, $offset+($y+1)*$u, $white);
          imagefilledrectangle($im, $offset+(($w-$u*2)-($x*$u))-$u, $offset+$y*$u,
                                    $offset+(($w-$u*2)-($x+1)*$u)-$u, $offset+($y+1)*$u, $white);
       }
  }
}

header('Content-Type: image/png');
header('Expires: ' . gmdate('D, d M Y H:i:s T'));
imagepng($im);
imagedestroy($im);

// embedd with:
// <link rel="icon" type="image/png" href="//favicon.php">
