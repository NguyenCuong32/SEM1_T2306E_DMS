<!DOCTYPE html>
<html>
<head>
    <title>Hiển thị 10 số trong 1 mảng </title>
</head>
<style>
    h1{
        color : red;
    }
</style>
<body>
    <?php
    
    $array = [60, 25, 48, 34, 55, 26, 71, 85, 11, 10];
    ?>

    <h1>SỬ DỤNG FOR:</h1>
    <ul>
        <?php
        for ($i = 0; $i < 10 ; $i++) {
            echo "<li>Số thứ " . ($i + 1) .  "Là "  . $array[$i] . "</li>";
        }
        ?>
    </ul>

    <h1>SỬ DỤNG FOREACH:</h1>
    <ul>
        <?php
        foreach ($array as $key => $value) {
            echo "<li>Số thứ " . ($key + 1) . "Là $value</li>";
        }
        ?>
    </ul>
</body>
</html>
