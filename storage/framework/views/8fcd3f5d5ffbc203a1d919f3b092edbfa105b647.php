<?php $__env->startSection('content'); ?>
<section class="site-content">
	<div class="container">
   
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
                        	<div class="row">
                            	<div class="toolbar mb-3">
                                    <div class="form-inline">
                                        <div class="form-group col-12 col-md-4">
                                            <label class="col-sm-12 col-lg-5 col-form-label"><?php echo app('translator')->getFromJson('website.Display'); ?></label>
                                            <div class="col-sm-12 col-lg-7 btn-group">
                                                <a href="javascript:void(0);" id="grid_news" class="btn btn-default active"> <i class="fa fa-th-large" aria-hidden="true"></i> </a>
                                                <a href="javascript:void(0);" id="list_news" class="btn btn-default"> <i class="fa fa-list" aria-hidden="true"></i> </a>
                                            </div>
                                        </div>
                                        <div class="form-group col-12 col-md-4 center">
                                            <label class="col-sm-12 col-lg-4 col-form-label"><?php echo app('translator')->getFromJson('website.Sort'); ?></label>
                                            <select class="col-sm-12 col-lg-6 form-control sortbynews" name="type">
                                                <option value="desc" <?php if(app('request')->input('type')=='desc'): ?> selected <?php endif; ?>><?php echo app('translator')->getFromJson('website.Newest'); ?></option>
                                                <option value="asc" <?php if(app('request')->input('type')=='asc'): ?> selected <?php endif; ?>><?php echo app('translator')->getFromJson('website.Oldest'); ?></option>
                                                <option value="atoz" <?php if(app('request')->input('type')=='atoz'): ?> selected <?php endif; ?>><?php echo app('translator')->getFromJson('website.A - Z'); ?></option>
                                                <option value="ztoa" <?php if(app('request')->input('type')=='ztoa'): ?> selected <?php endif; ?>><?php echo app('translator')->getFromJson('website.Z - A'); ?></option>
                                            </select>
                                        </div>                                
                                        <div class="form-group col-12 col-md-4">
                                            <label class="col-sm-12 col-lg-4 col-form-label"><?php echo app('translator')->getFromJson('website.Limit'); ?></label>
                                            <select class="col-sm-12 col-lg-4 form-control sortbynews" name="limit">
                                                <option value="16" <?php if(app('request')->input('limit')==$result['limit']): ?> selected <?php endif; ?>">16</option>
                                                <option value="32" <?php if(app('request')->input('limit')=='32'): ?> selected <?php endif; ?>>32</option>
                                                <option value="64" <?php if(app('request')->input('limit')=='64'): ?> selected <?php endif; ?>>64</option>
                                            </select>
                                            <label class="col-sm-12 col-lg-4 col-form-label"><?php echo app('translator')->getFromJson('website.per page'); ?></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="blogs blogs-4x" id="listing-news">
                                <? //echo "<pre>".print_r($result['news'], true)."</pre>"?>
                                    <?php if($result['news']['success']==1): ?>
                                    <?php $__currentLoopData = $result['news']['news_data']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$news_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    
                                        <div class="blog-post">
                                            <article>
                                                <div class="blog-thumb">
                                                    <?php if($news_data->is_feature==1): ?>
                                                        <span class="badge badge-success"><?php echo app('translator')->getFromJson('website.Featured'); ?></span>
                                                    <?php endif; ?>
                                                    <span class="blog-date">
                                                        <strong>
                                                            <?php
                                                                $timestamp = strtotime($news_data->news_date_added);
                                                                echo date('d',$timestamp);
                                                            ?>
                                                        </strong>
                                                        <?php
                                                            
                                                            echo date('M',$timestamp);
                                                        ?>
                                                    </span>
                                                    
                                                    <div class="blog-overlay">
                                                        <a href="<?php echo e(URL::to('/news-detail/'.$news_data->news_slug)); ?>" class="fa fa-search-plus"></a>
                                                    </div>
                                                    
                                                    <img class="img-fluid" src="<?php echo e(asset('').$news_data->news_image); ?>" alt="<?php echo e($news_data->news_name); ?>">
                                                </div>
                                                
                                                <div class="blog-block">
                                                    <a href="<?php echo e(URL::to('/news-detail/'.$news_data->news_slug)); ?>" class="blog-title"><?php echo e($news_data->news_name); ?> </a>
                                                   
            
                                                    <div class="blog-text">
                                                        <?=stripslashes($news_data->news_description)?>
                                                    </div>
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
                        </div>                     	
                     	
                     </div>
                	
				</div>
             </form>
        </div>
	</div>
</section>
<?php $__env->stopSection(); ?> 	



<?php echo $__env->make('layout', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>