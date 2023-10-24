<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hiển thị 10 cặp giá trị trong 1 mảng</title>
</head>
<style>
    body{
        color : red;
    }
</style>
<body>
<?php

$mang = array(
    "key1" => "value44",
    "key2" => "value16",
    "key3" => "value78",
    "key4" => "value45",
    "key5" => "value98",
    "key6" => "value91",
    "key7" => "value75",
    "key8" => "value68",
    "key9" => "value39",
    "key10" => "value40",
);

echo "SỬ DỤNG FOR:<br><br>";
for ($i = 1; $i <=10; $i++) {
    $key = "key" . $i;
    $value = $mang[$key];
    echo "$key => $value<br><br>";
}

echo "<br>SỬ DỤNG FOREACH:<br><br>";
foreach ($mang as $key => $value) {
    echo "$key => $value<br><br>";
}

?>
</body>
</html>
