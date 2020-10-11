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



<?php include("inc/header.php");?>

<br><br>

<div  id="iletisim" class="bg-light half-img-section pt100 mb50">
         
         <div class="container contact-img-box " style="background:#f3f3f3;">
        <div class="row justify-content-center">
            <div class="col-lg-12 col-12 contact-box-data">
                <div class="section-title text-left mb-0">
                    <h6 class="">
                        Satın Al
                    </h6>
                </div>
                
                
           
						
            
                
                <form method="post">
               
                <div class="row justify-content-center">
                    <div class="col-6">
                        <p>Adınız:</p>
                        <input type="text" name="adi" class="form-control" aria-required="true" placeholder="Adınız">
                      
                    </div>
                    <div class="col-6">
                        <p>Soyadınız:</p>
                        <input type="text" name="Soy Adınız" class="form-control" aria-required="true" placeholder="Soyadınız">
                    </div>
                    <div class="col-12">
                        <p>Telefon Numaranız:</p>
                        <input type="text" name="telefon" class="form-control" aria-required="true" placeholder="Telefon">
                    </div>
                    
                    <div class="col-8" style="margin:auto;padding:auto;">
                        <p style="text-align:center;">3D Secure ile Güvenli Ödeme</p>
                        <img src="assets/imgs/odeme2.png" width="100%"> <br> <br>
                    </div>
                   
                    <div class="col-12">
                        <p>Kart Üzerindeki İsim:</p>
                        <input type="text" name="isim" class=" form-control" aria-required="true" placeholder=" Kart Üzerindeki isim">
                        <p>Lütfen kart üzerindeki ismi göründüğü gibi yazınız.</p>
                    </div>
                    
                    <div class="col-6">
<select class="form-control">
    <option>Tek Çekim 199₺</option>
    
</select>
<p>Taksitlendirme seçenekleri otomatik olarak gözükecektir.</p>
                    </div>
                    
                    <div class="col-1">
<input type="checkbox" class="form-control" style="width:20px;height:20px;">
                    </div>
                    <div class="col-5">3d Secure ile Öde</div>
                      <div class="col-12">
                          <p>Kart Numarası:</p>
                        <input type="text" name="numara" class=" form-control" aria-required="true" placeholder=" Kart  Numarası">
                        <p>12 haneli kart numaranızı yazınız.</p>
                    </div>
                    <div class="col-6">
                        <p>Son Kullanma Tarihi:</p>
                        <input type="text" name="isim" class=" form-control" aria-required="true" placeholder="Son Kullanma Tarihi">
                        <p>12/2050 şeklinde yazınız.</p>
                    </div>
                    
                     <div class="col-6">
                         <p>CV2:</p>
                        <input type="text" name="isim" class=" form-control" aria-required="true" placeholder="CV2 Kodu">
                        <p>Kartınızın arkasındaki 3 haneli güvenlik kodu.</p>
                    </div>
                    
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary">TAMAMLA </button>
                    </div>
                </div></form>
            </div>
            
        
    </div>
    
</div>
</div>
<?php include("inc/footer.php");?>
<script src="assets/lightbox2-master/dist/js/lightbox-plus-jquery.min.js"></script>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/migrate.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/waypoints.min.js"></script>
<script src="assets/js/theme-plugins.js"></script>
<script src="assets/js/theme-function.js"></script>
</body>

</html>