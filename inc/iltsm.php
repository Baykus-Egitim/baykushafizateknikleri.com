<div  id="iletisim" class="bg-light half-img-section pt100 mb50">
         
         <div class="container contact-img-box ">
        <div class="row justify-content-center">
            <div class="col-lg-5 col-12 contact-box-data">
                <div class="section-title text-left mb-0">
                    <h6 class="">
                        Bizimle İletişine Geçebilirsiniz
                    </h6>
                </div>
                
                
                
                  <?php
					if(isset($_POST['adi']) && isset($_POST['email']) && isset($_POST['mesaj']) && isset($_POST['telefon'])  ) {
						function epostakontrol($email){if (filter_var($email, FILTER_VALIDATE_EMAIL)){return 1;} else {return 0;}} 
						$gelen_mail = $_POST['email']; $mail_kontol=epostakontrol($gelen_mail);
						
					   if(empty($_POST['adi']) || empty($_POST['email']) || empty($_POST['mesaj']) || empty($_POST['telefon']))
					   {
						  echo '<br> &nbsp; &nbsp; 
 						  <font style="color:#FF0004; font-size:16px;">  Lütfen Boş Yer Bırakmayın. </font> 
 						  <br><br>';
						} 
						
						
						else if($mail_kontol == "0"){echo '<br> &nbsp; &nbsp; 
 						  <font style="color:#FF0004; font-size:16px;">   Lütfen e-posta adresini doğru girin. </font> 
 						  <br><br>';} 
						
						else
						
						{
						   include 'class.phpmailer.php';
								$mail = new PHPMailer();
								$mail->IsSMTP();
								$mail->Host = 'smtp.yandex.com.tr';
                                $mail->Port = 465;
                                $mail->SMTPAuth = true;
                                $mail->SMTPSecure = 'ssl';
								$mail->Username = 'ilet@ilterwebtasarim.com';
								$mail->Password = 'ilet2020@';
								$mail->SetFrom($mail->Username, $_POST['adi']);
								$mail->AddAddress('baykushafizateknikleri@gmail.com', 'Baykuş Hafıza Teknikleri');
								$mail->CharSet = 'UTF-8';
								$mail->Subject = $_POST["adi"];
								$mail->MsgHTML('İsim:'.$_POST["adi"].'<br/>
												E-mail:'.$_POST["email"].'<br/>
												Başlık:'.$_POST["mesaj"].'<br/>
												Resim Linki:'.$_POST["telefon"].'<br/>
												');
					if($mail->Send()) 
					
					{ echo 
					
					' <br>  &nbsp;  &nbsp;&nbsp;  
					<font style="color:#24b802; font-size:16px;"> Mesajınız başarıyla gönderildi.  </font>
					<br><br>' 
					
					;} 
					
					
					else 
					{ 
					
					echo '<br> &nbsp; &nbsp; 
					
					<font style="color:#FF0004; font-size:16px;">  Mesaj gönderirken bir hata oluştu ve girmiş olduğunuz bilgiler alınamadı. </font> 
					
					<br><br>'. $mail->ErrorInfo;  
 					}
					
					
					}}
					?>
						
            
                
                <form method="post">
                <div class="row justify-content-center">
                    <div class="col-6">
                        <input type="text" name="adi" class="form-control" aria-required="true" placeholder="Adınız">
                    </div>
                    <div class="col-6">
                        <input type="text" name="telefon" class="form-control" aria-required="true" placeholder="Telefon">
                    </div>
                    <div class="col-12">
                        <input type="email" name="email" class=" form-control" aria-required="true" placeholder=" Email">
                    </div>
                    <div class="col-12">
                        <textarea name="mesaj" cols="40" rows="10" class=" form-control" placeholder="Mesajınız..."></textarea>
                    </div>
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary">GÖNDER </button>
                    </div>
                </div></form>
            </div>
            
            <div class="col-12 col-lg-7" >
            
             <div class="row justify-content-center mt50">
             
            <div class="col-12 col-lg-12">
                <div class="icon-box-three">
                   
                    <div class="content">
                        <h5 class="title">
                            Baykuş Eğitim Yazılımları Danışmanlık Ltd. Şti.			

                        </h5>
                        <p class="desc">
                            
                        </p>
                        <ul class="list-icon">
                            <li>
                                <i class=" fas fa-home"></i>
                                <span class="text"><?=$ayar['firma_adres']?>
		
</span>
                            </li>
                            <li>
                                <i class=" fas fa-envelope"></i>
                               <a href="mailto:<?=$ayar['firma_email']?>" style="color:#000;"><span class="text" style="text-transform:none;"><?=$ayar['firma_email']?>			
</span></a>
                            </li>
                            <li>
                                <i class=" fas fa-mobile"></i>
                             <a href="tel:<?=$ayar['firma_telefon']?>" style="color:#000;"><span class="text">	
	
<?=$ayar['firma_telefon']?></span></a>	
</span>
                            </li>
                            <li>
                                <i class=" fas fa-phone"></i>
                                <a href="tel:<?=$ayar['firma_telefon1']?>" style="color:#000;"><span class="text">	
	
<?=$ayar['firma_telefon1']?></span></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            
            </div>
        </div>
    </div>
    
</div>
</div>