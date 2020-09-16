<?php $__env->startSection('content'); ?>

<style>
    .center1 {
  display: block;
  margin-left: auto;
  margin-right: auto;
  
}
    .center2 {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width:100%;
}
</style>
<?php

$servername = "localhost";
$username = "senitta_portal";
$password = "Admin@123!@#";

$conn = new mysqli($servername, $username, $password,'senitta_hygiene2');
$sqltran2 = mysqli_query($conn, "SELECT SUM(makeover) as t1 from choose_interest")or die(mysqli_error($conn));
while ($rowList31 = mysqli_fetch_array($sqltran2))
{ 
                   $makeover=$rowList31['t1']; 
}

$sqltran21 = mysqli_query($conn, "SELECT SUM(fashion_lifestyle) as t2 from choose_interest")or die(mysqli_error($conn));
while ($rowList32 = mysqli_fetch_array($sqltran21))
{ 
                   $fashion_lifestyle=$rowList32['t2']; 
}
$sqltran22 = mysqli_query($conn, "SELECT SUM(female_facts) as t3 from choose_interest")or die(mysqli_error($conn));
while ($rowList33 = mysqli_fetch_array($sqltran22))
{ 
                   $female_facts=$rowList33['t3']; 
}
$sqltran23 = mysqli_query($conn, "SELECT SUM(trending_bytes) as t4 from choose_interest")or die(mysqli_error($conn));
while ($rowList34 = mysqli_fetch_array($sqltran23))
{ 
                   $trending_bytes=$rowList34['t4']; 
}
?>

<section class="site-content">
  <div class="container">
     <div class="group-banners">
         <div class="animated fadeInRight delay-1s">
    	<div class="row" style="margin-top:-2.5%;">
    	 <div class="col-md-4">   
        <img src="/images/Senitta-Banner.png" alt="Senitta" >
        </div>
        <div class="col-md-2">
            <!-- <form action="test.php" method="post">
                <input type="hidden" name="makeover" value="1"/> -->
             <a href="<?php echo e(URL::to('/page?name=makeover-tips')); ?>" style="text-decoration:none;">
              <input type="image" src="/images/Makeover-Tips.png" class="center1" style="margin-top:20%" alt="Submit"></a>
             <!-- </form> -->
             <?php echo $makeover;?>%
             <div class="w3-light-grey">
  <div class="w3-green" style="height:24px;width:<?php echo $makeover;?>%"></div>
</div>
        </div>
         <div class="col-md-2">
             <!-- <form method="post" action="test1.php">
                 <input type="hidden" name="fashion_lifestyle" value="1"/> -->
             <a href="<?php echo e(URL::to('/page?name=fashion-and-lifestyle')); ?>" style="text-decoration:none;"><input type="image" src="/images/Fashion-and-Lifestyle.png" class="center1" style="margin-top:20%" alt="Submit"></a>
             <!-- </form> -->
             <?php echo $fashion_lifestyle;?>%
             <div class="w3-light-grey">
  <div class="w3-green" style="height:24px;width:<?php echo $fashion_lifestyle;?>%"></div>
</div>
        </div>
         <div class="col-md-2">
             <!-- <form method="post" action="test2.php">
                 <input type="hidden" name="female_facts" value="1"/> -->
             <a href="<?php echo e(URL::to('/page?name=female-facts')); ?>" style="text-decoration:none;"><input type="image" src="/images/Female-Facts.png" class="center1" style="margin-top:20%" alt="Submit"></a>
             <!-- </form> -->
             <?php echo $female_facts;?>%
             <div class="w3-light-grey">
  <div class="w3-green" style="height:24px;width:<?php echo $female_facts;?>%"></div>
</div>
        </div>
         <div class="col-md-2">
             <!-- <form method="post" action="test3.php">
                 <input type="hidden" name="trending_bytes" value="1"/> -->
            <a href="<?php echo e(URL::to('/page?name=trending-bytes')); ?>" style="text-decoration:none;">
             <input type="image" src="/images/Trending-Bytes.png" class="center1" style="margin-top:20%" alt="Submit"></a>
             <!-- </form> -->
             <?php echo $trending_bytes;?>%
             <div class="w3-light-grey">
  <div class="w3-green" style="height:24px;width:<?php echo $trending_bytes;?>%"></div>
