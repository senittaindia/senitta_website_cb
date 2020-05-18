<!doctype html>

<html>

<!-- meta contains meta taga, css and fontawesome icons etc -->

<?php echo $__env->make('common.meta', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

<!-- ./end of meta -->

<!--dir="rtl"-->

<body dir="<?php echo e(session('direction')); ?>">
	<!-- header -->

		<?php if(session('homeStyle')=='two' ): ?>
        	<?php echo $__env->make('common.header_two', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
            <?php if(Request::path() == 'index' or Request::path() == '/'): ?>
            <section class="carousel-content">
              <div class="container">
                <div class="row">
                  <div class="col-12 col-lg-9 p-0"> <?php echo $__env->make('common.carousel', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?> </div>
                  <div class="col-12 col-lg-3 p-0"> <?php echo $__env->make('common.offers', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?> </div>
                </div>
              </div>
            </section>
            <?php endif; ?>
        <?php elseif(session('homeStyle')=='three' ): ?>
        	<?php echo $__env->make('common.header_three', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
            <?php if(Request::path() == 'index' or Request::path() == '/'): ?>
            <section class="carousel-content">
              <div class="container">
                <div class="row">
                  <div class="col-12 p-0"> <?php echo $__env->make('common.carousel', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?> </div>
                </div>
              </div>
            </section>
            <?php endif; ?>                 
       
        <?php else: ?>
       		<?php echo $__env->make('common.header', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
            <?php if(Request::path() == 'index' or Request::path() == '/'): ?>
            <section class="carousel-content">
              <div class="container">
                <div class="row">
                  <div class="col-12 col-lg-3 p-0"> <?php echo $__env->make('common.categories', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?> </div>
                  <div class="col-12 col-lg-9 p-0"> <?php echo $__env->make('common.carousel', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?> </div>
                </div>
              </div>
            </section>
            <?php endif; ?>
        <?php endif; ?>
	<!-- ./end of header -->
        
        

	<?php echo $__env->yieldContent('content'); ?>
	

	<section class="banner-content">
    	<?php echo $__env->make('common.banner', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
    </section>
    
    <?php echo $__env->make('common.footer', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
	<!-- all js scripts including custom js -->

	<?php echo $__env->make('common.scripts', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

    <!-- ./end of js scripts -->
    <?php if(!empty($result['commonContent']['setting'][77]->value)): ?>
		<?=stripslashes($result['commonContent']['setting'][77]->value)?>
    <?php endif; ?>
</body>

</html>

