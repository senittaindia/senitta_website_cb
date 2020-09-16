<?php $__env->startSection('content'); ?>
<section class="site-content">
	<div class="container">
    	<div class="breadcum-area">
            <div class="breadcum-inner">
                <h3><?php echo app('translator')->getFromJson('website.News Detail'); ?></h3>
                <ol class="breadcrumb">
                    
                    <li class="breadcrumb-item"><a href="<?php echo e(URL::to('/')); ?>"><?php echo app('translator')->getFromJson('website.Home'); ?></a></li>
                    <li class="breadcrumb-item"><a href="<?php echo e(URL::to('/news?category='.$result['news'][0]->news_categories_slug)); ?>"> <?php echo e($result['news'][0]->categories_name); ?></a></li>
                     <li class="breadcrumb-item active"><?php echo app('translator')->getFromJson('website.News Detail'); ?></li>
                </ol>
            </div>
        </div>

        <div class="blog-area">
            <div class="row">
            	<div class="col-12 col-lg-3 spaceright-0">
                    <?php echo $__env->make('common.sidebar_news', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                 </div>
                 <div class="col-12 col-lg-9">
                 	<div class="col-12 spaceright-0">
                    	<div class="row">
                        	<div class="blogs blogs-detail" style="padding-left:0;">        
                                <div class="blog-post">
                                    <article>
                                       <div class="blog-thumb">
                                            <?php if($result['news'][0]->is_feature==1): ?>
                                                <span class="badge badge-success"><?php echo app('translator')->getFromJson('website.Featured'); ?></span>
                                            <?php endif; ?>
                                            <!--<span class="blog-date">
                                                <strong>
                                                    <?php
                                                        $timestamp = strtotime($result['news'][0]->news_date_added);
                                                        //echo date('d',$timestamp);
                                                    ?>
                                                </strong>
                                                <?php
                                                    
                                                    //echo date('M',$timestamp);
                                                ?>
                                            </span>-->
                                            <!--<img class="img-fluid" src="<?php echo e(asset('').$result['news'][0]->news_image); ?>" alt="<?php echo e($result['news'][0]->news_name); ?>" style="height:300px">-->
                                            <?php
                     	    if($_SERVER['REQUEST_URI']=="/news-detail/senitta-a-sanitary-napkin-brand-is-launched-in-the-market")
                     	    {
                     	    ?>
                     	    <img src="https://www.senitta.com/images/Senitta-PR-Article-2.jpg" alt="Senitta"/>
                     	    <?php
                     	    }
                     	    
                     	    if($_SERVER['REQUEST_URI']=="/news-detail/kanpur-based-unicorn-hygiene-products-announce-a-new-sanitary-napkin-brand-senitta")
                     	    {
                     	    ?>
                     	    <img src="https://www.senitta.com/images/Senitta-PR-Report_870X300.jpg" alt="Senitta"/>
                     	    <?php
                     	    }
                     	    
                     	   if($_SERVER['REQUEST_URI']=="/news-detail/senitta-debunks-menstrual-hygiene-myths-spreads-dioxin-awareness")
                     	    {
                     	    ?>
                     	    <img src="https://senitta.com/images/senitta_pr_nov2.png" alt="Senitta"/>
                     	    <?php
                     	    }
                     	    if($_SERVER['REQUEST_URI']=="/news-detail/becoming-period-confident")
                     	    {
                     	    ?>
                     	    <img src="https://senitta.com/images/Becoming-Period-Confident.jpg" alt="Senitta"/>
                     	    <?php
                     	    }
                     	    if($_SERVER['REQUEST_URI']=="/news-detail/worry-or-not-to-worry-feminine-discharge-and-odours")
                     	    {
                     	    ?>
                     	    <img src="https://senitta.com/images/Worry-or-not-to-Worry-–-Feminine-discharge-and-odours.jpg" alt="Senitta"/>
                     	    <?php
                     	    }
                     	    if($_SERVER['REQUEST_URI']=="/news-detail/a-lady-s-guide-to-menstruation")
                     	    {
                     	    ?>
                     	    <img src="https://senitta.com/images/Untitled-1A-lady’s-guide-to-Menstruation.jpg" alt="Senitta"/>
                     	    <?php
                     	    }
                     	    if($_SERVER['REQUEST_URI']=="/news-detail/how-to-dispose-of-the-used-pad")
                     	    {
                     	    ?>
                     	    <img src="https://senitta.com/images/How-to-dispose-of-the-used-pad.jpg" alt="Senitta"/>
                     	    <?php
                     	    }
                     	    if($_SERVER['REQUEST_URI']=="/news-detail/puberty-a-journey-to-womanhood")
                     	    {
                     	    ?>
                     	    <img src="https://senitta.com/images/Puberty-–-A-Journey-to-Womanhood.jpg" alt="Senitta"/>
                     	    <?php
                     	    }
                     	    if($_SERVER['REQUEST_URI']=="/news-detail/know-your-flows")
                     	    {
                     	    ?>
                     	    <img src="https://senitta.com/images/Know-your-flows.jpg" alt="Senitta"/>
                     	    <?php
                     	    }
                     	    if($_SERVER['REQUEST_URI']=="/news-detail/period-calendar")
                     	    {
                     	    ?>
                     	    <img src="https://senitta.com/images/Your-periods-are-coming!.jpg" alt="Senitta"/>
                     	    <?php
                     	    }
                     	    if($_SERVER['REQUEST_URI']=="/news-detail/it-must-be-the-pms-right")
                     	    {
                     	    ?>
                     	    <img src="https://senitta.com/images/It-must-be-the-PMS,-right.jpg" alt="Senitta"/>
                     	    <?php
                     	    }
                     	    if($_SERVER['REQUEST_URI']=="/news-detail/spreading-awareness-and-refusing-to-whisper")
                     	    {
                     	    ?>
                     	    <img src="https://senitta.com/images/Spreading-awareness-and-refusing-to-whisper.jpg" alt="Senitta"/>
                     	    <?php
                     	    }
                     	    if($_SERVER['REQUEST_URI']=="/news-detail/the-bright-side-of-healthy-diet")
                     	    {
                     	    ?>
                     	    <img src="https://senitta.com/images/The-bright-side-of-healthy-diet.jpg" alt="Senitta"/>
                     	    <?php
                     	    }
                     	    if($_SERVER['REQUEST_URI']=="/news-detail/the-good-habits-of-healthy-women")
                     	    {
                     	    ?>
                     	    <img src="https://senitta.com/images/The-Good-Habits-of-Healthy-Women.jpg" alt="Senitta"/>
                     	    <?php
                     	    }
                     	    if($_SERVER['REQUEST_URI']=="/news-detail/travel-stress-free-while-on-your-period")
                     	    {
                     	    ?>
                     	    <img src="https://senitta.com/images/Travel-stress-free-while-on-your-period.jpg" alt="Senitta"/>
                     	    <?php
                     	    }
                     	    if($_SERVER['REQUEST_URI']=="/news-detail/you-need-a-change-of-pads")
                     	    {
                     	    ?>
                     	    <img src="https://senitta.com/images/You-need-A-Change-of-Pads.jpg" alt="Senitta"/>
                     	    <?php
                     	    }
                     	    if($_SERVER['REQUEST_URI']=="/news-detail/use-chemical-free-to-stay-stress-free")
                     	    {
                     	    ?>
                     	    <img src="https://senitta.com/images/Use-chemical-free-to-stay-stress-free.jpg" alt="Senitta"/>
                     	    <?php
                     	    }
                     	    if($_SERVER['REQUEST_URI']=="/news-detail/senitta-hygiene-bank-takes-the-digital-world-by-storm")
                     	    {
                     	    ?>
                     	    <img src="https://senitta.com/images/Senitta-Digital-World-by-Storm1.jpg" alt="Senitta"/>
                     	    <?php
                     	    }
                     	    ?>
                                        </div>
                                        
                                        <div class="blog-block">
                                            <h2 style="font-size:20px;"><b><?php echo e($result['news'][0]->news_name); ?></b></h2>
                
                                            <div class="blog-text" style="text-align:justify;">
                                                <?=stripslashes($result['news'][0]->news_description)?>
                                                <p style="padding:5px;"><a href="https://www.facebook.com/senittaofficial"><i class="fa fa-facebook"></i></a>&nbsp;&nbsp;<a href="https://twitter.com/senittaofficial"><i class="fa fa-twitter"></i></a>&nbsp;&nbsp;<a href="https://www.instagram.com/senitta_official/"><i class="fa fa-instagram"></i></a>&nbsp;&nbsp;<a href="https://www.linkedin.com/company/senittaofficial"><i class="fa fa-linkedin"></i></a></p>
                                            </div>
                                        </div>
                                    </article>
                                </div>      
                             </div>	
                        </div>
                    </div>
                 </div>
            </div>		
        </div>
	</div>
</section>


<?php $__env->stopSection(); ?> 	

<style>
 
  ul {
     list-style: unset !important;
  }
  ol {
     list-style: unset !important;
  }
  .list-categories{
      list-style: none !important;
  }
  .navbar-nav{
      list-style: none !important;
  }
  p:first-child{
          white-space: inherit !important;
          text-overflow: inherit !important;
  }
  

</style>

<?php echo $__env->make('layout', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>