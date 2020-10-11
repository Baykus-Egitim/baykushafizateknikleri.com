<div  id="ozellikler"  class="bg-light pt100 pb20">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-lg-7">
                <div class="section-title text-center " style="margin-bottom:-20px;">
                   
                    <h3 class="title">
                        Özellikler
                    </h3>
                     </div>
            </div>
        </div>
        <div class="row text-center justify-content-center">
        
        
        
                     <?php
                $urunkat=$db->query("select * from urunler order by sira asc",PDO::FETCH_ASSOC);
				if($urunkat->rowCount())
				{
					foreach($urunkat as $urunkatt)
					{
				?>
            <div class="col-12 col-sm-10 col-md-4">
                <div class="team_box">
                    <div class="team_img">
                        <a class="example-image-link" href="lib/images/urunler/<?=$urunkatt['resim']?>" data-lightbox="example-set" >
<img src="lib/images/urunler/<?=$urunkatt['resim']?>" alt="team name">
</a>
                    </div>
                </div>
            </div>
                            
            <?php }}?>  
            
        </div>
    </div>

</div>