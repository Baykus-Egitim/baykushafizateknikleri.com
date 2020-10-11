<?php
include("madmin/include/baglan.php");
include("madmin/include/fonksiyonlar.php");

?>
<!doctype html>
<html lang="tr">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Blog - <?=$ayar['site_title']?></title>
        <meta name="description" content="<?=$ayar["site_title"]?>">
    <link href="assets/css/theme-plugins.css" type="text/css" rel="stylesheet">
    <link href="assets/css/main.css" type="text/css" rel="stylesheet">
    <link href="assets/css/custom.css" type="text/css" rel="stylesheet">
</head>
<body data-spy="scroll" data-target="#mainMenu" data-offset="50">

<div class="loader">
    <div class="loader-inner"></div>
</div>

					<?php include("inc/header.php"); ?>

<section class="inner-cover content-center img-cover" style="background:#fef9f7; ">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-md-8 baslikalt">
                <div class="cover-content ">
                    <h1 class="cover-heading">
                         Blog
                    </h1>
                    
                </div>
            </div>
        </div>
    </div>
</section>

<div  class="bg-light  pb70">
    <div class="container">
        <div class="row justify-content-center">
        
       
                <?php $blog_cek=$db->query("select * from haberler order by sira desc ",PDO::FETCH_ASSOC);
					    if($blog_cek->rowCount()){
							foreach($blog_cek as $blog_goster){
				?> 
        
            <div class="col-12 col-sm-10 col-md-4" style="float:left;">
                
                 
                <div class="blog-post-one" style="float:left;">
                    <figure>
                        <a href="bd-<?=$blog_goster['seo']?>-<?=$blog_goster['id']?>">
                            <img  src="lib/images/haberler/<?=$blog_goster['resim']?>" class=" wp-post-image" alt=""/>
                        </a>
                    </figure>
                    <div class="info-post">
                        <h3 class="post-title">
                            <a href="bd-<?=$blog_goster['seo']?>-<?=$blog_goster['id']?>"> <?=$blog_goster['adi']?></a>
                        </h3>
                 
                       
                    </div>
                </div>
                
                      
                
            </div>
            <?php }}?>
            
        
            
        </div>
    </div>
</div>

					<?php include("inc/footer.php"); ?>

<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/migrate.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/waypoints.min.js"></script>
<script src="assets/js/theme-plugins.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBP_to_9j8_aA_g_qTGmYpxxz5beSSG-q0" ></script>
<script src="assets/js/theme-function.js"></script>
</body>

</html>