</div>
        </div>
        </div>
        </div>
        
  <div class="animated fadeInUp delay-2s">
        <div class="row" style="background-color: #f5f5f5;">
            <div class="col-md-6">
        <img src="/images/Why-Senitta.jpg" class="center2" alt="Senitta">
        </div>
       
            <div class="col-md-6">
                 <a href="<?php echo e(URL::to('/page?name=why-senitta')); ?>">
                  <img src="images/website_banner_text.jpg" class="center2" alt="Senitta"></a>
        </div>
        </div>
        </div>
        <div class="animated fadeInLeft delay-3s">
        <div class="row" style="background-color: #fff;margin-left:0px;">
            <div class="col-md-6">
        <a href="https://play.google.com/store/apps/details?id=com.senitta.hygiene"><img src="/images/Play_win_copy3.jpg" class="center2" alt="Senitta"></a>
        </div>
        <div class="col-md-6">
            <img src="/images/Play_win_copy4.jpg" class="center2" alt="Senitta">
            </div>
        </div>
        </div>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <div class="animated fadeInDown delay-4s">
         <div class="row">
              <div class="col-md-4">
                  <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v4.0&appId=178296159399284&autoLogAppEvents=1"></script>
                  <div class="fb-page" data-href="https://www.facebook.com/senittaofficial" data-tabs="timeline" data-width="" data-height="730" data-small-header="false" data-adapt-container-width="false" data-hide-cover="false" data-show-facepile="false"><blockquote cite="https://www.facebook.com/senittaofficial" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/senittaofficial">Senitta</a></blockquote></div>
                  </div>
                  <div class="col-md-4">
            <a class="twitter-timeline" data-width="400" data-height="730" href="https://twitter.com/Senittaofficial?ref_src=twsrc%5Etfw">Tweets by Senittaofficial</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>      
                  </div>
                  <div class="col-md-4">
