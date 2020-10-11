<div class="bg-light " style="margin-top:50px; margin-bottom:-55px;">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-lg-7">
                <div class="section-title text-center mb50">
                    <h6 class="sub-title">
                        NE DİYORLAR?

                    </h6>
                    <h3 class="title">
                        Kullanıcı Yorumları
                    </h3>
                  
                </div>
            </div>
        </div>
        <div class="owl-carousel testimonial-two owl-theme">
        
           <?php
                $yorum=$db->query("select * from yorumlar",PDO::FETCH_ASSOC);
				if($yorum->rowCount())
				{
					foreach($yorum as $yorumg)
					{
				?>
        
            <div class="item contact-img-box contact-box-data" style="margin-left:5px; padding-left:5px; padding-right:5px;" >
                <div class="testimonial-box">
                    <div class="testimonial-img" style="float:left;">
                        <img src="lib/images/yorumlar/<?=$yorumg['resim']?>" alt="testimonials">
                    </div>
                    <div class="testimonial-data" style="float:left;margin-left:10px;margin-top:5px;">
                        <h5 class="testimonial-name">
                           <?=$yorumg['adi']?>
                        </h5>
                        <div class="testimonial-position">
                            <?=$yorumg['unvan']?>
                        </div>
                    </div>
                    <div class="testimonial-data" style="float:right; ">
                        <p class="testimonial-text"><?=$yorumg['aciklama']?>
</p>
                    </div>
                </div>
            </div>
            
            <?php }}?>   
            
        </div>
    </div>
</div>