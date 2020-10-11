<?php
include("madmin/include/baglan.php");
include("madmin/include/fonksiyonlar.php");
?>

<!doctype html>
<html lang="tr">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="assets/imgs/favicon.png" type="image/x-icon" />
    <title><?=$ayar['site_title']?></title>
        <meta name="description" content="<?=$ayar["site_title"]?>">
    <link href="assets/css/theme-plugins.css" type="text/css" rel="stylesheet">
    <link href="assets/css/main.css" type="text/css" rel="stylesheet">
    <link href="assets/css/custom.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" href="assets/lightbox2-master/dist/css/lightbox.min.css">
    <style>


a:hover {
  color: #85428B;
}

</style>
</head>
<body data-spy="scroll" data-target="#mainMenu" data-offset="50">


<?php include('inc/header.php'); ?>
<?php include('inc/slider.php'); ?>
<?php include('inc/hak.php'); ?>
<?php include('inc/servis.php'); ?>
<?php include('inc/team.php'); ?>
<?php include('inc/fiyat.php'); ?>
<?php include('inc/yorum.php'); ?>
<?php include('inc/iltsm.php'); ?>
<?php include('inc/footer.php'); ?>



<script src="assets/lightbox2-master/dist/js/lightbox-plus-jquery.min.js"></script>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/migrate.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/waypoints.min.js"></script>
<script src="assets/js/theme-plugins.js"></script>
<script src="assets/js/theme-function.js"></script>
</body>

</html>