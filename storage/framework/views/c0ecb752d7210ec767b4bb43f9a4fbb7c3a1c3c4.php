<?php $__env->startSection('content'); ?>
<section class="site-content">
<div class="container">
<div class="breadcum-area">
    <div class="breadcum-inner">
        <h3><?php echo app('translator')->getFromJson('website.Forgot Password'); ?></h3>
        <ol class="breadcrumb">
            
            <li class="breadcrumb-item"><a href="<?php echo e(URL::to('/')); ?>"><?php echo app('translator')->getFromJson('website.Home'); ?></a></li>
            <li class="breadcrumb-item active"><?php echo app('translator')->getFromJson('website.Forgot Password'); ?></li>
        </ol>
    </div>
</div>
<div class="registration-area">
	
	<div class="row justify-content-center">
		<div class="col-12 col-md-6 col-lg-7 new-customers">
			<h5 class="title-h4"><?php echo app('translator')->getFromJson('website.New Customers'); ?></h5>
			<p><?php echo app('translator')->getFromJson('website.login page text for customer'); ?></p>

			<hr class="featurette-divider">
			<p class="text-center"><?php echo app('translator')->getFromJson('website.Dont have account'); ?> <a href="<?php echo e(URL::to('/signup')); ?>" class="btn btn-link ml-1"><b><?php echo app('translator')->getFromJson('website.Sign Up'); ?></b></a></p>
			
			<p class="font-small dark-grey-text text-right d-flex justify-content-center mb-3 pt-2"> <?php echo app('translator')->getFromJson('website.or Sign in with'); ?>:</p>

			<div class="row my-3 d-flex justify-content-center">
				<!--Facebook-->
				<?php if($result['commonContent']['setting'][2]->value==1): ?>
				<a href="login/facebook" class="btn btn-light facebook"><i class="fa fa-facebook"></i><?php echo app('translator')->getFromJson('website.Login with Facebook'); ?></a>
                <?php endif; ?>
                <?php if($result['commonContent']['setting'][61]->value==1): ?>
				<!--Google +-->
				<a href="login/google" class="btn btn-light google"><i class="fa fa-google-plus"></i><?php echo app('translator')->getFromJson('website.Login with Google'); ?></a>
				<?php endif; ?>
			</div>
		</div>

		<div class="col-12 col-md-6 col-lg-5 registered-customers">
        	
            <?php if(Session::has('error')): ?>
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                    <span class="sr-only"><?php echo app('translator')->getFromJson('website.error'); ?>:</span>
                    <?php echo session('error'); ?>

                    
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    	<span aria-hidden="true">&times;</span>
                    </button>
                </div>
            <?php endif; ?>
            
			<h5 class="title-h4">
				<?php echo app('translator')->getFromJson('website.Forgot Password'); ?>
			</h5>
			<p><?php echo app('translator')->getFromJson('website.Please Enter your email to recover your password'); ?></p>

			<form name="signup" enctype="multipart/form-data" class="form-validate"  action="<?php echo e(URL::to('/processPassword')); ?>" method="post">

				<div class="form-group row">
					<label for="staticEmail" class="col-sm-3 col-form-label"><?php echo app('translator')->getFromJson('website.Email'); ?></label>
					<div class="col-sm-9">
						<input type="email" name="email" id="email" class="form-control email-validate">
						<span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your valid email address'); ?></span>
					</div>
				</div>
				
                <div class="button text-right">
                	<a href="<?php echo e(URL::to('/login')); ?>" class="btn btn-link ml-1 mr-4"><?php echo app('translator')->getFromJson('website.Login'); ?></a>
                	<button type="submit" class="btn btn-dark"><?php echo app('translator')->getFromJson('website.Send'); ?></button>
                </div>


                
			</form>

		</div>
	</div>
</div> 
</div>
</section>
	
<?php $__env->stopSection(); ?> 	



<?php echo $__env->make('layout', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>