	<div class="container">
		<div class="row">
			
            <div class="col-12 col-md-6 col-lg-3 p-0">
                <div class="banner-single">
                    <div class="panel">
                        <h3 class="fa fa-truck"></h3>
                        <div class="block">
                            <h4 class="title"><?php echo app('translator')->getFromJson('website.bannerLabel1'); ?></h4>
                            <p><?php echo app('translator')->getFromJson('website.bannerLabel1Text'); ?></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-3 p-0">
                <div class="banner-single">
                	<div class="panel">
                    	<h3 class="fa fa-money"></h3>
                        <div class="block">
                            <h4 class="title"><?php echo app('translator')->getFromJson('website.bannerLabel2'); ?></h4>
                            <p><?php echo app('translator')->getFromJson('website.bannerLabel2Text'); ?></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-3 p-0">
                <div class="banner-single second-last">
                	<div class="panel">
                        <h3 class="fa fa-life-ring"></h3>
                        <div class="block">
                            <h4 class="title"><?php echo app('translator')->getFromJson('website.bannerLabel3'); ?></h4>
                            <p><?php echo app('translator')->getFromJson('website.hotline'); ?>&nbsp;:&nbsp;<?php echo e($result['commonContent']['setting'][11]->value); ?></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-3 p-0">
                <div class="banner-single last">
                    <div class="panel">
                    	<h3 class="fa fa-credit-card"></h3>
                        <div class="block">
                            <h4 class="title"><?php echo app('translator')->getFromJson('website.bannerLabel4'); ?></h4>
                            <p><?php echo app('translator')->getFromJson('website.bannerLabel4Text'); ?></p>
                        </div>
                    </div>
                </div>
            </div>
            
		</div>
	</div>