<blockquote class="instagram-media" data-instgrm-captioned data-instgrm-permalink="https://www.instagram.com/p/B80Vm9UBElF/?utm_source=ig_embed&amp;utm_campaign=loading" data-instgrm-version="12" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:540px; min-width:326px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:16px;"> <a href="https://www.instagram.com/p/B80Vm9UBElF/?utm_source=ig_embed&amp;utm_campaign=loading" style=" background:#FFFFFF; line-height:0; padding:0 0; text-align:center; text-decoration:none; width:100%;" target="_blank"> <div style=" display: flex; flex-direction: row; align-items: center;"> <div style="background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 40px; margin-right: 14px; width: 40px;"></div> <div style="display: flex; flex-direction: column; flex-grow: 1; justify-content: center;"> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; margin-bottom: 6px; width: 100px;"></div> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; width: 60px;"></div></div></div><div style="padding: 19% 0;"></div> <div style="display:block; height:50px; margin:0 auto 12px; width:50px;"><svg width="50px" height="50px" viewBox="0 0 60 60" version="1.1" xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g transform="translate(-511.000000, -20.000000)" fill="#000000"><g><path d="M556.869,30.41 C554.814,30.41 553.148,32.076 553.148,34.131 C553.148,36.186 554.814,37.852 556.869,37.852 C558.924,37.852 560.59,36.186 560.59,34.131 C560.59,32.076 558.924,30.41 556.869,30.41 M541,60.657 C535.114,60.657 530.342,55.887 530.342,50 C530.342,44.114 535.114,39.342 541,39.342 C546.887,39.342 551.658,44.114 551.658,50 C551.658,55.887 546.887,60.657 541,60.657 M541,33.886 C532.1,33.886 524.886,41.1 524.886,50 C524.886,58.899 532.1,66.113 541,66.113 C549.9,66.113 557.115,58.899 557.115,50 C557.115,41.1 549.9,33.886 541,33.886 M565.378,62.101 C565.244,65.022 564.756,66.606 564.346,67.663 C563.803,69.06 563.154,70.057 562.106,71.106 C561.058,72.155 560.06,72.803 558.662,73.347 C557.607,73.757 556.021,74.244 553.102,74.378 C549.944,74.521 548.997,74.552 541,74.552 C533.003,74.552 532.056,74.521 528.898,74.378 C525.979,74.244 524.393,73.757 523.338,73.347 C521.94,72.803 520.942,72.155 519.894,71.106 C518.846,70.057 518.197,69.06 517.654,67.663 C517.244,66.606 516.755,65.022 516.623,62.101 C516.479,58.943 516.448,57.996 516.448,50 C516.448,42.003 516.479,41.056 516.623,37.899 C516.755,34.978 517.244,33.391 517.654,32.338 C518.197,30.938 518.846,29.942 519.894,28.894 C520.942,27.846 521.94,27.196 523.338,26.654 C524.393,26.244 525.979,25.756 528.898,25.623 C532.057,25.479 533.004,25.448 541,25.448 C548.997,25.448 549.943,25.479 553.102,25.623 C556.021,25.756 557.607,26.244 558.662,26.654 C560.06,27.196 561.058,27.846 562.106,28.894 C563.154,29.942 563.803,30.938 564.346,32.338 C564.756,33.391 565.244,34.978 565.378,37.899 C565.522,41.056 565.552,42.003 565.552,50 C565.552,57.996 565.522,58.943 565.378,62.101 M570.82,37.631 C570.674,34.438 570.167,32.258 569.425,30.349 C568.659,28.377 567.633,26.702 565.965,25.035 C564.297,23.368 562.623,22.342 560.652,21.575 C558.743,20.834 556.562,20.326 553.369,20.18 C550.169,20.033 549.148,20 541,20 C532.853,20 531.831,20.033 528.631,20.18 C525.438,20.326 523.257,20.834 521.349,21.575 C519.376,22.342 517.703,23.368 516.035,25.035 C514.368,26.702 513.342,28.377 512.574,30.349 C511.834,32.258 511.326,34.438 511.181,37.631 C511.035,40.831 511,41.851 511,50 C511,58.147 511.035,59.17 511.181,62.369 C511.326,65.562 511.834,67.743 512.574,69.651 C513.342,71.625 514.368,73.296 516.035,74.965 C517.703,76.634 519.376,77.658 521.349,78.425 C523.257,79.167 525.438,79.673 528.631,79.82 C531.831,79.965 532.853,80.001 541,80.001 C549.148,80.001 550.169,79.965 553.369,79.82 C556.562,79.673 558.743,79.167 560.652,78.425 C562.623,77.658 564.297,76.634 565.965,74.965 C567.633,73.296 568.659,71.625 569.425,69.651 C570.167,67.743 570.674,65.562 570.82,62.369 C570.966,59.17 571,58.147 571,50 C571,41.851 570.966,40.831 570.82,37.631"></path></g></g></g></svg></div><div style="padding-top: 8px;"> <div style=" color:#3897f0; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:550; line-height:18px;"> View this post on Instagram</div></div><div style="padding: 12.5% 0;"></div> <div style="display: flex; flex-direction: row; margin-bottom: 14px; align-items: center;"><div> <div style="background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(0px) translateY(7px);"></div> <div style="background-color: #F4F4F4; height: 12.5px; transform: rotate(-45deg) translateX(3px) translateY(1px); width: 12.5px; flex-grow: 0; margin-right: 14px; margin-left: 2px;"></div> <div style="background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(9px) translateY(-18px);"></div></div><div style="margin-left: 8px;"> <div style=" background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 20px; width: 20px;"></div> <div style=" width: 0; height: 0; border-top: 2px solid transparent; border-left: 6px solid #f4f4f4; border-bottom: 2px solid transparent; transform: translateX(16px) translateY(-4px) rotate(30deg)"></div></div><div style="margin-left: auto;"> <div style=" width: 0px; border-top: 8px solid #F4F4F4; border-right: 8px solid transparent; transform: translateY(16px);"></div> <div style=" background-color: #F4F4F4; flex-grow: 0; height: 12px; width: 16px; transform: translateY(-4px);"></div> <div style=" width: 0; height: 0; border-top: 8px solid #F4F4F4; border-left: 8px solid transparent; transform: translateY(-4px) translateX(8px);"></div></div></div></a> <p style=" margin:8px 0 0 0; padding:0 4px;"> <a href="https://www.instagram.com/p/B80Vm9UBElF/?utm_source=ig_embed&amp;utm_campaign=loading" style=" color:#000; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none; word-wrap:break-word;" target="_blank">Pelvic health checkup is as important as going for your routine dental checkup. A pelvic examination is one way to ensure good vaginal health and look for other serious infections. Schedule your checkup now and learn about all the ways in which you can maintain a healthy pelvic. #SenittaPeriodHacks #SenittaHacks #PeriodHacks #BeBoldForeverYouAreBeautiful #HaddSeGuzarJao #KuchhBhiKarJao #NothingToWhisperAboutIt #menstruation #periods #womenshealth #womens #hygiene #sanitarynapkins</a></p> <p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;">A post shared by <a href="https://www.instagram.com/senitta_official/?utm_source=ig_embed&amp;utm_campaign=loading" style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px;" target="_blank"> Senitta</a> (@senitta_official) on <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;" datetime="2020-02-21T05:49:13+00:00">Feb 20, 2020 at 9:49pm PST</time></p></div></blockquote> <script async src="//www.instagram.com/embed.js"></script>
         
         </div></div>
        
        <div class="row" style="margin-left:0px;">
       <div class="col-md-12" style="background-color:#f5f5f5;">
  <div id="carouselTestimonial" class="carousel carousel-testimonial slide" data-ride="carousel">

	<div class="carousel-inner">
	  <div class="carousel-item text-center active">
		
		<h5 class="mt-4 mb-0"><strong class="text-warning text-uppercase">Reetu Dharua</strong></h5>
	
		<p class="m-0 pt-3" style="color:#000;"> Thanks for motivating.. We should not be ashamed periods and menstruation</p>
	  </div>
	  <div class="carousel-item text-center">
	
		<h5 class="mt-4 mb-0"><strong class="text-warning text-uppercase">Sumana Chowdhury Muna</strong></h5>
	
		<p class="m-0 pt-3" style="color:#000;">Why hesitate! It's related to our health and also I don't hesitate to speak about sanitary napkin.</p>
	  </div>
	</div>
		<ol class="carousel-indicators" style="position: relative;">
	  <li data-target="#carouselTestimonial" data-slide-to="0" class="active" style="background-color:#000"></li>
	  <li data-target="#carouselTestimonial" data-slide-to="1" style="background-color:#000"></li>
	  <!--<li data-target="#carouselTestimonial" data-slide-to="2" style="background-color:#000"></li>-->
	</ol>

  </div>
