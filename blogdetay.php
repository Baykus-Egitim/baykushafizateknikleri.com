<?php
include("madmin/include/baglan.php");
include("madmin/include/fonksiyonlar.php");
$id=$_GET['id'];
$blogdetay=$db->query("select * from haberler where id='$id'")->fetch(PDO::FETCH_ASSOC);

?>
<!doctype html>
<html lang="tr">

<head>
    <meta charset="utf-8">
        <meta name="description" content="<?=$ayar["site_title"]?>">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title><?=$blogdetay['adi']?> - <?=$ayar['site_title']?></title>
    <link href="assets/css/theme-plugins.css" type="text/css" rel="stylesheet">
    <link href="assets/css/main.css" type="text/css" rel="stylesheet">
    <link href="assets/css/custom.css" type="text/css" rel="stylesheet">
</head>
<body data-spy="scroll" data-target="#mainMenu" data-offset="50">

<div class="loader">
    <div class="loader-inner"></div>
</div>

<?php include("inc/header.php");?>

<section class="inner-cover img-cover content-center" style="background:#fef9f7; ">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-md-8 baslikalt">
                <div class="cover-content ">
                    <h1 class="cover-heading">
                        <?=$blogdetay['adi']?>
                    </h1>
                   
                </div>
            </div>
        </div>
    </div>
</section>

<section  class="pb50 bg-light">
    <div class="container ">
        <div class="row justify-content-center">
        <div class="col-12 col-lg-6">
                <div class="complex-img">
                    <div class="img-one" style="background-image: url('lib/images/haberler/<?=$blogdetay['resim']?>')"></div>
                </div>
            </div>
            <div class="col-12 col-lg-6">
                <div class="section-title">
                   
                    <p class="desc"><?=$blogdetay['aciklama']?></p>
                </div>
            </div>
            
        </div>
    </div>
</section>

<?php include("inc/footer.php");?>

<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/migrate.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/waypoints.min.js"></script>
<script src="assets/js/theme-plugins.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBP_to_9j8_aA_g_qTGmYpxxz5beSSG-q0"></script>
<script src="assets/js/theme-function.js"></script>
</body>

</html>