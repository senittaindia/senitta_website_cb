<?php $__env->startSection('content'); ?>
<section class="site-content">
	<div class="container">
	<style>
		.blog-text p > img{
			display: none;
		}
		.blog-text{
			overflow: hidden;
		}
	</style>
  		<div class="breadcum-area">
            <div class="breadcum-inner">
                <h3><?php echo app('translator')->getFromJson('website.News'); ?></h3>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="<?php echo e(URL::to('/')); ?>"><?php echo app('translator')->getFromJson('website.Home'); ?></a></li>
                    <?php if(!empty($result['categories_name'])): ?>
                        <li class="breadcrumb-item"><a href="<?php echo e(URL::to('/news')); ?>"><?php echo app('translator')->getFromJson('website.News'); ?></a></li>
                        <li class="breadcrumb-item active"><?php echo e($result['categories_name']); ?></li>
                    <?php else: ?>
                    	<li class="breadcrumb-item active"><?php echo app('translator')->getFromJson('website.News'); ?></li>
                    <?php endif; ?>
                </ol>
            </div>
        </div>
        <div class="blog-area" style="margin-bottom:40px;">
        	<form method="get" enctype="multipart/form-data" id="load_news_form">
            	<input type="hidden"  name="category_id" value="<?php echo e(app('request')->input('category_id')); ?>">
                <div class="row">
                	 <div class="col-12 col-lg-3 spaceright-0">
                     	<?php echo $__env->make('common.sidebar_news', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                     </div>
                     <div class="col-12 col-lg-9">
                     	<div class="col-12 spaceright-0">
                     	    <?php
                     	    if($_SERVER['REQUEST_URI']=="/senitta_hygiene_bank/news?category=senitta-community1")
                     	    {
                     	    ?>
                     	    <p style="text-align:justify;">Everyone is different, especially when it comes to their period. But, what makes a group of girls or ladies stand out from the others? Their achievements, their ambitions, their initiatives or all of these? Every Senitta girl might be different, but the Senitta Community is the same, out and about to achieve everything. Scroll down and keep reading more and connect with the members of our community.</p>
                        
                                               	<div class="row">
                            	<!--<div class="toolbar mb-3">
                                    <div class="form-inline">
                                        <div class="form-group col-12 col-md-4">
                                            <label class="col-sm-12 col-lg-5 col-form-label" style="padding-right:0px;"><?php echo app('translator')->getFromJson('website.Display'); ?></label>
                                            <div class="col-sm-12 col-lg-7 btn-group">
                                                <a href="javascript:void(0);" id="grid_news" class="btn btn-default active"> <i class="fa fa-th-large" aria-hidden="true"></i> </a>
                                               <!-- <a href="javascript:void(0);" id="list_news" class="btn btn-default"> <i class="fa fa-list" aria-hidden="true"></i> </a>-->
                                            <!--</div>
                                        </div>
                                        <div class="form-group col-12 col-md-4 center">
                                            <label class="col-sm-12 col-lg-4 col-form-label" style="padding-right:0px;"><?php echo app('translator')->getFromJson('website.Sort'); ?></label>
                                            <select class="col-sm-12 col-lg-6 form-control sortbynews" name="type" style="padding-right:0px;">
                                                <option value="desc" <?php if(app('request')->input('type')=='desc'): ?> selected <?php endif; ?>><?php echo app('translator')->getFromJson('website.Newest'); ?></option>
                                                <option value="asc" <?php if(app('request')->input('type')=='asc'): ?> selected <?php endif; ?>><?php echo app('translator')->getFromJson('website.Oldest'); ?></option>
                                                <option value="atoz" <?php if(app('request')->input('type')=='atoz'): ?> selected <?php endif; ?>><?php echo app('translator')->getFromJson('website.A - Z'); ?></option>
                                                <option value="ztoa" <?php if(app('request')->input('type')=='ztoa'): ?> selected <?php endif; ?>><?php echo app('translator')->getFromJson('website.Z - A'); ?></option>
                                            </select>
                                        </div>
                                        <div class="form-group col-12 col-md-4">
                                            <label class="col-sm-12 col-lg-4 col-form-label" style="padding-right:0px;"><?php echo app('translator')->getFromJson('website.Limit'); ?></label>
                                            <select class="col-sm-12 col-lg-4 form-control sortbynews" name="limit" style="padding-right:0px;">
                                                <option value="16" <?php if(app('request')->input('limit')==$result['limit']): ?> selected <?php endif; ?>">16</option>
                                                <option value="32" <?php if(app('request')->input('limit')=='32'): ?> selected <?php endif; ?>>32</option>
                                                <option value="64" <?php if(app('request')->input('limit')=='64'): ?> selected <?php endif; ?>>64</option>
                                            </select>
                                            <label class="col-sm-12 col-lg-4 col-form-label" style="padding-right:0px;"><?php echo app('translator')->getFromJson('website.per page'); ?></label>
                                        </div>
                                    </div>
                                </div>-->
                                
                                <div class="blogs blogs-4x" id="listing-news">
                                    <?php if($result['news']['success']==1): ?>
                                    <?php $__currentLoopData = $result['news']['news_data']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$news_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                                        <div class="blog-post">
                                            <article>
                                                <div class="blog-thumb">
                                                    <?php if($news_data->is_feature==1): ?>
                                                        <span class="badge badge-success"><?php echo app('translator')->getFromJson('website.Featured'); ?></span>
                                                    <?php endif; ?>
                                                    <!--<span class="blog-date">
                                                        <strong>
                                                            <?php
                                                                $timestamp = strtotime($news_data->news_date_added);
                                                                echo date('d',$timestamp);
                                                            ?>
                                                        </strong>
                                                        <?php

                                                            echo date('M',$timestamp);
                                                        ?>
                                                    </span>-->

                                                    <div class="blog-overlay">
                                                        <a href="<?php echo e(URL::to('/news-detail/'.$news_data->news_slug)); ?>" class="fa fa-search-plus"></a>
                                                    </div>

                                                    <img class="img-fluid" src="<?php echo e(asset('').$news_data->news_image); ?>" alt="<?php echo e($news_data->news_name); ?>">
                                                </div>

                                                <div class="blog-block">
                                                    <a href="<?php echo e(URL::to('/news-detail/'.$news_data->news_slug)); ?>" class="blog-title"><b> <?php echo e($news_data->news_name); ?> </b></a>


                                                    <!--<div class="blog-text">
                                                        <?=stripslashes($news_data->news_description)?>
                                                    </div>-->
                                                   <!-- <a href="<?php echo e(URL::to('/news-detail/'.$news_data->news_slug)); ?>" class="blog-link"><?php echo app('translator')->getFromJson('website.Readmore'); ?></a>-->
                                                    <a href="<?php echo e(URL::to('/news-detail/'.$news_data->news_slug)); ?>" class="blog-link"><?php echo app('translator')->getFromJson('website.Readmore'); ?></a>
                                                </div>


                                            </article>
                                        </div>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <?php endif; ?>
                                </div>

                                 <div class="toolbar mt-3">
                                    <div class="form-inline">
                                        <div class="form-group  justify-content-start col-6">
                                        	<input id="record_limit" type="hidden" value="<?php echo e($result['limit']); ?>">
                                        	<input id="total_record" type="hidden" value="<?php echo e($result['news']['total_record']); ?>">
                                            <label for="staticEmail" class="col-form-label"><?php echo app('translator')->getFromJson('website.Showing'); ?><span class="showing_record"><?php echo e($result['limit']); ?> </span>
                                            &nbsp; <?php echo app('translator')->getFromJson('website.of'); ?>  <?php echo e($result['news']['total_record']); ?> <?php echo app('translator')->getFromJson('website.results'); ?></label>
                                        </div>
                                        <div class="form-group justify-content-end col-6">
                                            <input type="hidden" value="1" name="page_number" id="page_number">
                                            <?php
                                                if(!empty(app('request')->input('limit'))){
                                                    $record = app('request')->input('limit');
                                                }else{
                                                    $record = '16';
                                                }
                                            ?>
                                            <button class="btn btn-dark" type="button" id="load_news" <?php if(count($result['news']['news_data']) < $record ): ?> style="display:none" <?php endif; ?>><?php echo app('translator')->getFromJson('website.Load More'); ?></button>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        	<?php
                     	    }
                     	    ?>
                     	    <?php
                     	    if($_SERVER['REQUEST_URI']=="/senitta_hygiene_bank/news?category=in-the-media")
                     	    {
                     	    ?>
                     	    <p style="text-align:justify;">Women with confidence are always in News. Scroll and read what's been told about Senitta in the media, get regular updates about our public relations, and media coverage right here. Watch this space to know how Senitta is spreading the flame of Menstrual Hygiene knowledge across India.</p>
                        	                       	<div class="row">
                            
                                
                                <div class="blogs blogs-4x" id="listing-news">
                                    <?php if($result['news']['success']==1): ?>
                                    <?php $__currentLoopData = $result['news']['news_data']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$news_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                                        <div class="blog-post">
                                            <article>
                                                <div class="blog-thumb">
                                                    <?php if($news_data->is_feature==1): ?>
                                                        <span class="badge badge-success"><?php echo app('translator')->getFromJson('website.Featured'); ?></span>
                                                    <?php endif; ?>
                                                    <!--<span class="blog-date">
                                                        <strong>
                                                            <?php
                                                                $timestamp = strtotime($news_data->news_date_added);
                                                                //echo date('d',$timestamp);
                                                            ?>
                                                        </strong>
                                                        <?php

                                                            //echo date('M',$timestamp);
                                                        ?>
                                                    </span>-->

                                                    <div class="blog-overlay">
                                                        <a href="<?php echo e(URL::to('/news-detail/'.$news_data->news_slug)); ?>" class="fa fa-search-plus"></a>
                                                    </div>

                                                    <img class="img-fluid" src="<?php echo e(asset('').$news_data->news_image); ?>" alt="<?php echo e($news_data->news_name); ?>">
                                                </div>

                                                <div class="blog-block">
                                                    <a href="<?php echo e(URL::to('/news-detail/'.$news_data->news_slug)); ?>" class="blog-title"><b> <?php echo e($news_data->news_name); ?> </b></a>


                                                    <!--<div class="blog-text">
                                                        <?=stripslashes($news_data->news_description)?>
                                                    </div>-->
                                                   <!-- <a href="<?php echo e(URL::to('/news-detail/'.$news_data->news_slug)); ?>" class="blog-link"><?php echo app('translator')->getFromJson('website.Readmore'); ?></a>-->
                                                    <a href="<?php echo e(URL::to('/news-detail/'.$news_data->news_slug)); ?>" class="blog-link"><?php echo app('translator')->getFromJson('website.Readmore'); ?></a>
                                                </div>


                                            </article>
                                        </div>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <?php endif; ?>
                                </div>

                                 <div class="toolbar mt-3">
                                    <div class="form-inline">
                                        <div class="form-group  justify-content-start col-6">
                                        	<input id="record_limit" type="hidden" value="<?php echo e($result['limit']); ?>">
                                        	<input id="total_record" type="hidden" value="<?php echo e($result['news']['total_record']); ?>">
                                            <label for="staticEmail" class="col-form-label"><?php echo app('translator')->getFromJson('website.Showing'); ?><span class="showing_record"><?php echo e($result['limit']); ?> </span>
                                            &nbsp; <?php echo app('translator')->getFromJson('website.of'); ?>  <?php echo e($result['news']['total_record']); ?> <?php echo app('translator')->getFromJson('website.results'); ?></label>
                                        </div>
                                        <div class="form-group justify-content-end col-6">
                                            <input type="hidden" value="1" name="page_number" id="page_number">
                                            <?php
                                                if(!empty(app('request')->input('limit'))){
                                                    $record = app('request')->input('limit');
                                                }else{
                                                    $record = '16';
                                                }
                                            ?>
                                            <button class="btn btn-dark" type="button" id="load_news" <?php if(count($result['news']['news_data']) < $record ): ?> style="display:none" <?php endif; ?>><?php echo app('translator')->getFromJson('website.Load More'); ?></button>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        	<?php
                     	    }
                     	    ?>
                     	     
                     	    <?php
                     	    if($_SERVER['REQUEST_URI']=="/senitta_hygiene_bank/news?category=faqs")
                     	    {
                     	    ?>
                     	   <p>We are here to clear all your doubts!</p>

<p><strong>What is a period?</strong></p>

<p>Your period is the last part of your monthly cycle. Stage 1 has your body building up blood-rich cells, preparing for pregnancy. Stage 2 is ovulation. Stage 3 is the shedding of the blood-rich membrane, also known as your period. Stage 4 is the length of time of your period, which is usually 3-7 days. Then it starts all over again (unless you get pregnant).</p>

<p><strong>How often should I change my pad?</strong></p>

<p>It may seem like you bleed a lot during your period, but most girls normally lose between 4 and 12 teaspoons of blood during an average period. Generally, it&rsquo;s a good idea to change your pad at least every 4 hours. In the first days of your period, you may bleed more heavily and need to change it every 2-3 hours.</p>

<p><strong>How will I feel when I have my period?</strong></p>

<p>Some girls feel absolutely normal during their period, while other girls have a lot of period pain such as cramps. Some girls may have very little PMS symptoms, while others may feel tired, bloated and more emotional. It&rsquo;s important to remember that each person is different and that you can even react differently from month to month.</p>

<p>Things like healthy eating and exercise can help you feel better no matter where you are in your monthly cycle. Try incorporating these things into your daily routine and see how it makes you feel!</p>
<?php
}
?>
 
                        </div>

                     </div>

				</div>
             </form>
        </div>
	</div>
</section>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layout', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>