</div>
        </div>
    </div>

   
    
</div>
</section>



<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<!-- use this for popup-->


<div id="boxes">
  <div style="top: 199.5px; left: 551.5px; display: none;" id="dialog" class="window">
      <div id="popupfoot"> <a href="#" class="close agree" style="float:right;color: #fff;
    background-color: #000;
    padding: 5px 8px;
    border-radius: 50px">X</a></div>
      <p style="font-size:16px;color:#000;">
        <img src="/resources/assets/images/site_images/1561714614.senitta_logo.png" alt="Senitta" height="69px" width="171px"><br><br>Welcome to Senitta Hygiene Bank (SHB). Please provide below information to open your Hygiene bank account.</p>
    <div id="lorem">
      <p> 
      <form action="details.php" method="post">
      <div class="row">
    <div class="col-md-12">
        <div class="form-group">
                        <input type="text" name="name" class="form-control" placeholder="Name" required>
                    </div>
      </div>
      </div>
      <div class="row">
    <div class="col-md-12">
        <div class="form-group">
                        <input type="text" name="email" class="form-control" placeholder="Email Id" required>
                    </div>
      </div>
      </div>
      <div class="row">
    <div class="col-md-12">
        <div class="form-group">
                        <input type="text" name="phone" class="form-control" placeholder="Phone No." required>
                    </div>
      </div>
      </div>
      <div class="g-recaptcha" data-sitekey="6Ldy17UUAAAAADrZsbWxybozbzWBN_24Zn4o1Yoz"></div><br>
       <div class="row">
    <div class="col-md-12">
        <input type="submit" name="submit" value="Submit" style="background-color:#F3ABAF;">
      </div>
      </div>
      </form>
      </p>
    </div>
    
    
  </div>
  <div style="width: 1478px; font-size: 32pt; color:white; height: 602px; display: none; opacity: 0.8;" id="mask"></div>
