<script type="text/javascript">
    (function () {
        var options = {
            whatsapp: "+905526864493", // WhatsApp numarası
            call_to_action: "Merhaba, nasıl yardımcı olabilirim?", // Görüntülenecek yazı
            position: "right", // Sağ taraf için 'right' sol taraf için 'left'
        };
        var proto = document.location.protocol, host = "getbutton.io", url = proto + "//static." + host;
        var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = url + '/widget-send-button/js/init.js';
        s.onload = function () { WhWidgetSendButton.init(host, proto, options); };
        var x = document.getElementsByTagName('script')[0]; x.parentNode.insertBefore(s, x);
    })();
</script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-177196213-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-177196213-1');
</script>



<?php

$url=$_SERVER['REQUEST_URI'];

?>
<div class="header-top" style="background:#8f3e9f;">
    <div class="container">
        <div class="row justify-content-between">
            <div class="header-top-meta">&nbsp;&nbsp;
                <div class="header-top-item"><a href="tel:<?=$ayar['firma_telefon1']?>"><i class="fa fa-phone-volume" style="color:#fff; font-size:17px;"></i><span style="color:#fff!important;"> <b><?=$ayar['firma_telefon1']?></b> </span></a></div>
                <div class="header-top-item"><a href="tel:<?=$ayar['firma_telefon']?>"><i class="fa fa-mobile-alt" style="color:#fff; font-size:17px;"></i><span style="color:#fff!important;"> <b> &nbsp;<?=$ayar['firma_telefon']?></b> </span></a> </div>
            </div>
            <div class="header-top-item">
              
                       <a href="<?=$ayar['facebook']?>" target="_blank"><i class="fab fa-facebook-f" style="color:#fff; font-size:16px;"></i></a> &nbsp;&nbsp;&nbsp;
                       <a href="<?=$ayar['instagram']?>" target="_blank"><i class="fab fa-instagram" style="color:#fff; font-size:16px;"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;
                       <a href="<?=$ayar['twitter']?>" target="_blank"><i class="fab fa-youtube" style="color:#fff; font-size:16px;"></i></a>&nbsp;&nbsp;
                        
                    
            </div>
        </div>
    </div>
</div>


<nav class="navbar navbar-expand-lg header header-light" style="position:fixed;">
    <div class="container">
        <div class="navbar-brand-sm logo">
           <a href="anasayfa" ><img src="lib/images/logo/<?=$ayar['logo']?>" alt="<?=$ayar['site_title']?>" width="150"></a>
        </div>
        <button class="navbar-toggler header_menu_btn " type="button" data-toggle="collapse" data-target="#mainMenu" aria-controls="mainMenu" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse " id="mainMenu">
            <div class="header-inner">
                <div class="navbar-brand-lg logo">
<a href="anasayfa" ><img src="lib/images/logo/<?=$ayar['logo']?>" alt="<?=$ayar['site_title']?>"  width="160"></a>                </div>
                
                
                <ul class="navbar-nav">
                    <li class="nav-item ">
                        <a class="nav-link " <?php if($url!='/anasayfa'){?> href="anasayfa#bhtnedir" <?php } else {?>  href="#bhtnedir"  <?php }?>>BHT Nedir?</a></li>
                    <li class="nav-item"><a <?php if($url!='/anasayfa'){?> href="anasayfa#ozellikler" <?php } else {?>  href="#ozellikler"  <?php }?>class="nav-link">Özellikler</a></li>
                    <li class="nav-item"><a <?php if($url!='/anasayfa'){?> href="anasayfa#iletisim" <?php } else {?>  href="#iletisim"  <?php }?> class="nav-link">İletişim</a></li>
                    <li class="nav-item"><a <?php if($url!='/anasayfa'){?> href="anasayfa#satinal" <?php } else {?>  href="#satinal"  <?php }?>class="nav-link">Satın Al</a></li>
                </ul>
                
                    <a href="#" class="btn btn-solid"> Giriş Yap </a>
                
               
            </div>
        </div>
    </div>
</nav>