</div>


<!-- use this for popup-->
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
<script>
    $(document).ready(function() {    

		var id = '#dialog';
	
		//Get the screen height and width
		var maskHeight = $(document).height();
		var maskWidth = $(window).width();
		
	
		//Get the window height and width
		var winH = $(window).height();
		var winW = $(window).width();
              
	    setTimeout(function(){
	        
    		//Set heigth and width to mask to fill up the whole screen
    		$('#mask').css({'width':maskWidth,'height':maskHeight});
    		
    		//transition effect		
    		$('#mask').fadeIn(500);	
    		$('#mask').fadeTo("slow",0.9);
    		
    		//Set the popup window to center
    		$(id).css('top',  winH/2-$(id).height()/2);
    		$(id).css('left', winW/2-$(id).width()/2);
	         //transition effect
		    $(id).fadeIn(2000);  
	    },5000);
		 	
	
	//if close button is clicked
	$('.window .close').click(function (e) {
		//Cancel the link behavior
		e.preventDefault();
		
		$('#mask').hide();
		$('.window').hide();
	});		
	
	//if mask is clicked
	$('#mask').click(function () {
		$(this).hide();
		$('.window').hide();
	});		
	
});
</script>
<style>
    #mask {
  position:absolute;
  left:0;
  top:0;
  z-index:9000;
  background-color:#000;
  display:none;
}  
#boxes .window {
  position:fixed;
  left:0;
  top:0;
  width:440px;
  height:200px;
  display:none;
  z-index:9999;
  padding:20px;
  border-radius: 15px;
  text-align: center;
}
#boxes #dialog {
  width:320px; 
  height:auto;
  padding:10px;
  background-color:#ffffff;
  font-family: 'Segoe UI Light', sans-serif;
  font-size: 15pt;
}
.maintext{
    text-align: center;
  font-family: "Segoe UI", sans-serif;
  text-decoration: none;
}
body{
  background: url('bg.jpg');
}
#lorem{
	font-family: "Segoe UI", sans-serif;
	font-size: 12pt;
  text-align: left;
}
#popupfoot{
	font-family: "Segoe UI", sans-serif;
	font-size: 16pt;
}
#popupfoot a{
	text-decoration: none;
}
.agree:hover{
  background-color: #D1D1D1;
}
.popupoption:hover{
	background-color:#D1D1D1;
	color: green;
}
.popupoption2:hover{
	
	color: red;
}
@media  screen and (max-width: 600px) {
  .window {
  position:fixed;
  left:30px !important;
  top:0;
  width:440px;
  height:200px;
  display:none;
  z-index:9999;
  padding:20px;
  border-radius: 15px;
  text-align: center;
}
@media  screen and (max-width: 320px) {
  .window {
  position:fixed;
  left:0px !important;
  top:0;
  width:440px;
  height:200px;
  display:none;
  z-index:9999;
  padding:20px;
  border-radius: 15px;
  text-align: center;
}
#mask {
  width:425px !important;
}  
}

</style>


<?php $__env->stopSection(); ?>


<?php echo $__env->make('layout', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>